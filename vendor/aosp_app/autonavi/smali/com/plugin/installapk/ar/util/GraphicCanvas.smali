.class public final Lcom/plugin/installapk/ar/util/GraphicCanvas;
.super Ljava/lang/Object;


# static fields
.field private static final mCorner:I = 0x2

.field private static rect:Landroid/graphics/Rect;

.field private static rectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/plugin/installapk/ar/util/GraphicCanvas;->rect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/plugin/installapk/ar/util/GraphicCanvas;->rectF:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawDashPath(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IIZ)V
    .locals 8

    if-eqz p4, :cond_0

    new-instance v5, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(I)V

    :goto_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    array-length v0, p1

    add-int/lit8 v7, v0, -0x1

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v0, p1, v6

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    int-to-float v1, v0

    aget-object v0, p1, v6

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    int-to-float v2, v0

    add-int/lit8 v0, v6, 0x1

    aget-object v0, p1, v0

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    int-to-float v3, v0

    add-int/lit8 v0, v6, 0x1

    aget-object v0, p1, v0

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    int-to-float v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_0
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0x40t 0x41t
    .end array-data
.end method

.method public static drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IILandroid/graphics/Paint;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    :cond_0
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p0, p1, v0, v1, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public static drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 5

    if-eqz p1, :cond_1

    if-nez p5, :cond_0

    new-instance p5, Landroid/graphics/Paint;

    invoke-direct {p5}, Landroid/graphics/Paint;-><init>()V

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p4, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, p4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p2

    iget v4, p4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1, p4, v0, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public static drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public static drawMapText(Landroid/graphics/Canvas;Ljava/lang/String;IIIILandroid/graphics/Paint;)V
    .locals 2

    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p3, 0x1

    invoke-static {p0, p1, v0, v1, p6}, Lcom/plugin/installapk/ar/util/GraphicCanvas;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    invoke-virtual {p6, p4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p0, p1, p2, p3, p6}, Lcom/plugin/installapk/ar/util/GraphicCanvas;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawName(Landroid/graphics/Canvas;Ljava/lang/String;IIIIIILandroid/graphics/Paint;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    shr-int/lit8 v1, p4, 0x2

    sub-int v1, p2, v1

    add-int/lit8 v2, v1, -0x9

    add-int v3, p3, p4

    if-le v0, p5, :cond_0

    shr-int/lit8 v1, v0, 0x1

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v4

    const/4 v0, 0x0

    aget-object v1, v7, v0

    move-object v0, p0

    move v4, p6

    move v5, p7

    move-object/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcom/plugin/installapk/ar/util/GraphicCanvas;->drawMapText(Landroid/graphics/Canvas;Ljava/lang/String;IIIILandroid/graphics/Paint;)V

    const/4 v0, 0x1

    aget-object v1, v7, v0

    add-int/2addr v3, p4

    move-object v0, p0

    move v4, p6

    move v5, p7

    move-object/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcom/plugin/installapk/ar/util/GraphicCanvas;->drawMapText(Landroid/graphics/Canvas;Ljava/lang/String;IIIILandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    shr-int/lit8 v0, p4, 0x2

    sub-int v0, v3, v0

    add-int/lit8 v3, v0, 0x2

    move-object v0, p0

    move-object v1, p1

    move v4, p6

    move v5, p7

    move-object/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcom/plugin/installapk/ar/util/GraphicCanvas;->drawMapText(Landroid/graphics/Canvas;Ljava/lang/String;IIIILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static drawPath(Landroid/graphics/Canvas;[FIIZ)V
    .locals 2

    if-eqz p4, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    :goto_0
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto :goto_0
.end method

.method public static drawPath(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IIIIIZ)V
    .locals 7

    if-eqz p7, :cond_0

    new-instance v5, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(I)V

    :goto_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v0, p3

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v5, p4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    add-int/lit8 v0, p2, -0x1

    if-ge v6, v0, :cond_1

    aget-object v0, p1, v6

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    add-int/2addr v0, p5

    int-to-float v1, v0

    aget-object v0, p1, v6

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    add-int/2addr v0, p6

    int-to-float v2, v0

    add-int/lit8 v0, v6, 0x1

    aget-object v0, p1, v0

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    add-int/2addr v0, p5

    int-to-float v3, v0

    add-int/lit8 v0, v6, 0x1

    aget-object v0, p1, v0

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    add-int/2addr v0, p6

    int-to-float v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_0
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static drawPath(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IIIIZ)V
    .locals 8

    if-eqz p6, :cond_0

    new-instance v5, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(I)V

    :goto_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->setColor(I)V

    array-length v0, p1

    add-int/lit8 v7, v0, -0x1

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v0, p1, v6

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    add-int/2addr v0, p4

    int-to-float v1, v0

    aget-object v0, p1, v6

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    add-int/2addr v0, p5

    int-to-float v2, v0

    add-int/lit8 v0, v6, 0x1

    aget-object v0, p1, v0

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    add-int/2addr v0, p4

    int-to-float v3, v0

    add-int/lit8 v0, v6, 0x1

    aget-object v0, p1, v0

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    add-int/2addr v0, p5

    int-to-float v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_0
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static drawPath(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;ILandroid/graphics/Paint;)V
    .locals 7

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-ge v6, v0, :cond_0

    aget-object v0, p1, v6

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    int-to-float v1, v0

    aget-object v0, p1, v6

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    int-to-float v2, v0

    add-int/lit8 v0, v6, 0x1

    aget-object v0, p1, v0

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    int-to-float v3, v0

    add-int/lit8 v0, v6, 0x1

    aget-object v0, p1, v0

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static drawPath(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;Landroid/graphics/Paint;)V
    .locals 8

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v0, p1

    add-int/lit8 v7, v0, -0x1

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v0, p1, v6

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    int-to-float v1, v0

    aget-object v0, p1, v6

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    int-to-float v2, v0

    add-int/lit8 v0, v6, 0x1

    aget-object v0, p1, v0

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    int-to-float v3, v0

    add-int/lit8 v0, v6, 0x1

    aget-object v0, p1, v0

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method public static drawPath(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/map/GLineObject;IIZ)V
    .locals 10

    if-eqz p4, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    :goto_0
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    array-length v5, p1

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_1

    aget-object v3, p1, v1

    iget v3, v3, Lcom/autonavi/xm/navigation/server/map/GLineObject;->nCount:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto :goto_0

    :cond_1
    shl-int/lit8 v1, v2, 0x2

    new-array v6, v1, [F

    const/4 v3, 0x0

    const/4 v1, 0x0

    move v4, v1

    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v1, p1, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    int-to-float v1, v1

    aput v1, v6, v3

    add-int/lit8 v1, v3, 0x1

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    int-to-float v2, v2

    aput v2, v6, v1

    add-int/lit8 v1, v3, 0x2

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    const/4 v7, 0x1

    aget-object v2, v2, v7

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    int-to-float v2, v2

    aput v2, v6, v1

    add-int/lit8 v1, v3, 0x3

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    const/4 v7, 0x1

    aget-object v2, v2, v7

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    int-to-float v2, v2

    aput v2, v6, v1

    const/4 v1, 0x2

    add-int/lit8 v3, v3, 0x4

    aget-object v2, p1, v4

    iget v2, v2, Lcom/autonavi/xm/navigation/server/map/GLineObject;->nCount:I

    add-int/lit8 v2, v2, -0x1

    shl-int/lit8 v7, v2, 0x2

    const/4 v2, 0x4

    :goto_3
    if-ge v2, v7, :cond_2

    add-int/lit8 v8, v3, -0x2

    aget v8, v6, v8

    aput v8, v6, v3

    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v9, v9, -0x2

    aget v9, v6, v9

    aput v9, v6, v8

    add-int/lit8 v8, v3, 0x2

    aget-object v9, p1, v4

    iget-object v9, v9, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    int-to-float v9, v9

    aput v9, v6, v8

    add-int/lit8 v8, v3, 0x3

    aget-object v9, p1, v4

    iget-object v9, v9, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    int-to-float v9, v9

    aput v9, v6, v8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v3, 0x4

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v6, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawRect(Landroid/graphics/Canvas;IIIII)V
    .locals 6

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, p5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v0, p1, p3

    int-to-float v3, v0

    add-int v0, p2, p4

    int-to-float v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFII)V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-lez p5, :cond_0

    int-to-float v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    sget-object v1, Lcom/plugin/installapk/ar/util/GraphicCanvas;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    sget-object v1, Lcom/plugin/installapk/ar/util/GraphicCanvas;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v1, p2, p3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawSmoothDashPath(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IIII)V
    .locals 6

    const/4 v0, 0x1

    const/4 v4, 0x0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    aget-object v3, p1, v4

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    add-int/2addr v3, p4

    int-to-float v3, v3

    aget-object v4, p1, v4

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    add-int/2addr v4, p5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    array-length v3, p1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p1, v0

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    add-int/2addr v4, p4

    int-to-float v4, v4

    aget-object v5, p1, v0

    iget v5, v5, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    add-int/2addr v5, p5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x4

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const/high16 v4, 0x3f80

    invoke-direct {v0, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xa0t 0x41t
    .end array-data
.end method

.method public static drawSmoothPath(Landroid/graphics/Canvas;[IIIZ)V
    .locals 6

    const/4 v4, 0x1

    if-eqz p4, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    :goto_0
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v3, 0x4000

    invoke-direct {v1, v3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v3, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    array-length v3, p1

    const/4 v1, 0x0

    aget v1, p1, v1

    int-to-float v1, v1

    aget v4, p1, v4

    int-to-float v4, v4

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x2

    :goto_1
    if-ge v1, v3, :cond_1

    aget v4, p1, v1

    int-to-float v4, v4

    add-int/lit8 v5, v1, 0x1

    aget v5, p1, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static drawSmoothPath(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IIIIZ)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p6, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    :goto_1
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v3, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    array-length v3, p1

    aget-object v4, p1, v5

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    add-int/2addr v4, p4

    int-to-float v4, v4

    aget-object v5, p1, v5

    iget v5, v5, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    add-int/2addr v5, p5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, p1, v1

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    add-int/2addr v4, p4

    int-to-float v4, v4

    aget-object v5, p1, v1

    iget v5, v5, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    add-int/2addr v5, p5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static drawSmoothPath(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IIIIZI)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p6, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    :goto_1
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v3, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    array-length v3, p1

    aget-object v4, p1, v5

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    add-int/2addr v4, p4

    int-to-float v4, v4

    aget-object v5, p1, v5

    iget v5, v5, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    add-int/2addr v5, p5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, p1, v1

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    add-int/2addr v4, p4

    int-to-float v4, v4

    aget-object v5, p1, v1

    iget v5, v5, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    add-int/2addr v5, p5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static drawSmoothPath(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IIZ)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/plugin/installapk/ar/util/GraphicCanvas;->drawSmoothPath(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IIIIZ)V

    return-void
.end method

.method public static drawSmoothRailway(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IIIII)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v6}, Lcom/plugin/installapk/ar/util/GraphicCanvas;->drawSmoothPath(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IIIIZ)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/plugin/installapk/ar/util/GraphicCanvas;->drawSmoothDashPath(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IIII)V

    return-void
.end method

.method public static drawText(Landroid/graphics/Canvas;Ljava/lang/String;IIIIIZ)V
    .locals 3

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eqz p7, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    :goto_0
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    if-nez p6, :cond_2

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_1
    int-to-float v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    int-to-float v1, p2

    shr-int/lit8 v2, p5, 0x1

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto :goto_0

    :cond_2
    if-ne p6, v1, :cond_3

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    :cond_3
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1
.end method

.method public static drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p4, v0}, Landroid/graphics/Paint;-><init>(I)V

    const v0, -0xff0100

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v0, 0x4180

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public static fillPolygon(Landroid/graphics/Canvas;[IIZ)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    aget v0, p1, v6

    int-to-float v0, v0

    aget v2, p1, v5

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    array-length v2, p1

    const/4 v0, 0x2

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    int-to-float v3, v3

    add-int/lit8 v4, v0, 0x1

    aget v4, p1, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    aget v0, p1, v6

    int-to-float v0, v0

    aget v2, p1, v5

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    if-eqz p3, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    :goto_1
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto :goto_1
.end method

.method public static fillPolygon(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IIIZ)V
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    aget-object v0, p1, v6

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    add-int/2addr v0, p3

    int-to-float v0, v0

    aget-object v3, p1, v6

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    add-int/2addr v3, p4

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p1, v0

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    add-int/2addr v4, p3

    int-to-float v4, v4

    aget-object v5, p1, v0

    iget v5, v5, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    add-int/2addr v5, p4

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object v0, p1, v6

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    int-to-float v0, v0

    aget-object v3, p1, v6

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    if-eqz p5, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    :goto_1
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto :goto_1
.end method

.method public static fillPolygon(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IILandroid/graphics/Paint;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    aget-object v0, p1, v5

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    add-int/2addr v0, p2

    int-to-float v0, v0

    aget-object v2, p1, v5

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    array-length v2, p1

    const/4 v0, 0x1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    add-int/2addr v3, p2

    int-to-float v3, v3

    aget-object v4, p1, v0

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    add-int/2addr v4, p3

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aget-object v0, p1, v5

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    add-int/2addr v0, p2

    int-to-float v0, v0

    aget-object v2, p1, v5

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0, v1, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static fillPolygon(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IZ)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/plugin/installapk/ar/util/GraphicCanvas;->fillPolygon(Landroid/graphics/Canvas;[Lcom/autonavi/xm/navigation/server/GCoord;IIIZ)V

    return-void
.end method

.method public static fillRect(Landroid/graphics/Canvas;IIIII)V
    .locals 6

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, p5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v0, p1, p3

    int-to-float v3, v0

    add-int v0, p2, p4

    int-to-float v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static fillRect(Landroid/graphics/Canvas;IIIIII)V
    .locals 6

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, p5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v5, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v0, p1, p3

    int-to-float v3, v0

    add-int v0, p2, p4

    int-to-float v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static fillRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFI)V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Lcom/plugin/installapk/ar/util/GraphicCanvas;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    sget-object v1, Lcom/plugin/installapk/ar/util/GraphicCanvas;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v1, p2, p3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
