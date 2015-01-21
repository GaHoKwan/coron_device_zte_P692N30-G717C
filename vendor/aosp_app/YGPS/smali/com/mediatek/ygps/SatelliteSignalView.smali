.class public Lcom/mediatek/ygps/SatelliteSignalView;
.super Landroid/view/View;
.source "SatelliteSignalView.java"


# static fields
.field private static final BASELINE_OFFSET:I = 0x5

.field private static final DIVIDER_1:I = 0x14

.field private static final DIVIDER_2:I = 0x19

.field private static final DIVIDER_3:I = 0x1e

.field private static final DIVIDER_MAX:I = 0x20

.field private static final DIVIDER_MIN:I = 0xf

.field private static final ONE_QUARTER:I = 0x19

.field private static final PERCENT:F = 100.0f

.field private static final ROW_DEVIDER:D = 5.0

.field private static final TEXT_OFFSET:I = 0x8

.field private static final TEXT_SIZE:F = 10.0f

.field private static final THIN_LINE_STOKE_WIDTH:F = 0.5f

.field private static final THREE_QUARTER:I = 0x4b

.field private static final TWO_QUARTER:I = 0x32


# instance fields
.field private mBackground:Landroid/graphics/Paint;

.field private mBarOutlinePaint:Landroid/graphics/Paint;

.field private mBarPaintNoFix:Landroid/graphics/Paint;

.field private mBarPaintUnused:Landroid/graphics/Paint;

