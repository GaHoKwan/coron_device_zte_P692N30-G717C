.class public Lcom/hf/UI/LineView;
.super Landroid/view/View;
.source "LineView.java"


# instance fields
.field private isCelsius:Z

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mDevideLineHeight:I

.field private mHeight:I

.field private mPadding:I

.field private mPaddingLeftRight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mTLayoutHeight:I

.field private mTLayoutPadding:I

.field private mTMax:I

.field private mTMin:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field private mUnitWidth:I

.field private mWeatherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/CFWeather;",
            ">;"
        }
    .end annotation
.end field

.field private mWeekTextHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Lcom/hf/UI/LineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/hf/UI/LineView;->mUnitWidth:I

    .line 46
    iput v2, p0, Lcom/hf/UI/LineView;->mTextSize:I

    .line 47
    iput v2, p0, Lcom/hf/UI/LineView;->mPaddingLeftRight:I

    .line 48
    iput v2, p0, Lcom/hf/UI/LineView;->mDevideLineHeight:I

    .line 49
    iput v2, p0, Lcom/hf/UI/LineView;->mPadding:I

    .line 50
    iput v2, p0, Lcom/hf/UI/LineView;->mTLayoutPadding:I

    .line 54
    iput v2, p0, Lcom/hf/UI/LineView;->mCount:I

    .line 60
    iput-object p1, p0, Lcom/hf/UI/LineView;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/hf/UI/LineView;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-virtual {p0}, Lcom/hf/UI/LineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/hf/UI/LineView;->mUnitWidth:I

    .line 46
    iput v2, p0, Lcom/hf/UI/LineView;->mTextSize:I

    .line 47
    iput v2, p0, Lcom/hf/UI/LineView;->mPaddingLeftRight:I

    .line 48
    iput v2, p0, Lcom/hf/UI/LineView;->mDevideLineHeight:I

    .line 49
    iput v2, p0, Lcom/hf/UI/LineView;->mPadding:I

    .line 50
    iput v2, p0, Lcom/hf/UI/LineView;->mTLayoutPadding:I

    .line 54
    iput v2, p0, Lcom/hf/UI/LineView;->mCount:I

    .line 66
    iput-object p1, p0, Lcom/hf/UI/LineView;->mContext:Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Lcom/hf/UI/LineView;->init()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-virtual {p0}, Lcom/hf/UI/LineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/hf/UI/LineView;->mUnitWidth:I

    .line 46
    iput v2, p0, Lcom/hf/UI/LineView;->mTextSize:I

    .line 47
    iput v2, p0, Lcom/hf/UI/LineView;->mPaddingLeftRight:I

    .line 48
    iput v2, p0, Lcom/hf/UI/LineView;->mDevideLineHeight:I

    .line 49
    iput v2, p0, Lcom/hf/UI/LineView;->mPadding:I

    .line 50
    iput v2, p0, Lcom/hf/UI/LineView;->mTLayoutPadding:I

    .line 54
    iput v2, p0, Lcom/hf/UI/LineView;->mCount:I

    .line 72
    iput-object p1, p0, Lcom/hf/UI/LineView;->mContext:Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Lcom/hf/UI/LineView;->init()V

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/LineView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/hf/UI/LineView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/UI/LineView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/hf/UI/LineView;->isCelsius:Z

    return-void
.end method

.method static synthetic access$10(Lcom/hf/UI/LineView;)I
    .locals 1
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/hf/UI/LineView;->mCount:I

    return v0
.end method

