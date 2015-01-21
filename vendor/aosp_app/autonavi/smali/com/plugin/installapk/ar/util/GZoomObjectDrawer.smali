.class public Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final COLOR_ARROW_MAIN:I = 0x0

.field private static final COLOR_ARROW_SIDE:I = -0x1000000

.field private static final COLOR_BACKGROUND:I = -0x777778

#the value of this static final field might be set in the static constructor
.field private static final COLOR_ROAD_MAIN:I = 0x0

.field private static final COLOR_ROAD_MID:I = -0x1

.field private static final COLOR_ROAD_NAME_MAIN:I = -0x1

.field private static final COLOR_ROAD_NAME_SIDE:I = -0x1000000

#the value of this static final field might be set in the static constructor
.field private static final COLOR_ROAD_SIDE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final COLOR_ROUTE_LINE:I = 0x0

.field private static final COLOR_ROUTE_PASSED:I = -0x777778

#the value of this static final field might be set in the static constructor
.field private static final COLOR_ROUTE_SIDE:I = 0x0

.field private static final DEFAULT_ALPHA:I = 0xc0

.field private static final RADIAN:D = 0.017444444444444446

.field private static final TEXT_SIZE_ROAD_NAME:I = 0x1e

.field private static final WIDTH_ARROW:I = 0x14

.field private static final WIDTH_ROAD_MAIN:I = 0x16

.field private static final WIDTH_ROAD_MID:I = 0x2

.field private static final WIDTH_ROAD_SIDE:I = 0x19

.field private static final WIDTH_ROUTE:I = 0x14


# instance fields
.field private mHeight:I

.field private mWidth:I

.field private mZoomCanvas:Landroid/graphics/Canvas;

.field private mZoomPaper:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xf8

    const/16 v3, 0xd8

    const/4 v2, 0x0

    const/16 v1, 0x78

    const/16 v0, 0x28

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->COLOR_ROAD_SIDE:I

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->COLOR_ROAD_MAIN:I

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->COLOR_ROUTE_SIDE:I

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->COLOR_ROUTE_LINE:I

    const/16 v0, 0xf7

    const/16 v1, 0xdb

    const/16 v2, 0x48

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->COLOR_ARROW_MAIN:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mWidth:I

    iput v0, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mHeight:I

    invoke-direct {p0, p1, p2}, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->createZoomGraphics(II)V

    return-void
.end method

