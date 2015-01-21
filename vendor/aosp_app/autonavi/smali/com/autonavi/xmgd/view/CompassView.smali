.class public Lcom/autonavi/xmgd/view/CompassView;
.super Landroid/view/View;


# instance fields
.field private context:Landroid/content/Context;

.field private imgSatellite:Landroid/graphics/Bitmap;

.field private it:[Lcom/autonavi/xm/navigation/server/location/GSatellite;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mRadius:I

.field private orientPaint:Landroid/graphics/Paint;

.field private satePaint:Landroid/graphics/Paint;

.field private scale:F

.field private textPaint:Landroid/graphics/Paint;

.field private textSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mCanvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->imgSatellite:Landroid/graphics/Bitmap;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/autonavi/xmgd/view/CompassView;->textSize:I

    iput-object p1, p0, Lcom/autonavi/xmgd/view/CompassView;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/CompassView;->init()V

    return-void
.end method

.method private drawOrient()V
    .locals 11

    const/4 v6, 0x0

    const/high16 v10, 0x41f0

    const/high16 v9, 0x4120

    const/high16 v8, 0x3f80

    const/high16 v7, 0x3f00

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x3

    invoke-direct {v1, v6, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->orientPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->orientPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->orientPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v3, v3

    const/high16 v4, 0x40e0

    iget v5, p0, Lcom/autonavi/xmgd/view/CompassView;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/autonavi/xmgd/view/CompassView;->orientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->orientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->orientPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1, v8}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iget-object v1, p0, Lcom/autonavi/xmgd/view/CompassView;->orientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/autonavi/xmgd/view/CompassView;->orientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/autonavi/xmgd/view/CompassView;->orientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/autonavi/xmgd/view/CompassView;->orientPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/autonavi/xmgd/view/CompassView;->textSize:I

    int-to-double v1, v1

    const-wide v3, 0x3ff3333333333333L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mCanvas:Landroid/graphics/Canvas;

    const-string v1, "N"

    iget v2, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v2, v2

    sub-float/2addr v2, v9

    iget v3, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/autonavi/xmgd/view/CompassView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/autonavi/xmgd/view/CompassView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    const/16 v0, 0xb

    if-ge v6, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {v0, v10, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/autonavi/xmgd/view/CompassView;->orientPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    mul-int/lit8 v1, v0, 0x1e

    const/16 v0, 0x64

    if-le v1, v0, :cond_0

    const/high16 v0, 0x4170

    iget v2, p0, Lcom/autonavi/xmgd/view/CompassView;->scale:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v7

    :goto_1
    iget-object v2, p0, Lcom/autonavi/xmgd/view/CompassView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u00b0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v3, v3

    sub-float v0, v3, v0

    iget v3, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/autonavi/xmgd/view/CompassView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/autonavi/xmgd/view/CompassView;->scale:F

    mul-float/2addr v0, v9

    add-float/2addr v0, v7

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {v0, v10, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method private drawSate(F)V
    .locals 10

    const/4 v1, 0x0

    const/high16 v9, 0x42b4

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->it:[Lcom/autonavi/xm/navigation/server/location/GSatellite;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->it:[Lcom/autonavi/xm/navigation/server/location/GSatellite;

    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/autonavi/xmgd/view/CompassView;->it:[Lcom/autonavi/xm/navigation/server/location/GSatellite;

    aget-object v2, v2, v1

    iget v3, v2, Lcom/autonavi/xm/navigation/server/location/GSatellite;->nAzimuth:I

    int-to-float v3, v3

    iget v4, v2, Lcom/autonavi/xm/navigation/server/location/GSatellite;->nElevation:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/autonavi/xmgd/view/CompassView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v3, p1, p1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v5, p0, Lcom/autonavi/xmgd/view/CompassView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/autonavi/xmgd/view/CompassView;->imgSatellite:Landroid/graphics/Bitmap;

    mul-float v7, p1, v4

    div-float/2addr v7, v9

    iget-object v8, p0, Lcom/autonavi/xmgd/view/CompassView;->satePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, p1, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v2, v2, Lcom/autonavi/xm/navigation/server/location/GSatellite;->nID:I

    iget-object v5, p0, Lcom/autonavi/xmgd/view/CompassView;->textPaint:Landroid/graphics/Paint;

    const/16 v6, 0xc3

    const/16 v7, 0x64

    const/16 v8, 0xa

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/autonavi/xmgd/view/CompassView;->textPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/autonavi/xmgd/view/CompassView;->textSize:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v5, p0, Lcom/autonavi/xmgd/view/CompassView;->textPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v5, p0, Lcom/autonavi/xmgd/view/CompassView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-float/2addr v4, p1

    div-float/2addr v4, v9

    const/high16 v6, 0x4120

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/autonavi/xmgd/view/CompassView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2, p1, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/autonavi/xmgd/view/CompassView;->mCanvas:Landroid/graphics/Canvas;

    neg-float v3, v3

    invoke-virtual {v2, v3, p1, p1}, Landroid/graphics/Canvas;->rotate(FFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->context:Landroid/content/Context;

    const v1, 0x7f020185

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->loadImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->imgSatellite:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/autonavi/xmgd/view/CompassView;->textSize:I

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/autonavi/xmgd/view/CompassView;->scale:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->orientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->textPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->satePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->orientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->satePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->satePaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->satePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    mul-int/lit8 v1, v1, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/autonavi/xmgd/view/CompassView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/view/CompassView;->drawOrient()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateView([Lcom/autonavi/xm/navigation/server/location/GSatellite;)V
    .locals 3

    iput-object p1, p0, Lcom/autonavi/xmgd/view/CompassView;->it:[Lcom/autonavi/xm/navigation/server/location/GSatellite;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/CompassView;->init()V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/autonavi/xmgd/view/CompassView;->mRadius:I

    int-to-float v0, v0

    const/high16 v1, 0x40e0

    iget v2, p0, Lcom/autonavi/xmgd/view/CompassView;->scale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/view/CompassView;->drawSate(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/CompassView;->invalidate()V

    return-void
.end method