.field private mBarPaintUsed:Landroid/graphics/Paint;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mPrns:[I

.field private mProvider:Lcom/mediatek/ygps/SatelliteDataProvider;

.field private mSatellites:I

.field private mSnrs:[F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mThinLinePaint:Landroid/graphics/Paint;

.field private mUsedInFixMask:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ygps/SatelliteSignalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/ygps/SatelliteSignalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v2, 0x100

    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mLinePaint:Landroid/graphics/Paint;

    .line 87
    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mThinLinePaint:Landroid/graphics/Paint;

    .line 88
    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarPaintUsed:Landroid/graphics/Paint;

    .line 89
    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarPaintUnused:Landroid/graphics/Paint;

    .line 90
    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarPaintNoFix:Landroid/graphics/Paint;

    .line 91
    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarOutlinePaint:Landroid/graphics/Paint;

    .line 92
    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mTextPaint:Landroid/graphics/Paint;

    .line 93
    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBackground:Landroid/graphics/Paint;

    .line 95
    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mProvider:Lcom/mediatek/ygps/SatelliteDataProvider;

    .line 96
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mSatellites:I

    .line 97
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mPrns:[I

    .line 98
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mSnrs:[F

    .line 99
    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mUsedInFixMask:[I

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 142
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 143
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mLinePaint:Landroid/graphics/Paint;

    .line 144
    iget-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mLinePaint:Landroid/graphics/Paint;

    const v2, 0x7f040002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    iget-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    iget-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mThinLinePaint:Landroid/graphics/Paint;

    .line 150
    iget-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mThinLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f00

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 152
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarPaintUsed:Landroid/graphics/Paint;

    .line 153
    iget-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarPaintUsed:Landroid/graphics/Paint;

    const v2, 0x7f040003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarPaintUsed:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 155
    iget-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarPaintUsed:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    iget-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarPaintUsed:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 158
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarPaintUsed:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarPaintUnused:Landroid/graphics/Paint;

    .line 159
    iget-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarPaintUnused:Landroid/graphics/Paint;

    const v2, 0x7f040004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarPaintUsed:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarPaintNoFix:Landroid/graphics/Paint;

    .line 162
    iget-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarPaintNoFix:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarOutlinePaint:Landroid/graphics/Paint;

    .line 165
    iget-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarOutlinePaint:Landroid/graphics/Paint;

    const v2, 0x7f040005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    iget-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarOutlinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    iget-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mTextPaint:Landroid/graphics/Paint;

    .line 171
    iget-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f040009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    iget-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4120

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 173
    iget-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 174
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBackground:Landroid/graphics/Paint;

    .line 175
    iget-object v1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mBackground:Landroid/graphics/Paint;

    const v2, 0x7f040006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    :cond_0
    return-void
.end method

.method private isUsedInFix(I)Z
    .locals 11
    .parameter "prn"

    .prologue
    const/4 v8, 0x1

    .line 272
    move v4, p1

    .line 273
    .local v4, innerPrn:I
    const/4 v7, 0x0

    .line 274
    .local v7, result:Z
    if-gtz v4, :cond_2

    .line 275
    iget-object v0, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mUsedInFixMask:[I

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget v6, v0, v2

    .line 276
    .local v6, mask:I
    if-eqz v6, :cond_1

    .line 277
    const/4 v7, 0x1

    .line 287
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v6           #mask:I
    :cond_0
    :goto_1
    return v7

    .line 275
    .restart local v0       #arr$:[I
    .restart local v2       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #mask:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v6           #mask:I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 283
    div-int/lit8 v3, v4, 0x20

    .line 284
    .local v3, index:I
    rem-int/lit8 v1, v4, 0x20

    .line 285
    .local v1, bit:I
    iget-object v9, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mUsedInFixMask:[I

    aget v9, v9, v3

    shl-int v10, v8, v1

    and-int/2addr v9, v10

    if-eqz v9, :cond_3

    move v7, v8

    :goto_2
    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .parameter "canvas"

    .prologue
    .line 192
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v25

    .line 194
    .local v25, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v17

    .line 195
    .local v17, height:I
    move/from16 v0, v17

    int-to-double v2, v0

    const-wide/high16 v9, 0x4014

    div-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v21, v0

    .line 196
    .local v21, rowHeight:F
    move/from16 v0, v17

    int-to-float v2, v0

    sub-float v2, v2, v21

    const/high16 v3, 0x40a0

    add-float v12, v2, v3

    .line 197
    .local v12, baseline:F
    const/high16 v2, 0x4080

    mul-float v20, v21, v2

    .line 198
    .local v20, maxHeight:F
    const/high16 v2, 0x42c8

    div-float v22, v20, v2

    .line 200
    .local v22, scale:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mProvider:Lcom/mediatek/ygps/SatelliteDataProvider;

    if-eqz v2, :cond_1

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mProvider:Lcom/mediatek/ygps/SatelliteDataProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mPrns:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mSnrs:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mUsedInFixMask:[I

    invoke-interface/range {v2 .. v9}, Lcom/mediatek/ygps/SatelliteDataProvider;->getSatelliteStatus([I[F[F[FII[I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mSatellites:I

    .line 203
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mSatellites:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_1

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mSnrs:[F

    aget v2, v2, v18

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mSnrs:[F

    const/4 v3, 0x0

    aput v3, v2, v18

    .line 203
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 209
    .end local v18           #i:I
    :cond_1
    const/16 v14, 0xf

    .line 210
    .local v14, devide:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mSatellites:I

    const/16 v3, 0x20

    if-le v2, v3, :cond_3

    .line 211
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mSatellites:I

    .line 221
    :cond_2
    :goto_1
    div-int v2, v25, v14

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v23, v0

    .line 222
    .local v23, slotWidth:F
    const/high16 v2, 0x42c8

    div-float v2, v23, v2

    const/high16 v3, 0x4296

    mul-float v11, v2, v3

    .line 223
    .local v11, barWidth:F
    sub-float v16, v23, v11

    .line 224
    .local v16, fill:F
    move/from16 v0, v25

    int-to-float v2, v0

    int-to-float v3, v14

    mul-float v3, v3, v23

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float v19, v2, v3

    .line 226
    .local v19, margin:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mBackground:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 227
    const/4 v3, 0x0

    move/from16 v0, v25

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v4, v12

    move v6, v12

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 228
    const/high16 v2, 0x42c8

    mul-float v2, v2, v22

    sub-float v4, v12, v2

    .line 229
    .local v4, y:F
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mThinLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 230
    const/high16 v2, 0x4248

    mul-float v2, v2, v22

    sub-float v4, v12, v2

    .line 231
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mThinLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 232
    const/high16 v2, 0x41c8

    mul-float v2, v2, v22

    sub-float v4, v12, v2

    .line 233
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mThinLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 234
    const/high16 v2, 0x4296

    mul-float v2, v2, v22

    sub-float v4, v12, v2

    .line 235
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mThinLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 236
    const/4 v15, 0x0

    .line 237
    .local v15, drawn:I
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mSatellites:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_a

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mPrns:[I

    aget v2, v2, v18

    if-gtz v2, :cond_7

    .line 237
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 212
    .end local v4           #y:F
    .end local v11           #barWidth:F
    .end local v15           #drawn:I
    .end local v16           #fill:F
    .end local v18           #i:I
    .end local v19           #margin:F
    .end local v23           #slotWidth:F
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mSatellites:I

    const/16 v3, 0x1e

    if-le v2, v3, :cond_4

    .line 213
    const/16 v14, 0x20

    goto/16 :goto_1

    .line 214
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mSatellites:I

    const/16 v3, 0x19

    if-le v2, v3, :cond_5

    .line 215
    const/16 v14, 0x1e

    goto/16 :goto_1

    .line 216
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mSatellites:I

    const/16 v3, 0x14

    if-le v2, v3, :cond_6

    .line 217
    const/16 v14, 0x19

    goto/16 :goto_1

    .line 218
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mSatellites:I

    const/16 v3, 0xf

    if-le v2, v3, :cond_2

    .line 219
    const/16 v14, 0x14

    goto/16 :goto_1

    .line 241
    .restart local v4       #y:F
    .restart local v11       #barWidth:F
    .restart local v15       #drawn:I
    .restart local v16       #fill:F
    .restart local v18       #i:I
    .restart local v19       #margin:F
    .restart local v23       #slotWidth:F
    :cond_7
    int-to-float v2, v15

    mul-float v2, v2, v23

    add-float v2, v2, v19

    const/high16 v3, 0x4000

    div-float v3, v16, v3

    add-float v6, v2, v3

    .line 242
    .local v6, left:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mSnrs:[F

    aget v2, v2, v18

    mul-float v2, v2, v22

    sub-float v7, v12, v2

    .line 243
    .local v7, top:F
    add-float v8, v6, v11

    .line 244
    .local v8, right:F
    const/high16 v2, 0x4000

    div-float v2, v11, v2

    add-float v13, v6, v2

    .line 246
    .local v13, center:F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/ygps/SatelliteSignalView;->isUsedInFix(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 247
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarPaintNoFix:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v9, v12

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 255
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v9, v12

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 256
    const-string v2, "%3.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mSnrs:[F

    aget v9, v9, v18

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 257
    .local v24, tmp:Ljava/lang/String;
    sub-float v2, v7, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mPrns:[I

    aget v2, v2, v18

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x4100

    add-float/2addr v3, v12

    add-float v3, v3, v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v13, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 260
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 250
    .end local v24           #tmp:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mPrns:[I

    aget v2, v2, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/ygps/SatelliteSignalView;->isUsedInFix(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 251
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarPaintUsed:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v9, v12

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 253
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ygps/SatelliteSignalView;->mBarPaintUnused:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v9, v12

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 262
    .end local v6           #left:F
    .end local v7           #top:F
    .end local v8           #right:F
    .end local v13           #center:F
    :cond_a
    return-void
.end method

.method setDataProvider(Lcom/mediatek/ygps/SatelliteDataProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mediatek/ygps/SatelliteSignalView;->mProvider:Lcom/mediatek/ygps/SatelliteDataProvider;

    .line 188
    return-void
.end method
