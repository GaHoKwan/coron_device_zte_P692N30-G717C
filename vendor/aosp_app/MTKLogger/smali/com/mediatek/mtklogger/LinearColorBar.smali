.class public Lcom/mediatek/mtklogger/LinearColorBar;
.super Landroid/widget/LinearLayout;
.source "LinearColorBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MTKLogger/LinearColorBar"


# instance fields
.field final mColorGradientPaint:Landroid/graphics/Paint;

.field final mColorPath:Landroid/graphics/Path;

.field final mEdgeGradientPaint:Landroid/graphics/Paint;

.field final mEdgePath:Landroid/graphics/Path;

.field private mGreenRatio:F

.field mInterestingLeftRadio:F

.field mInterestingRightRadio:F

.field private mLeftColor:I

.field mLineWidth:I

.field private mMiddleColor:I

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field private mRedRatio:F

.field private mRightColor:I

.field private mShowingGreen:Z

.field private mYellowRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v0, -0xff6634

    const/4 v1, 0x1

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mLeftColor:I

    .line 26
    iput v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mMiddleColor:I

    .line 28
    const v0, -0x777778

    iput v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mRightColor:I

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mRect:Landroid/graphics/Rect;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    .line 44
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/LinearColorBar;->setWillNotDraw(Z)V

    .line 51
    iget-object v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/LinearColorBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-lt v0, v2, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mLineWidth:I

    .line 57
    iget-object v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    return-void

    :cond_0
    move v0, v1

    .line 55
    goto :goto_0
.end method

.method private updateIndicator()V
    .locals 12

    .prologue
    const v3, 0xffffff

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/LinearColorBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 86
    .local v9, res:Landroid/content/res/Resources;
    invoke-virtual {v9}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v10

    .line 87
    .local v10, themeColor:I
    if-eqz v10, :cond_0

    .line 88
    iput v10, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mLeftColor:I

    .line 89
    iput v10, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mMiddleColor:I

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/LinearColorBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/mediatek/mtklogger/LinearColorBar;->getPaddingBottom()I

    move-result v2

    sub-int v8, v0, v2

    .line 94
    .local v8, off:I
    if-gez v8, :cond_1

    .line 95
    const/4 v8, 0x0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 97
    iget-object v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/mediatek/mtklogger/LinearColorBar;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 98
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mShowingGreen:Z

    if-eqz v0, :cond_2

    .line 99
    iget-object v11, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v8, -0x2

    int-to-float v4, v2

    iget v2, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mRightColor:I

    and-int v5, v2, v3

    iget v6, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mRightColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 108
    :goto_0
    iget-object v11, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    div-int/lit8 v2, v8, 0x2

    int-to-float v4, v2

    const v5, 0xa0a0a0

    const v6, -0x5f5f60

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 110
    return-void

    .line 104
    :cond_2
    iget-object v11, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v8, -0x2

    int-to-float v4, v2

    iget v2, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mMiddleColor:I

    and-int v5, v2, v3

    iget v6, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mMiddleColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 120
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mtklogger/LinearColorBar;->getWidth()I

    move-result v16

    .line 124
    .local v16, width:I
    const/4 v10, 0x0

    .line 126
    .local v10, left:I
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mRedRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v14, v10, v1

    .line 127
    .local v14, right:I
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mYellowRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v15, v14, v1

    .line 167
    .local v15, right2:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 169
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mInterestingLeftRadio:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mInterestingRightRadio:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 170
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mInterestingLeftRadio:F

    mul-float/2addr v1, v2

    float-to-int v8, v1

    .line 171
    .local v8, indicatorLeft:I
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mInterestingRightRadio:F

    mul-float/2addr v1, v2

    float-to-int v9, v1

    .line 172
    .local v9, indicatorRight:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v13, v1, Landroid/graphics/Rect;->top:I

    .line 173
    .local v13, midTopY:I
    const/4 v12, 0x0

    .line 174
    .local v12, midBottomY:I
    const/16 v17, 0x2

    .line 175
    .local v17, xoff:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v2, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 176
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v2, v8

    const/4 v3, 0x0

    const/high16 v4, -0x4000

    int-to-float v5, v13

    const/high16 v6, -0x4000

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    add-int/lit8 v2, v16, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    add-int/lit8 v2, v16, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    int-to-float v3, v13

    int-to-float v4, v9

    const/4 v5, 0x0

    int-to-float v6, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 182
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mLineWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f00

    add-float v11, v1, v2

    .line 183
    .local v11, lineOffset:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    const/high16 v2, -0x4000

    add-float/2addr v2, v11

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    const/high16 v2, -0x4000

    add-float/2addr v2, v11

    int-to-float v3, v13

    int-to-float v4, v8

    add-float/2addr v4, v11

    const/4 v5, 0x0

    int-to-float v6, v8

    add-float/2addr v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-int/lit8 v2, v16, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float/2addr v2, v11

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-int/lit8 v2, v16, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float/2addr v2, v11

    int-to-float v3, v13

    int-to-float v4, v9

    sub-float/2addr v4, v11

    const/4 v5, 0x0

    int-to-float v6, v9

    sub-float/2addr v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 193
    .end local v8           #indicatorLeft:I
    .end local v9           #indicatorRight:I
    .end local v11           #lineOffset:F
    .end local v12           #midBottomY:I
    .end local v13           #midTopY:I
    .end local v17           #xoff:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 198
    :cond_1
    if-ge v10, v14, :cond_2

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v14, v1, Landroid/graphics/Rect;->right:I

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mLeftColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 203
    sub-int v1, v14, v10

    sub-int v16, v16, v1

    .line 204
    move v10, v14

    .line 207
    :cond_2
    move v14, v15

    .line 209
    if-ge v10, v14, :cond_3

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v14, v1, Landroid/graphics/Rect;->right:I

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mMiddleColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 214
    sub-int v1, v14, v10

    sub-int v16, v16, v1

    .line 215
    move v10, v14

    .line 218
    :cond_3
    add-int v14, v10, v16

    .line 219
    if-ge v10, v14, :cond_4

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v14, v1, Landroid/graphics/Rect;->right:I

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mRightColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mtklogger/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 225
    :cond_4
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 115
    invoke-direct {p0}, Lcom/mediatek/mtklogger/LinearColorBar;->updateIndicator()V

    .line 116
    return-void
.end method

.method public setGradientPaint(FF)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mInterestingLeftRadio:F

    .line 79
    iput p2, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mInterestingRightRadio:F

    .line 80
    return-void
.end method

.method public setRatios(FFF)V
    .locals 0
    .parameter "red"
    .parameter "yellow"
    .parameter "green"

    .prologue
    .line 63
    iput p1, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mRedRatio:F

    .line 64
    iput p2, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mYellowRatio:F

    .line 65
    iput p3, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mGreenRatio:F

    .line 66
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/LinearColorBar;->invalidate()V

    .line 67
    return-void
.end method

.method public setShowingGreen(Z)V
    .locals 1
    .parameter "showingGreen"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mShowingGreen:Z

    if-eq v0, p1, :cond_0

    .line 71
    iput-boolean p1, p0, Lcom/mediatek/mtklogger/LinearColorBar;->mShowingGreen:Z

    .line 72
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/LinearColorBar;->invalidate()V

    .line 74
    :cond_0
    return-void
.end method