.method private createZoomGraphics(II)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mZoomPaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mZoomCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mZoomPaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput p1, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mWidth:I

    iput p2, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mHeight:I

    iget v0, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mWidth:I

    iget v1, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mZoomPaper:Landroid/graphics/Bitmap;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mZoomPaper:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mZoomPaper:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mZoomCanvas:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private drawArrow([Lcom/autonavi/xm/navigation/server/map/GLineObject;Lcom/autonavi/xm/navigation/server/GCoord;IIIIILandroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    move-object/from16 v0, p9

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    move-object/from16 v0, p9

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    array-length v2, v1

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v2, :cond_0

    const/4 v4, 0x0

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    move-object/from16 v0, p9

    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    aget-object v5, p1, v5

    iget-object v5, v5, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    move-object/from16 v0, p9

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v4, p1

    const/4 v1, 0x1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v1, p1, v2

    iget-object v5, v1, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    array-length v6, v5

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_1

    aget-object v7, v5, v1

    iget v8, v7, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    move-object/from16 v0, p9

    iget v9, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v7, v7, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    move-object/from16 v0, p9

    iget v9, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v9

    int-to-float v7, v7

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    add-int v2, p5, p7

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, p5

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v1, p2, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    if-gtz v1, :cond_3

    iget v1, p2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    if-lez v1, :cond_4

    :cond_3
    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p7

    move/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->drawHeadTriangle(Lcom/autonavi/xm/navigation/server/GCoord;IIIIILandroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_4
    return-void
.end method

.method private drawHeadTriangle(Lcom/autonavi/xm/navigation/server/GCoord;IIIIILandroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    int-to-float v1, p4

    const v2, 0x400ccccd

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p4

    const v3, 0x3fa66666

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p8

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p8

    iget v4, v0, Landroid/graphics/Rect;->top:I

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Canvas;->save()I

    iget v7, p1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    int-to-float v7, v7

    iget v8, p1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    int-to-float v8, v8

    move-object/from16 v0, p7

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v7, p2

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    rsub-int/lit8 v7, p5, 0x0

    add-int/2addr v7, v3

    int-to-float v7, v7

    add-int/lit8 v8, v4, 0x0

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    rsub-int/lit8 v7, p5, 0x0

    add-int/2addr v7, v3

    int-to-float v7, v7

    add-int v8, v2, p5

    add-int/2addr v8, v4

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    add-int v7, v1, p5

    add-int/2addr v7, v3

    int-to-float v7, v7

    add-int/lit8 v8, v4, 0x0

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    rsub-int/lit8 v7, p5, 0x0

    add-int/2addr v7, v3

    int-to-float v7, v7

    neg-int v8, v2

    sub-int/2addr v8, p5

    add-int/2addr v8, v4

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    rsub-int/lit8 v7, p5, 0x0

    add-int/2addr v7, v3

    int-to-float v7, v7

    add-int/lit8 v8, v4, 0x0

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, p6}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p7

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    add-int/lit8 v7, v3, 0x0

    int-to-float v7, v7

    add-int/lit8 v8, v4, 0x0

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    add-int/lit8 v7, v3, 0x0

    int-to-float v7, v7

    add-int v8, v2, v4

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/2addr v1, v3

    int-to-float v1, v1

    add-int/lit8 v7, v4, 0x0

    int-to-float v7, v7

    invoke-virtual {v5, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v3, 0x0

    int-to-float v1, v1

    neg-int v2, v2

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v3, 0x0

    int-to-float v1, v1

    add-int/lit8 v2, v4, 0x0

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p7

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    mul-int/lit8 v1, p5, 0x2

    int-to-float v1, v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v2, -0x4080

    neg-int v1, p4

    shr-int/lit8 v1, v1, 0x1

    int-to-float v3, v1

    const/high16 v4, -0x4080

    shr-int/lit8 v1, p4, 0x1

    int-to-float v5, v1

    move-object/from16 v1, p7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawRouteLine(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/map/GLineObject;IZLandroid/graphics/Rect;)V
    .locals 14

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v1, v0

    if-gtz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x8

    new-array v6, v1, [I

    const/16 v1, 0x8

    new-array v5, v1, [I

    sget v2, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->COLOR_ROUTE_SIDE:I

    sget v3, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->COLOR_ROUTE_LINE:I

    if-eqz p2, :cond_0

    const/16 v4, 0x14

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->getRouteCr(III[I[I)I

    move-result v3

    const/4 v1, 0x1

    new-array v4, v1, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_4

    const/4 v1, 0x0

    :goto_1
    move/from16 v0, p3

    if-ge v1, v0, :cond_3

    aget-object v7, p2, v1

    iget-byte v7, v7, Lcom/autonavi/xm/navigation/server/map/GLineObject;->cTypeDt:B

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    aget-object v8, p2, v1

    iget-object v8, v8, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    array-length v8, v8

    aput v8, v4, v7

    const/high16 v7, -0x100

    aget v8, v5, v2

    or-int v10, v7, v8

    aget-object v7, p2, v1

    iget-object v8, v7, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    aget v7, v6, v2

    add-int/lit8 v9, v7, 0x2

    move-object/from16 v0, p5

    iget v11, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iget v12, v0, Landroid/graphics/Rect;->top:I

    const/4 v13, 0x1

    move-object v7, p1

    invoke-static/range {v7 .. v13}, Lcom/plugin/installapk/ar/util/GraphicCanvas;->drawSmoothPath(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IIIIZ)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_2
    move/from16 v0, p3

    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    iget-byte v2, v2, Lcom/autonavi/xm/navigation/server/map/GLineObject;->cTypeDt:B

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_5

    aget-object v2, p2, v1

    iget-object v8, v2, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    const/4 v2, 0x0

    aget v2, v6, v2

    add-int/lit8 v9, v2, 0x2

    const v10, -0x777778

    move-object/from16 v0, p5

    iget v11, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iget v12, v0, Landroid/graphics/Rect;->top:I

    const/4 v13, 0x1

    move-object v7, p1

    invoke-static/range {v7 .. v13}, Lcom/plugin/installapk/ar/util/GraphicCanvas;->drawSmoothPath(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IIIIZ)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private drawTurnArrow([Lcom/autonavi/xm/navigation/server/map/GLineObject;Lcom/autonavi/xm/navigation/server/GCoord;ILandroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10

    const/high16 v4, 0x6600

    const/16 v5, 0x18

    const/4 v7, 0x2

    const/high16 v1, 0x4040

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p4, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, v4

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->drawArrow([Lcom/autonavi/xm/navigation/server/map/GLineObject;Lcom/autonavi/xm/navigation/server/GCoord;IIIIILandroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {p4}, Landroid/graphics/Canvas;->restore()V

    sget v4, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->COLOR_ARROW_MAIN:I

    const/high16 v6, -0x100

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->drawArrow([Lcom/autonavi/xm/navigation/server/map/GLineObject;Lcom/autonavi/xm/navigation/server/GCoord;IIIIILandroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private drawVectorZoomRoad(Landroid/graphics/Canvas;Lcom/autonavi/xm/navigation/server/map/GZoomObject;Landroid/graphics/Rect;)V
    .locals 10

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    const v5, -0x777778

    const/16 v6, 0xc0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/plugin/installapk/ar/util/GraphicCanvas;->fillRect(Landroid/graphics/Canvas;IIIIII)V

    new-instance v9, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v0, 0x41c8

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget v0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->COLOR_ROAD_SIDE:I

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    iget v0, p2, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->lLineNum:I

    if-ge v8, v0, :cond_0

    iget-object v0, p2, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->pLine:[Lcom/autonavi/xm/navigation/server/map/GLineObject;

    aget-object v0, v0, v8

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    const/16 v2, 0x19

    sget v3, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->COLOR_ROAD_SIDE:I

    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget v5, p3, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    const/16 v7, 0xc0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/plugin/installapk/ar/util/GraphicCanvas;->drawSmoothPath(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IIIIZI)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41b0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget v0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->COLOR_ROAD_MAIN:I

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    move v8, v0

    :goto_1
    iget v0, p2, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->lLineNum:I

    if-ge v8, v0, :cond_1

    iget-object v0, p2, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->pLine:[Lcom/autonavi/xm/navigation/server/map/GLineObject;

    aget-object v0, v0, v8

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    const/16 v2, 0x16

    sget v3, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->COLOR_ROAD_MAIN:I

    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget v5, p3, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    const/16 v7, 0xc0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/plugin/installapk/ar/util/GraphicCanvas;->drawSmoothPath(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IIIIZI)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_1
    const/high16 v0, 0x4000

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, -0x1

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    :goto_2
    iget v1, p2, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->lLineNum:I

    if-ge v0, v1, :cond_2

    iget-object v1, p2, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->pLine:[Lcom/autonavi/xm/navigation/server/map/GLineObject;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {p1, v1, v2, v3, v4}, Lcom/plugin/installapk/ar/util/GraphicCanvas;->drawDashPath(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v0, 0x41f0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p2, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->Path:Lcom/autonavi/xm/navigation/server/map/GPathObject;

    invoke-virtual {p0, p1, v0, p3}, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->drawPath(Landroid/graphics/Canvas;Lcom/autonavi/xm/navigation/server/map/GPathObject;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    move v7, v0

    :goto_3
    iget v0, p2, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->lPointNum:I

    if-ge v7, v0, :cond_3

    iget-object v0, p2, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->pPoint:[Lcom/autonavi/xm/navigation/server/map/GPointObject;

    aget-object v0, v0, v7

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/map/GPointObject;->szName:Ljava/lang/String;

    iget-object v0, p2, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->pPoint:[Lcom/autonavi/xm/navigation/server/map/GPointObject;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GPointObject;->ptName:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget-object v0, p2, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->pPoint:[Lcom/autonavi/xm/navigation/server/map/GPointObject;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GPointObject;->ptName:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    const/4 v4, -0x1

    const/high16 v5, -0x100

    move-object v0, p1

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Lcom/plugin/installapk/ar/util/GraphicCanvas;->drawMapText(Landroid/graphics/Canvas;Ljava/lang/String;IIIILandroid/graphics/Paint;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    :cond_3
    iget v0, p2, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->nCarAngle:I

    return-void
.end method

.method private getRouteCr(III[I[I)I
    .locals 12

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/high16 v2, 0xff

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x10

    const v3, 0xff00

    and-int/2addr v3, p1

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v4, p1, 0xff

    const/high16 v5, 0xff

    and-int/2addr v5, p2

    shr-int/lit8 v5, v5, 0x10

    const v6, 0xff00

    and-int/2addr v6, p2

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v7, p2, 0xff

    aget-byte v8, v0, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_0

    add-int/lit8 v9, v8, -0x1

    sub-int/2addr v9, v0

    div-int v10, p3, v8

    mul-int/2addr v10, v0

    add-int/lit8 v10, v10, 0x1

    aput v10, p5, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_1

    sub-int v9, v7, v4

    aget-byte v10, v1, v8

    mul-int/2addr v9, v10

    mul-int/2addr v9, v0

    shr-int/lit8 v9, v9, 0x8

    add-int/2addr v9, v4

    sub-int v10, v6, v3

    aget-byte v11, v1, v8

    mul-int/2addr v10, v11

    mul-int/2addr v10, v0

    shr-int/lit8 v10, v10, 0x8

    add-int/2addr v10, v3

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    sub-int v10, v5, v2

    aget-byte v11, v1, v8

    mul-int/2addr v10, v11

    mul-int/2addr v10, v0

    shr-int/lit8 v10, v10, 0x8

    add-int/2addr v10, v2

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    aput v9, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return v8

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x8t
    .end array-data

    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x40t
        0x50t
        0x3ft
        0x28t
        0x22t
        0x20t
    .end array-data
.end method


# virtual methods
.method public drawPath(Landroid/graphics/Canvas;Lcom/autonavi/xm/navigation/server/map/GPathObject;Landroid/graphics/Rect;)V
    .locals 6

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p2, Lcom/autonavi/xm/navigation/server/map/GPathObject;->pLine:[Lcom/autonavi/xm/navigation/server/map/GLineObject;

    iget v3, p2, Lcom/autonavi/xm/navigation/server/map/GPathObject;->lLineNum:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->drawRouteLine(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/map/GLineObject;IZLandroid/graphics/Rect;)V

    iget-object v0, p2, Lcom/autonavi/xm/navigation/server/map/GPathObject;->pArrowTail:[Lcom/autonavi/xm/navigation/server/map/GLineObject;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/autonavi/xm/navigation/server/map/GPathObject;->pArrowTail:[Lcom/autonavi/xm/navigation/server/map/GLineObject;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v1, p2, Lcom/autonavi/xm/navigation/server/map/GPathObject;->pArrowTail:[Lcom/autonavi/xm/navigation/server/map/GLineObject;

    iget-object v2, p2, Lcom/autonavi/xm/navigation/server/map/GPathObject;->ptArrow:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, p2, Lcom/autonavi/xm/navigation/server/map/GPathObject;->nAngle:I

    move-object v0, p0

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->drawTurnArrow([Lcom/autonavi/xm/navigation/server/map/GLineObject;Lcom/autonavi/xm/navigation/server/GCoord;ILandroid/graphics/Canvas;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getZoomViewBitmap(Lcom/autonavi/xm/navigation/server/map/GZoomObject;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mZoomPaper:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mZoomPaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mZoomPaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->setTransparentAreaForBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mZoomCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mWidth:I

    iget v3, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mHeight:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0, p1, v1}, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->drawVectorZoomRoad(Landroid/graphics/Canvas;Lcom/autonavi/xm/navigation/server/map/GZoomObject;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/util/GZoomObjectDrawer;->mZoomPaper:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setTransparentAreaForBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_0
    mul-int v0, p2, p3

    new-array v1, v0, [I

    move v3, v2

    :goto_1
    if-ge v3, p3, :cond_2

    move v0, v2

    :goto_2
    if-ge v0, p2, :cond_1

    mul-int v4, v3, p2

    add-int/2addr v4, v0

    aput v2, v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move-object v0, p1

    move v3, p2

    move v4, p4

    move v5, p5

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0
.end method