.method static synthetic access$11(Lcom/hf/UI/LineView;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/hf/UI/LineView;->mUnitWidth:I

    return v0
.end method

.method static synthetic access$12(Lcom/hf/UI/LineView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/hf/UI/LineView;->mWidth:I

    return-void
.end method

.method static synthetic access$13(Lcom/hf/UI/LineView;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/hf/UI/LineView;->mWidth:I

    return v0
.end method

.method static synthetic access$14(Lcom/hf/UI/LineView;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/hf/UI/LineView;->findTMaxAndTMinForFR()V

    return-void
.end method

.method static synthetic access$15(Lcom/hf/UI/LineView;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/hf/UI/LineView;->findTMaxAndTMin()V

    return-void
.end method

.method static synthetic access$2(Lcom/hf/UI/LineView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/hf/UI/LineView;->mPaddingLeftRight:I

    return-void
.end method

.method static synthetic access$3(Lcom/hf/UI/LineView;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/hf/UI/LineView;->mPaddingLeftRight:I

    return v0
.end method

.method static synthetic access$4(Lcom/hf/UI/LineView;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/hf/UI/LineView;->mDevideLineHeight:I

    return v0
.end method

.method static synthetic access$5(Lcom/hf/UI/LineView;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/hf/UI/LineView;->mPadding:I

    return v0
.end method

.method static synthetic access$6(Lcom/hf/UI/LineView;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/hf/UI/LineView;->mTLayoutPadding:I

    return v0
.end method

.method static synthetic access$7(Lcom/hf/UI/LineView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/hf/UI/LineView;->mUnitWidth:I

    return-void
.end method

.method static synthetic access$8(Lcom/hf/UI/LineView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9(Lcom/hf/UI/LineView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput p1, p0, Lcom/hf/UI/LineView;->mCount:I

    return-void
.end method

.method private compareTemperature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "day"
    .parameter "night"

    .prologue
    .line 486
    const/4 v0, 0x0

    .local v0, d:I
    const/4 v1, 0x0

    .line 488
    .local v1, n:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 489
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 493
    :goto_0
    if-lt v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 490
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private drawDevideLine(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 224
    iget-object v0, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v0, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 226
    .local v6, count:I
    const/4 v7, 0x1

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 227
    iget v0, p0, Lcom/hf/UI/LineView;->mUnitWidth:I

    mul-int/2addr v0, v7

    iget v1, p0, Lcom/hf/UI/LineView;->mPaddingLeftRight:I

    add-int v8, v0, v1

    .line 228
    .local v8, point:I
    int-to-float v1, v8

    const/4 v2, 0x0

    int-to-float v3, v8

    iget v0, p0, Lcom/hf/UI/LineView;->mDevideLineHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 226
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private drawSeparator(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    iget v6, p0, Lcom/hf/UI/LineView;->mPaddingLeftRight:I

    .line 274
    .local v6, startX:I
    iget v0, p0, Lcom/hf/UI/LineView;->mWidth:I

    iget v1, p0, Lcom/hf/UI/LineView;->mPaddingLeftRight:I

    sub-int v7, v0, v1

    .line 275
    .local v7, stopX:I
    int-to-float v1, v6

    int-to-float v3, v7

    iget-object v5, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 276
    return-void
.end method

.method private drawTemperatureLine(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    .line 503
    iget v4, p0, Lcom/hf/UI/LineView;->mHeight:I

    iget v5, p0, Lcom/hf/UI/LineView;->mPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/hf/UI/LineView;->mWeekTextHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/hf/UI/LineView;->mTLayoutPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/hf/UI/LineView;->mTextSize:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/hf/UI/LineView;->mTLayoutHeight:I

    .line 505
    iget v4, p0, Lcom/hf/UI/LineView;->mTLayoutHeight:I

    iget v5, p0, Lcom/hf/UI/LineView;->mTMax:I

    iget v6, p0, Lcom/hf/UI/LineView;->mTMin:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    div-int v3, v4, v5

    .line 507
    .local v3, unitTemp:I
    sget-boolean v4, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v4, :cond_0

    .line 508
    const-string v4, "drawTemperatureLine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mTLayoutHeight = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/hf/UI/LineView;->mTLayoutHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; unitTemp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    invoke-direct {p0, v3}, Lcom/hf/UI/LineView;->getHeighPoints(I)[F

    move-result-object v0

    .line 512
    .local v0, highPoints:[F
    invoke-direct {p0, v3}, Lcom/hf/UI/LineView;->getLowPoint(I)[F

    move-result-object v1

    .line 513
    .local v1, lowPoints:[F
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    .line 540
    :cond_1
    :goto_0
    return-void

    .line 517
    :cond_2
    iget-object v4, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v8, v8, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 518
    iget-object v4, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/hf/UI/LineView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 519
    iget-object v4, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 520
    iget-object v4, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 521
    invoke-direct {p0, v0}, Lcom/hf/UI/LineView;->getPath([F)Landroid/graphics/Path;

    move-result-object v2

    .line 522
    .local v2, path:Landroid/graphics/Path;
    iget-object v4, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 524
    invoke-direct {p0, v1}, Lcom/hf/UI/LineView;->getPath([F)Landroid/graphics/Path;

    move-result-object v2

    .line 525
    iget-object v4, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 526
    iget-object v4, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 529
    iget-object v4, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x3f80

    const/high16 v6, 0x4000

    const v7, 0x7f090010

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 530
    iget-object v4, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/hf/UI/LineView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0038

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 531
    iget-object v4, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/hf/UI/LineView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 532
    iget-object v4, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    .line 534
    iget-object v4, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/hf/UI/LineView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 535
    iget-object v4, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    .line 537
    invoke-direct {p0, p1, v0}, Lcom/hf/UI/LineView;->writeHeighTemperature(Landroid/graphics/Canvas;[F)V

    .line 538
    invoke-direct {p0, p1, v1}, Lcom/hf/UI/LineView;->writeLowTemperature(Landroid/graphics/Canvas;[F)V

    goto/16 :goto_0
.end method

.method private findTMaxAndTMin()V
    .locals 5

    .prologue
    .line 159
    iget-object v4, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    if-nez v4, :cond_1

    .line 181
    :cond_0
    return-void

    .line 162
    :cond_1
    const/16 v4, -0x64

    iput v4, p0, Lcom/hf/UI/LineView;->mTMax:I

    .line 163
    const/16 v4, 0x64

    iput v4, p0, Lcom/hf/UI/LineView;->mTMin:I

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v4, p0, Lcom/hf/UI/LineView;->mCount:I

    if-ge v0, v4, :cond_0

    .line 165
    iget-object v4, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hf/model/CFWeather;

    .line 166
    .local v3, weather:Lcom/hf/model/CFWeather;
    const/4 v1, 0x0

    .line 167
    .local v1, max:I
    iget-boolean v4, v3, Lcom/hf/model/CFWeather;->isHalfDay:Z

    if-nez v4, :cond_2

    .line 169
    iget-object v4, v3, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 170
    iget v4, p0, Lcom/hf/UI/LineView;->mTMax:I

    if-le v1, v4, :cond_2

    .line 171
    iput v1, p0, Lcom/hf/UI/LineView;->mTMax:I

    .line 175
    :cond_2
    iget-object v4, v3, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 176
    .local v2, min:I
    iget v4, p0, Lcom/hf/UI/LineView;->mTMin:I

    if-ge v2, v4, :cond_3

    .line 177
    iput v2, p0, Lcom/hf/UI/LineView;->mTMin:I

    .line 164
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private findTMaxAndTMinForFR()V
    .locals 5

    .prologue
    .line 186
    iget-object v4, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    if-nez v4, :cond_1

    .line 213
    :cond_0
    return-void

    .line 189
    :cond_1
    const/16 v4, -0x64

    iput v4, p0, Lcom/hf/UI/LineView;->mTMax:I

    .line 190
    const/16 v4, 0x64

    iput v4, p0, Lcom/hf/UI/LineView;->mTMin:I

    .line 191
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/hf/UI/LineView;->mCount:I

    if-ge v1, v4, :cond_0

    .line 192
    iget-object v4, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hf/model/CFWeather;

    .line 193
    .local v3, weather:Lcom/hf/model/CFWeather;
    const/4 v0, 0x0

    .line 194
    .local v0, day:I
    const/4 v2, 0x0

    .line 196
    .local v2, night:I
    :try_start_0
    iget-object v4, v3, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 197
    iget-object v4, v3, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 198
    if-le v0, v2, :cond_4

    iget v4, p0, Lcom/hf/UI/LineView;->mTMax:I

    if-le v0, v4, :cond_4

    .line 199
    iput v0, p0, Lcom/hf/UI/LineView;->mTMax:I

    .line 203
    :cond_2
    :goto_1
    if-ge v0, v2, :cond_5

    iget v4, p0, Lcom/hf/UI/LineView;->mTMin:I

    if-ge v0, v4, :cond_5

    .line 204
    iput v0, p0, Lcom/hf/UI/LineView;->mTMin:I

    .line 191
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_4
    if-le v2, v0, :cond_2

    iget v4, p0, Lcom/hf/UI/LineView;->mTMax:I

    if-le v2, v4, :cond_2

    .line 201
    iput v2, p0, Lcom/hf/UI/LineView;->mTMax:I

    goto :goto_1

    .line 208
    :catch_0
    move-exception v4

    goto :goto_2

    .line 205
    :cond_5
    if-ge v2, v0, :cond_3

    iget v4, p0, Lcom/hf/UI/LineView;->mTMin:I

    if-ge v2, v4, :cond_3

    .line 206
    iput v2, p0, Lcom/hf/UI/LineView;->mTMin:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private getHeighPoints(I)[F
    .locals 15
    .parameter "unit"

    .prologue
    .line 283
    const/4 v6, 0x0

    .line 284
    .local v6, points:[F
    iget-object v11, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    if-nez v11, :cond_0

    move-object v7, v6

    .line 321
    .end local v6           #points:[F
    .local v7, points:[F
    :goto_0
    return-object v7

    .line 287
    .end local v7           #points:[F
    .restart local v6       #points:[F
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    .line 289
    .local v1, i:I
    iget-object v11, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_2

    .line 315
    const/4 v1, 0x0

    .line 316
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v6, v11, [F

    .line 317
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_5

    move-object v7, v6

    .line 321
    .end local v6           #points:[F
    .restart local v7       #points:[F
    goto :goto_0

    .line 289
    .end local v7           #points:[F
    .restart local v6       #points:[F
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hf/model/CFWeather;

    .line 290
    .local v8, weather:Lcom/hf/model/CFWeather;
    if-eqz v8, :cond_1

    .line 293
    iget-boolean v12, v8, Lcom/hf/model/CFWeather;->isHalfDay:Z

    if-nez v12, :cond_3

    .line 294
    const/4 v0, 0x0

    .local v0, day:I
    const/4 v5, 0x0

    .line 296
    .local v5, night:I
    :try_start_0
    iget-object v12, v8, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 297
    iget-object v12, v8, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 301
    :goto_3
    if-le v0, v5, :cond_4

    move v4, v0

    .line 303
    .local v4, max:I
    :goto_4
    const/4 v9, 0x0

    .local v9, x:F
    const/4 v10, 0x0

    .line 304
    .local v10, y:F
    iget v12, p0, Lcom/hf/UI/LineView;->mUnitWidth:I

    mul-int/2addr v12, v1

    iget v13, p0, Lcom/hf/UI/LineView;->mUnitWidth:I

    shr-int/lit8 v13, v13, 0x1

    add-int/2addr v12, v13

    iget v13, p0, Lcom/hf/UI/LineView;->mPaddingLeftRight:I

    add-int/2addr v12, v13

    int-to-float v9, v12

    .line 305
    iget v12, p0, Lcom/hf/UI/LineView;->mTMax:I

    sub-int/2addr v12, v4

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    mul-int v12, v12, p1

    int-to-float v10, v12

    .line 306
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    sget-boolean v12, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v12, :cond_3

    .line 309
    const-string v12, "getHeighPoints"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "x = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; y = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v0           #day:I
    .end local v4           #max:I
    .end local v5           #night:I
    .end local v9           #x:F
    .end local v10           #y:F
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .restart local v0       #day:I
    .restart local v5       #night:I
    :cond_4
    move v4, v5

    .line 301
    goto :goto_4

    .line 317
    .end local v0           #day:I
    .end local v5           #night:I
    .end local v8           #weather:Lcom/hf/model/CFWeather;
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 318
    .local v2, item:Ljava/lang/Float;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v6, v1

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 298
    .end local v2           #item:Ljava/lang/Float;
    .restart local v0       #day:I
    .restart local v5       #night:I
    .restart local v8       #weather:Lcom/hf/model/CFWeather;
    :catch_0
    move-exception v12

    goto :goto_3
.end method

.method private getLowPoint(I)[F
    .locals 15
    .parameter "unit"

    .prologue
    .line 329
    const/4 v6, 0x0

    .line 330
    .local v6, points:[F
    iget-object v11, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    if-nez v11, :cond_0

    move-object v7, v6

    .line 365
    .end local v6           #points:[F
    .local v7, points:[F
    :goto_0
    return-object v7

    .line 333
    .end local v7           #points:[F
    .restart local v6       #points:[F
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    .line 335
    .local v1, i:I
    iget-object v11, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_2

    .line 358
    const/4 v1, 0x0

    .line 359
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v6, v11, [F

    .line 360
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_5

    move-object v7, v6

    .line 365
    .end local v6           #points:[F
    .restart local v7       #points:[F
    goto :goto_0

    .line 335
    .end local v7           #points:[F
    .restart local v6       #points:[F
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hf/model/CFWeather;

    .line 336
    .local v8, weather:Lcom/hf/model/CFWeather;
    if-eqz v8, :cond_1

    .line 339
    const/4 v0, 0x0

    .local v0, day:I
    const/4 v5, 0x0

    .line 341
    .local v5, night:I
    :try_start_0
    iget-object v12, v8, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 342
    iget-object v12, v8, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 346
    :goto_3
    if-le v0, v5, :cond_4

    move v4, v5

    .line 348
    .local v4, min:I
    :goto_4
    const/4 v9, 0x0

    .local v9, x:F
    const/4 v10, 0x0

    .line 349
    .local v10, y:F
    iget v12, p0, Lcom/hf/UI/LineView;->mUnitWidth:I

    mul-int/2addr v12, v1

    iget v13, p0, Lcom/hf/UI/LineView;->mUnitWidth:I

    shr-int/lit8 v13, v13, 0x1

    add-int/2addr v12, v13

    iget v13, p0, Lcom/hf/UI/LineView;->mPaddingLeftRight:I

    add-int/2addr v12, v13

    int-to-float v9, v12

    .line 350
    iget v12, p0, Lcom/hf/UI/LineView;->mTMax:I

    sub-int/2addr v12, v4

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    mul-int v12, v12, p1

    int-to-float v10, v12

    .line 351
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    sget-boolean v12, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v12, :cond_3

    .line 354
    const-string v12, "getLowPoints"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "x = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; y = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4           #min:I
    .end local v9           #x:F
    .end local v10           #y:F
    :cond_4
    move v4, v0

    .line 346
    goto :goto_4

    .line 360
    .end local v0           #day:I
    .end local v5           #night:I
    .end local v8           #weather:Lcom/hf/model/CFWeather;
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 361
    .local v2, item:Ljava/lang/Float;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v6, v1

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 343
    .end local v2           #item:Ljava/lang/Float;
    .restart local v0       #day:I
    .restart local v5       #night:I
    .restart local v8       #weather:Lcom/hf/model/CFWeather;
    :catch_0
    move-exception v12

    goto :goto_3
.end method

.method private getPath([F)Landroid/graphics/Path;
    .locals 6
    .parameter "points"

    .prologue
    .line 374
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 375
    .local v2, path:Landroid/graphics/Path;
    array-length v1, p1

    .line 376
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 385
    return-object v2

    .line 377
    :cond_0
    aget v3, p1, v0

    .line 378
    .local v3, x:F
    add-int/lit8 v5, v0, 0x1

    aget v4, p1, v5

    .line 379
    .local v4, y:F
    if-nez v0, :cond_1

    .line 380
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 376
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    .line 78
    iget-object v0, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    iget-object v0, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 80
    iget-object v0, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/hf/UI/LineView;->mTextPaint:Landroid/text/TextPaint;

    .line 83
    iget-object v0, p0, Lcom/hf/UI/LineView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 84
    iget-object v0, p0, Lcom/hf/UI/LineView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 86
    return-void
.end method

.method private writeHeighTemperature(Landroid/graphics/Canvas;[F)V
    .locals 11
    .parameter "canvas"
    .parameter "points"

    .prologue
    .line 394
    iget-object v8, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    if-nez v8, :cond_1

    .line 434
    :cond_0
    return-void

    .line 397
    :cond_1
    iget-object v8, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 398
    iget-object v8, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/hf/UI/LineView;->mTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 399
    const/4 v1, 0x0

    .line 400
    .local v1, j:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hf/model/CFWeather;

    .line 402
    .local v5, weather:Lcom/hf/model/CFWeather;
    if-eqz v5, :cond_2

    iget-boolean v9, v5, Lcom/hf/model/CFWeather;->isHalfDay:Z

    if-nez v9, :cond_2

    .line 405
    const/4 v2, 0x0

    .line 407
    .local v2, temperature:Ljava/lang/String;
    :try_start_0
    iget-object v9, v5, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    iget-object v10, v5, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/hf/UI/LineView;->compareTemperature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v2, v5, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_1
    const/4 v3, 0x0

    .line 413
    .local v3, text:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 414
    const-string v3, ""

    .line 427
    :goto_2
    iget-object v9, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 428
    .local v4, textWidth:F
    aget v9, p2, v1

    const/high16 v10, 0x4000

    div-float v10, v4, v10

    sub-float v6, v9, v10

    .line 429
    .local v6, x:F
    add-int/lit8 v9, v1, 0x1

    aget v9, p2, v9

    iget v10, p0, Lcom/hf/UI/LineView;->mPadding:I

    int-to-float v10, v10

    sub-float v7, v9, v10

    .line 430
    .local v7, y:F
    iget-object v9, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 431
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 407
    .end local v3           #text:Ljava/lang/String;
    .end local v4           #textWidth:F
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_3
    :try_start_1
    iget-object v2, v5, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 416
    .restart local v3       #text:Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 417
    iget-boolean v9, p0, Lcom/hf/UI/LineView;->isCelsius:Z

    if-eqz v9, :cond_5

    .line 418
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const-string v9, "\u00b0C"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 421
    :cond_5
    invoke-static {v2}, Lcom/hf/utils/Util;->CToF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const-string v9, "\u00b0F"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 408
    .end local v3           #text:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private writeLowTemperature(Landroid/graphics/Canvas;[F)V
    .locals 11
    .parameter "canvas"
    .parameter "points"

    .prologue
    .line 442
    iget-object v8, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    if-nez v8, :cond_1

    .line 483
    :cond_0
    return-void

    .line 445
    :cond_1
    iget-object v8, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    iget-object v8, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/hf/UI/LineView;->mTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 449
    .local v1, j:I
    iget-object v8, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hf/model/CFWeather;

    .line 450
    .local v5, weather:Lcom/hf/model/CFWeather;
    if-eqz v5, :cond_2

    .line 453
    const/4 v2, 0x0

    .line 455
    .local v2, temperature:Ljava/lang/String;
    :try_start_0
    iget-object v9, v5, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    iget-object v10, v5, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/hf/UI/LineView;->compareTemperature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v2, v5, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_1
    const/4 v3, 0x0

    .line 461
    .local v3, text:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 462
    const-string v3, ""

    .line 475
    :goto_2
    iget-object v9, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 478
    .local v4, textWidth:F
    aget v9, p2, v1

    const/high16 v10, 0x4000

    div-float v10, v4, v10

    sub-float v6, v9, v10

    .line 479
    .local v6, x:F
    add-int/lit8 v9, v1, 0x1

    aget v9, p2, v9

    iget v10, p0, Lcom/hf/UI/LineView;->mPadding:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget v10, p0, Lcom/hf/UI/LineView;->mTextSize:I

    int-to-float v10, v10

    add-float v7, v9, v10

    .line 480
    .local v7, y:F
    iget-object v9, p0, Lcom/hf/UI/LineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 481
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 455
    .end local v3           #text:Ljava/lang/String;
    .end local v4           #textWidth:F
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_3
    :try_start_1
    iget-object v2, v5, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 464
    .restart local v3       #text:Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 465
    iget-boolean v9, p0, Lcom/hf/UI/LineView;->isCelsius:Z

    if-eqz v9, :cond_5

    .line 466
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string v9, "\u00b0C"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 469
    :cond_5
    invoke-static {v2}, Lcom/hf/utils/Util;->CToF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v9, "\u00b0F"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 456
    .end local v3           #text:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private writeWeek(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 238
    iget-object v2, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    const/4 v0, 0x0

    .line 242
    .local v0, staticLayout:Landroid/text/StaticLayout;
    iget-object v2, p0, Lcom/hf/UI/LineView;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/hf/UI/LineView;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 243
    iget-object v2, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    .line 244
    .local v8, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-lt v10, v8, :cond_2

    .line 259
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/hf/UI/LineView;->mWeekTextHeight:I

    .line 260
    iget v2, p0, Lcom/hf/UI/LineView;->mWeekTextHeight:I

    int-to-float v2, v2

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 262
    sget-boolean v2, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v2, :cond_0

    .line 263
    const-string v2, "TemperatureView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "height = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/hf/UI/LineView;->mWeekTextHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_2
    iget-object v2, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/hf/model/CFWeather;

    .line 246
    .local v12, weather:Lcom/hf/model/CFWeather;
    if-nez v12, :cond_3

    .line 244
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 249
    :cond_3
    iget v2, p0, Lcom/hf/UI/LineView;->mUnitWidth:I

    mul-int/2addr v2, v10

    iget v3, p0, Lcom/hf/UI/LineView;->mPaddingLeftRight:I

    add-int v11, v2, v3

    .line 250
    .local v11, marginLeft:I
    int-to-float v2, v11

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 251
    iget-object v2, p0, Lcom/hf/UI/LineView;->mContext:Landroid/content/Context;

    iget v3, v12, Lcom/hf/model/CFWeather;->week:I

    invoke-static {v2, v3}, Lcom/hf/utils/Util;->formatWeek(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    .line 252
    .local v13, week:Ljava/lang/String;
    iget-object v2, p0, Lcom/hf/UI/LineView;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/hf/model/CFWeather;->time:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/hf/utils/Util;->formatDate(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 253
    .local v9, date:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, text:Ljava/lang/String;
    new-instance v0, Landroid/text/StaticLayout;

    .end local v0           #staticLayout:Landroid/text/StaticLayout;
    iget-object v2, p0, Lcom/hf/UI/LineView;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/hf/UI/LineView;->mUnitWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 255
    .restart local v0       #staticLayout:Landroid/text/StaticLayout;
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 256
    neg-int v2, v11

    int-to-float v2, v2

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2
.end method


# virtual methods
.method drawLine(Lcom/hf/model/CityModel;)V
    .locals 3
    .parameter "city"

    .prologue
    .line 89
    if-eqz p1, :cond_0

    sget-object v1, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    sget-object v1, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hf/model/WeatherModel;

    .line 95
    .local v0, weatherModel:Lcom/hf/model/WeatherModel;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    iget-object v1, v0, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    iput-object v1, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    .line 101
    iget-object v1, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Lcom/hf/UI/LineView$1;

    invoke-direct {v1, p0, p1}, Lcom/hf/UI/LineView$1;-><init>(Lcom/hf/UI/LineView;Lcom/hf/model/CityModel;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 151
    invoke-virtual {v1, v2}, Lcom/hf/UI/LineView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 545
    iget-object v0, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 546
    iget v0, p0, Lcom/hf/UI/LineView;->mHeight:I

    if-nez v0, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/hf/UI/LineView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/hf/UI/LineView;->mHeight:I

    .line 549
    :cond_0
    iget v0, p0, Lcom/hf/UI/LineView;->mHeight:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/hf/UI/LineView;->mPadding:I

    .line 550
    iget v0, p0, Lcom/hf/UI/LineView;->mHeight:I

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/hf/UI/LineView;->mTextSize:I

    .line 552
    iget v0, p0, Lcom/hf/UI/LineView;->mTextSize:I

    mul-int/lit8 v0, v0, 0x3

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hf/UI/LineView;->mDevideLineHeight:I

    .line 553
    iget v0, p0, Lcom/hf/UI/LineView;->mHeight:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/hf/UI/LineView;->mTLayoutPadding:I

    .line 557
    iget v0, p0, Lcom/hf/UI/LineView;->mPadding:I

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 558
    invoke-direct {p0, p1}, Lcom/hf/UI/LineView;->drawDevideLine(Landroid/graphics/Canvas;)V

    .line 559
    invoke-direct {p0, p1}, Lcom/hf/UI/LineView;->writeWeek(Landroid/graphics/Canvas;)V

    .line 560
    iget v0, p0, Lcom/hf/UI/LineView;->mPadding:I

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 561
    invoke-direct {p0, p1}, Lcom/hf/UI/LineView;->drawSeparator(Landroid/graphics/Canvas;)V

    .line 562
    iget v0, p0, Lcom/hf/UI/LineView;->mTextSize:I

    iget v1, p0, Lcom/hf/UI/LineView;->mTLayoutPadding:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 563
    invoke-direct {p0, p1}, Lcom/hf/UI/LineView;->drawTemperatureLine(Landroid/graphics/Canvas;)V

    .line 564
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 567
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 568
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 574
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 575
    if-eqz p1, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/hf/UI/LineView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/hf/UI/LineView;->mHeight:I

    .line 578
    :cond_0
    return-void
.end method
