.class public Lcom/mediatek/lbs/em/ViewGps;
.super Landroid/view/View;
.source "ViewGps.java"


# instance fields
.field private final CIRCLE_SIZE:F

.field private final MAX_SATELLITE_NUM:I

.field mAzi:[F

.field private mBackground:Landroid/graphics/Paint;

.field private mBaseSize:F

.field private mBaseX:F

.field private mBaseY:F

.field mEle:[F

.field private mGreenCircle:Landroid/graphics/Paint;

.field private mLine:Landroid/graphics/Paint;

.field mPnrs:[I

.field private mRedCircle:Landroid/graphics/Paint;

.field mSatInView:I

.field mSnrs:[F

.field mUsed:[Z

.field private mWhiteText:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/lbs/em/ViewGps;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/lbs/em/ViewGps;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    const/16 v1, 0x20

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    iput v1, p0, Lcom/mediatek/lbs/em/ViewGps;->MAX_SATELLITE_NUM:I

    .line 16
    const/high16 v0, 0x4170

    iput v0, p0, Lcom/mediatek/lbs/em/ViewGps;->CIRCLE_SIZE:F

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mSatInView:I

    .line 28
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mPnrs:[I

    .line 29
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mSnrs:[F

    .line 30
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mEle:[F

    .line 31
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mAzi:[F

    .line 32
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mUsed:[Z

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mBackground:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mBackground:Landroid/graphics/Paint;

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mLine:Landroid/graphics/Paint;

    .line 83
    iget-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mLine:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mRedCircle:Landroid/graphics/Paint;

    .line 89
    iget-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mRedCircle:Landroid/graphics/Paint;

    const/high16 v1, -0x1001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mRedCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mRedCircle:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mRedCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mGreenCircle:Landroid/graphics/Paint;

    .line 95
    iget-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mGreenCircle:Landroid/graphics/Paint;

    const v1, -0x44ff4500

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mGreenCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mGreenCircle:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mGreenCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mWhiteText:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mWhiteText:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mWhiteText:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    iget-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mWhiteText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mWhiteText:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    iget-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mWhiteText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 106
    iget-object v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mWhiteText:Landroid/graphics/Paint;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 107
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 199
    const-string v0, "LocationEM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 111
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseSize:F

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseX:F

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseSize:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseY:F

    .line 116
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseY:F

    const/high16 v2, 0x4170

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseY:F

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mBackground:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 120
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseSize:F

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    const/high16 v4, 0x4040

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/lbs/em/ViewGps;->mLine:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 121
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseSize:F

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/lbs/em/ViewGps;->mLine:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 122
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseSize:F

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/lbs/em/ViewGps;->mLine:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 124
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseSize:F

    sub-float v3, v1, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseSize:F

    add-float/2addr v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/lbs/em/ViewGps;->mLine:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 126
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseSize:F

    sub-float v2, v1, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseY:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseSize:F

    add-float/2addr v4, v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseY:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/lbs/em/ViewGps;->mLine:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 130
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v1

    add-int/lit16 v1, v1, -0x8c

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v1

    add-int/lit16 v1, v1, -0x8c

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/lbs/em/ViewGps;->mLine:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 131
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v1

    add-int/lit16 v1, v1, -0xb4

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v1

    add-int/lit16 v1, v1, -0xb4

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/lbs/em/ViewGps;->mLine:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 132
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v1

    add-int/lit16 v1, v1, -0xdc

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v1

    add-int/lit16 v1, v1, -0xdc

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/lbs/em/ViewGps;->mLine:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getWidth()I

    move-result v1

    div-int/lit8 v12, v1, 0x10

    .line 135
    .local v12, mSnrWidth:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mSatInView:I

    if-ge v11, v1, :cond_6

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mPnrs:[I

    aget v1, v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 139
    .local v13, pnr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mSnrs:[F

    aget v9, v1, v11

    .line 140
    .local v9, cn:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mEle:[F

    aget v10, v1, v11

    .line 141
    .local v10, ele:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mAzi:[F

    aget v8, v1, v11

    .line 142
    .local v8, azi:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mUsed:[Z

    aget-boolean v7, v1, v11

    .line 144
    .local v7, InUsed:Z
    const/16 v1, 0x10

    if-ge v11, v1, :cond_2

    .line 147
    mul-int v1, v12, v11

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x7f

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/lbs/em/ViewGps;->mLine:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 150
    const/4 v1, 0x1

    if-ne v7, v1, :cond_1

    .line 151
    mul-int v1, v12, v11

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v1

    add-int/lit16 v1, v1, -0x8c

    int-to-float v1, v1

    const/high16 v3, 0x4000

    mul-float/2addr v3, v9

    sub-float v3, v1, v3

    add-int/lit8 v1, v11, 0x1

    mul-int/2addr v1, v12

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v1

    add-int/lit16 v1, v1, -0x8c

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/lbs/em/ViewGps;->mGreenCircle:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 156
    :goto_1
    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    mul-int v2, v12, v11

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v3

    add-int/lit16 v3, v3, -0x96

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/lbs/em/ViewGps;->mLine:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 158
    mul-int v1, v12, v11

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v1

    add-int/lit16 v1, v1, -0x8c

    int-to-float v1, v1

    const/high16 v3, 0x4000

    mul-float/2addr v3, v9

    sub-float v3, v1, v3

    add-int/lit8 v1, v11, 0x1

    mul-int/2addr v1, v12

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v1

    add-int/lit16 v1, v1, -0x8c

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/lbs/em/ViewGps;->mLine:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 178
    :goto_2
    const/high16 v1, 0x42b4

    cmpl-float v1, v10, v1

    if-lez v1, :cond_4

    .line 179
    const/high16 v10, 0x42b4

    .line 182
    :cond_0
    :goto_3
    const/high16 v1, 0x3f80

    const/high16 v2, 0x42b4

    div-float v2, v10, v2

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseSize:F

    mul-float v10, v1, v2

    .line 184
    float-to-double v1, v8

    const-wide v3, 0x400921fb54442d18L

    mul-double/2addr v1, v3

    const-wide v3, 0x4066800000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v14, v1, v10

    .line 185
    .local v14, x:F
    float-to-double v1, v8

    const-wide v3, 0x400921fb54442d18L

    mul-double/2addr v1, v3

    const-wide v3, 0x4066800000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    neg-float v1, v1

    mul-float v15, v1, v10

    .line 188
    .local v15, y:F
    const/4 v1, 0x1

    if-ne v7, v1, :cond_5

    .line 189
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseX:F

    add-float/2addr v1, v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseY:F

    add-float/2addr v2, v15

    const/high16 v3, 0x4170

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/lbs/em/ViewGps;->mGreenCircle:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 193
    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseX:F

    add-float/2addr v1, v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseY:F

    add-float/2addr v2, v15

    const/high16 v3, 0x40f0

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/lbs/em/ViewGps;->mWhiteText:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 135
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 153
    .end local v14           #x:F
    .end local v15           #y:F
    :cond_1
    mul-int v1, v12, v11

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v1

    add-int/lit16 v1, v1, -0x8c

    int-to-float v1, v1

    const/high16 v3, 0x4000

    mul-float/2addr v3, v9

    sub-float v3, v1, v3

    add-int/lit8 v1, v11, 0x1

    mul-int/2addr v1, v12

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v1

    add-int/lit16 v1, v1, -0x8c

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/lbs/em/ViewGps;->mRedCircle:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 163
    :cond_2
    add-int/lit8 v1, v11, -0x10

    mul-int/2addr v1, v12

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/lbs/em/ViewGps;->mLine:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 166
    const/4 v1, 0x1

    if-ne v7, v1, :cond_3

    .line 167
    add-int/lit8 v1, v11, -0x10

    mul-int/2addr v1, v12

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    const/high16 v3, 0x4000

    mul-float/2addr v3, v9

    sub-float v3, v1, v3

    add-int/lit8 v1, v11, -0x10

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v12

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/lbs/em/ViewGps;->mGreenCircle:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 172
    :goto_5
    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v11, -0x10

    mul-int/2addr v2, v12

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1e

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/lbs/em/ViewGps;->mLine:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 174
    add-int/lit8 v1, v11, -0x10

    mul-int/2addr v1, v12

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    const/high16 v3, 0x4000

    mul-float/2addr v3, v9

    sub-float v3, v1, v3

    add-int/lit8 v1, v11, -0x10

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v12

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/lbs/em/ViewGps;->mLine:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 169
    :cond_3
    add-int/lit8 v1, v11, -0x10

    mul-int/2addr v1, v12

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    const/high16 v3, 0x4000

    mul-float/2addr v3, v9

    sub-float v3, v1, v3

    add-int/lit8 v1, v11, -0x10

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v12

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/ViewGps;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/lbs/em/ViewGps;->mRedCircle:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 180
    :cond_4
    const/4 v1, 0x0

    cmpg-float v1, v10, v1

    if-gez v1, :cond_0

    .line 181
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 191
    .restart local v14       #x:F
    .restart local v15       #y:F
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseX:F

    add-float/2addr v1, v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/lbs/em/ViewGps;->mBaseY:F

    add-float/2addr v2, v15

    const/high16 v3, 0x4170

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/lbs/em/ViewGps;->mRedCircle:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 195
    .end local v7           #InUsed:Z
    .end local v8           #azi:F
    .end local v9           #cn:F
    .end local v10           #ele:F
    .end local v13           #pnr:Ljava/lang/String;
    .end local v14           #x:F
    .end local v15           #y:F
    :cond_6
    return-void
.end method

.method public resetGpsView()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/lbs/em/ViewGps;->mSatInView:I

    .line 55
    invoke-virtual {p0}, Lcom/mediatek/lbs/em/ViewGps;->invalidate()V

    .line 56
    return-void
.end method

.method public setGpsStatus(Landroid/location/GpsStatus;)V
    .locals 6
    .parameter "gpsStatus"

    .prologue
    .line 35
    const/4 v3, 0x0

    .line 36
    .local v3, satCount:I
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    .line 37
    .local v0, gpsSat:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/location/GpsSatellite;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GpsSatellite;

    .line 38
    .local v2, sat:Landroid/location/GpsSatellite;
    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    .line 39
    const-string v4, "ERR: the number of satellite is over 32"

    invoke-direct {p0, v4}, Lcom/mediatek/lbs/em/ViewGps;->log(Ljava/lang/String;)V

    .line 49
    .end local v2           #sat:Landroid/location/GpsSatellite;
    :cond_0
    iput v3, p0, Lcom/mediatek/lbs/em/ViewGps;->mSatInView:I

    .line 50
    invoke-virtual {p0}, Lcom/mediatek/lbs/em/ViewGps;->invalidate()V

    .line 51
    return-void

    .line 42
    .restart local v2       #sat:Landroid/location/GpsSatellite;
    :cond_1
    iget-object v4, p0, Lcom/mediatek/lbs/em/ViewGps;->mPnrs:[I

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v5

    aput v5, v4, v3

    .line 43
    iget-object v4, p0, Lcom/mediatek/lbs/em/ViewGps;->mSnrs:[F

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    aput v5, v4, v3

    .line 44
    iget-object v4, p0, Lcom/mediatek/lbs/em/ViewGps;->mEle:[F

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v5

    aput v5, v4, v3

    .line 45
    iget-object v4, p0, Lcom/mediatek/lbs/em/ViewGps;->mAzi:[F

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v5

    aput v5, v4, v3

    .line 46
    iget-object v4, p0, Lcom/mediatek/lbs/em/ViewGps;->mUsed:[Z

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v5

    aput-boolean v5, v4, v3

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
