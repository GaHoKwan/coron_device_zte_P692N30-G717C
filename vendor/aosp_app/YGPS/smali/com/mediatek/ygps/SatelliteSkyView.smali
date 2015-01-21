.class public Lcom/mediatek/ygps/SatelliteSkyView;
.super Landroid/view/View;
.source "SatelliteSkyView.java"


# static fields
.field private static final DRAW_MARGIN:I = 0xc

.field private static final GRID_WIDTH:F = 1.0f

.field private static final RIGHT_ANGLE:I = 0x5a

.field private static final RIGHT_ANGLE_D:D = 90.0

.field private static final STRAIGHT_ANGLE_D:D = 180.0

.field public static final TAG:Ljava/lang/String; = "YGPS/SatelliteSkyView"

.field private static final TEXT_SIZE:F = 15.0f

.field private static final THREE_QUARTER:F = 0.75f


# instance fields
.field private mAzimuth:[F

.field private mBackground:Landroid/graphics/Paint;

.field private mBitmapAdjustment:F

.field private mElevation:[F

.field private mGridPaint:Landroid/graphics/Paint;

.field private mPrns:[I

.field private mProvider:Lcom/mediatek/ygps/SatelliteDataProvider;

.field private mSatelliteBitmapNoFix:Landroid/graphics/Bitmap;

.field private mSatelliteBitmapUnused:Landroid/graphics/Bitmap;

.field private mSatelliteBitmapUsed:Landroid/graphics/Bitmap;

.field private mSatellites:I

.field private mSnrs:[F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mUsedInFixMask:[I

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ygps/SatelliteSkyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/ygps/SatelliteSkyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x0

    .line 158
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    iput-object v5, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mGridPaint:Landroid/graphics/Paint;

    .line 86
    iput-object v5, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mTextPaint:Landroid/graphics/Paint;

    .line 87
    iput-object v5, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mBackground:Landroid/graphics/Paint;

    .line 88
    iput-object v5, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mSatelliteBitmapUsed:Landroid/graphics/Bitmap;

    .line 89
    iput-object v5, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mSatelliteBitmapUnused:Landroid/graphics/Bitmap;

    .line 90
    iput-object v5, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mSatelliteBitmapNoFix:Landroid/graphics/Bitmap;

    .line 92
    const/4 v4, 0x0

    iput v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mBitmapAdjustment:F

    .line 94
    iput-object v5, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mProvider:Lcom/mediatek/ygps/SatelliteDataProvider;

    .line 95
    const/4 v4, 0x0

    iput v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mSatellites:I

    .line 96
    new-array v4, v6, [I

    iput-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mPrns:[I

    .line 97
    new-array v4, v6, [F

    iput-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mElevation:[F

    .line 98
    new-array v4, v6, [F

    iput-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mAzimuth:[F

    .line 99
    new-array v4, v6, [F

    iput-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mSnrs:[F

    .line 101
    new-array v4, v6, [F

    iput-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mX:[F

    .line 102
    new-array v4, v6, [F

    iput-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mY:[F

    .line 103
    const/16 v4, 0x8

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mUsedInFixMask:[I

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 160
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 161
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mGridPaint:Landroid/graphics/Paint;

    .line 162
    iget-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mGridPaint:Landroid/graphics/Paint;

    const v5, 0x7f040007

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mGridPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    iget-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mGridPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 165
    iget-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mGridPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mBackground:Landroid/graphics/Paint;

    .line 167
    iget-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mBackground:Landroid/graphics/Paint;

    const v5, 0x7f040008

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mTextPaint:Landroid/graphics/Paint;

    .line 170
    iget-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mTextPaint:Landroid/graphics/Paint;

    const v5, 0x7f04000a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x4170

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 172
    iget-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 174
    const v4, 0x7f020001

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 176
    .local v1, satgreen:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mSatelliteBitmapUsed:Landroid/graphics/Bitmap;

    .line 183
    :goto_0
    const v4, 0x7f020003

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 185
    .local v3, satyellow:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v3, :cond_2

    .line 186
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mSatelliteBitmapUnused:Landroid/graphics/Bitmap;

    .line 192
    :goto_1
    const v4, 0x7f020002

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 194
    .local v2, satred:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_3

    .line 195
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mSatelliteBitmapNoFix:Landroid/graphics/Bitmap;

    .line 206
    :goto_2
    iget-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mSatelliteBitmapUsed:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 207
    iget-object v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mSatelliteBitmapUsed:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iput v4, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mBitmapAdjustment:F

    .line 210
    .end local v1           #satgreen:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #satred:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #satyellow:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void

    .line 179
    .restart local v1       #satgreen:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    const-string v4, "YGPS/SatelliteSkyView"

    const-string v5, "get BitmapDrawable getDrawable(R.drawable.satgreen) failed"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    .restart local v3       #satyellow:Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    const-string v4, "YGPS/SatelliteSkyView"

    const-string v5, "get BitmapDrawable getDrawable(R.drawable.satyellow)) failed"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 197
    .restart local v2       #satred:Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    const-string v4, "YGPS/SatelliteSkyView"

    const-string v5, "get BitmapDrawable getDrawable(xxx) failed"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private computeXY()V
    .locals 10

    .prologue
    const/high16 v9, 0x42b4

    .line 109
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v5, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mSatellites:I

    if-ge v0, v5, :cond_0

    .line 110
    iget-object v5, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mAzimuth:[F

    aget v5, v5, v0

    sub-float/2addr v5, v9

    neg-float v5, v5

    float-to-double v3, v5

    .line 111
    .local v3, theta:D
    const-wide v5, 0x400921fb54442d18L

    mul-double/2addr v5, v3

    const-wide v7, 0x4066800000000000L

    div-double v1, v5, v7

    .line 112
    .local v1, rad:D
    iget-object v5, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mX:[F

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v5, v0

    .line 113
    iget-object v5, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mY:[F

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    neg-float v6, v6

    aput v6, v5, v0

    .line 115
    iget-object v5, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mElevation:[F

    iget-object v6, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mElevation:[F

    aget v6, v6, v0

    sub-float v6, v9, v6

    aput v6, v5, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v1           #rad:D
    .end local v3           #theta:D
    :cond_0
    return-void
.end method

.method private isUsedInFix(I)Z
    .locals 11
    .parameter "prn"

    .prologue
    const/4 v8, 0x1

    .line 286
    move v4, p1

    .line 287
    .local v4, innerPrn:I
    const/4 v7, 0x0

    .line 288
    .local v7, result:Z
    if-gtz v4, :cond_2

    .line 289
    iget-object v0, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mUsedInFixMask:[I

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget v6, v0, v2

    .line 290
    .local v6, mask:I
    if-eqz v6, :cond_1

    .line 291
    const/4 v7, 0x1

    .line 301
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v6           #mask:I
    :cond_0
    :goto_1
    return v7

    .line 289
    .restart local v0       #arr$:[I
    .restart local v2       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #mask:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v6           #mask:I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 297
    div-int/lit8 v3, v4, 0x20

    .line 298
    .local v3, index:I
    rem-int/lit8 v1, v4, 0x20

    .line 299
    .local v1, bit:I
    iget-object v9, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mUsedInFixMask:[I

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
    .locals 28
    .parameter "canvas"

    .prologue
    .line 225
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v10, v2

    .line 227
    .local v10, centerY:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    .line 229
    .local v3, centerX:F
    cmpl-float v2, v3, v10

    if-lez v2, :cond_2

    .line 230
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v22, v2, -0xc

    .line 234
    .local v22, radius:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mGridPaint:Landroid/graphics/Paint;

    .line 235
    .local v7, gridPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    .line 236
    .local v25, textPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mBackground:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 237
    move/from16 v0, v22

    int-to-float v2, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 238
    move/from16 v0, v22

    int-to-float v2, v0

    const/high16 v4, 0x3f40

    mul-float/2addr v2, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 239
    shr-int/lit8 v2, v22, 0x1

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 240
    shr-int/lit8 v2, v22, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 241
    shr-int/lit8 v2, v22, 0x2

    int-to-float v2, v2

    sub-float v4, v10, v2

    move/from16 v0, v22

    int-to-float v2, v0

    sub-float v6, v10, v2

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 243
    shr-int/lit8 v2, v22, 0x2

    int-to-float v2, v2

    add-float v4, v10, v2

    move/from16 v0, v22

    int-to-float v2, v0

    add-float v6, v10, v2

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 245
    shr-int/lit8 v2, v22, 0x2

    int-to-float v2, v2

    sub-float v9, v3, v2

    move/from16 v0, v22

    int-to-float v2, v0

    sub-float v11, v3, v2

    move-object/from16 v8, p1

    move v12, v10

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 247
    shr-int/lit8 v2, v22, 0x2

    int-to-float v2, v2

    add-float v9, v3, v2

    move/from16 v0, v22

    int-to-float v2, v0

    add-float v11, v3, v2

    move-object/from16 v8, p1

    move v12, v10

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 249
    move/from16 v0, v22

    int-to-double v4, v0

    const-wide v8, 0x4056800000000000L

    div-double v23, v4, v8

    .line 250
    .local v23, scale:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mProvider:Lcom/mediatek/ygps/SatelliteDataProvider;

    if-eqz v2, :cond_0

    .line 251
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mProvider:Lcom/mediatek/ygps/SatelliteDataProvider;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mPrns:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mElevation:[F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mAzimuth:[F

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mUsedInFixMask:[I

    move-object/from16 v18, v0

    invoke-interface/range {v11 .. v18}, Lcom/mediatek/ygps/SatelliteDataProvider;->getSatelliteStatus([I[F[F[FII[I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mSatellites:I

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ygps/SatelliteSkyView;->computeXY()V

    .line 255
    :cond_0
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mSatellites:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_7

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mElevation:[F

    aget v2, v2, v21

    const/high16 v4, 0x42b4

    cmpl-float v2, v2, v4

    if-gez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mAzimuth:[F

    aget v2, v2, v21

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mPrns:[I

    aget v2, v2, v21

    if-gtz v2, :cond_3

    .line 255
    :cond_1
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 232
    .end local v7           #gridPaint:Landroid/graphics/Paint;
    .end local v21           #i:I
    .end local v22           #radius:I
    .end local v23           #scale:D
    .end local v25           #textPaint:Landroid/graphics/Paint;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v22, v2, -0xc

    .restart local v22       #radius:I
    goto/16 :goto_0

    .line 260
    .restart local v7       #gridPaint:Landroid/graphics/Paint;
    .restart local v21       #i:I
    .restart local v23       #scale:D
    .restart local v25       #textPaint:Landroid/graphics/Paint;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mElevation:[F

    aget v2, v2, v21

    float-to-double v4, v2

    mul-double v19, v4, v23

    .line 261
    .local v19, a:D
    float-to-double v4, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mX:[F

    aget v2, v2, v21

    float-to-double v8, v2

    mul-double v8, v8, v19

    add-double/2addr v4, v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mBitmapAdjustment:F

    float-to-double v8, v2

    sub-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v26, v0

    .line 262
    .local v26, x:I
    float-to-double v4, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mY:[F

    aget v2, v2, v21

    float-to-double v8, v2

    mul-double v8, v8, v19

    add-double/2addr v4, v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mBitmapAdjustment:F

    float-to-double v8, v2

    sub-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v27, v0

    .line 264
    .local v27, y:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/ygps/SatelliteSkyView;->isUsedInFix(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mSnrs:[F

    aget v2, v2, v21

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_5

    .line 265
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mSatelliteBitmapNoFix:Landroid/graphics/Bitmap;

    move/from16 v0, v26

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 274
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mPrns:[I

    aget v2, v2, v21

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v26

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 269
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mPrns:[I

    aget v2, v2, v21

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/ygps/SatelliteSkyView;->isUsedInFix(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mSatelliteBitmapUsed:Landroid/graphics/Bitmap;

    move/from16 v0, v26

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 272
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ygps/SatelliteSkyView;->mSatelliteBitmapUnused:Landroid/graphics/Bitmap;

    move/from16 v0, v26

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 276
    .end local v19           #a:D
    .end local v26           #x:I
    .end local v27           #y:I
    :cond_7
    return-void
.end method

.method setDataProvider(Lcom/mediatek/ygps/SatelliteDataProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/mediatek/ygps/SatelliteSkyView;->mProvider:Lcom/mediatek/ygps/SatelliteDataProvider;

    .line 221
    return-void
.end method
