.class public Lcom/autonavi/xmgd/view/PoiLayerObject;
.super Ljava/lang/Object;


# instance fields
.field private geoCoord:[Lcom/autonavi/xm/navigation/server/GCoord;

.field private mPoiLayerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/PoiLayerObject;->mPoiLayerList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/GCoord;

    iput-object v0, p0, Lcom/autonavi/xmgd/view/PoiLayerObject;->geoCoord:[Lcom/autonavi/xm/navigation/server/GCoord;

    return-void
.end method


# virtual methods
.method public addPoiLayer(Ljava/util/ArrayList;[ILandroid/graphics/Rect;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;[I",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    array-length v0, p2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v2, v0, 0x1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget v4, p2, v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    invoke-virtual {p0, p1, v0, p3}, Lcom/autonavi/xmgd/view/PoiLayerObject;->addPoiLayer(Ljava/util/ArrayList;[Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public addPoiLayer(Ljava/util/ArrayList;[Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;[",
            "Ljava/lang/Object;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/view/PoiLayerObject;->mPoiLayerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;

    iget-object v0, v0, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;->pois:Ljava/util/ArrayList;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;->make(Ljava/util/ArrayList;[Ljava/lang/Object;Landroid/graphics/Rect;)Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/view/PoiLayerObject;->mPoiLayerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/autonavi/xmgd/utility/GBitmapCache;->getInstance()Lcom/autonavi/xmgd/utility/GBitmapCache;

    move-result-object v1

    iget-object v2, v0, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;->poiType:[I

    iget-object v0, v0, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;->poiBmp:[Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xmgd/utility/GBitmapCache;->addBitmap([I[Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xmgd/view/PoiLayerObject;->mPoiLayerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xmgd/view/PoiLayerObject;->mPoiLayerList:Ljava/util/ArrayList;

    sub-int v2, v5, v4

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;

    iget-object v6, v1, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;->pois:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;->poiType:[I

    iget-object v8, v1, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;->poiBmp:[Landroid/graphics/Bitmap;

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v9, :cond_4

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/xmgd/view/PoiLayerObject;->geoCoord:[Lcom/autonavi/xm/navigation/server/GCoord;

    const/4 v11, 0x0

    iget-object v12, v1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    aput-object v12, v2, v11

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v11

    sget-object v12, Lcom/autonavi/xm/navigation/server/GCoordConvert;->GCC_GEO_TO_SCR:Lcom/autonavi/xm/navigation/server/GCoordConvert;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/autonavi/xmgd/view/PoiLayerObject;->geoCoord:[Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {v11, v12, v2, v13}, Lcom/autonavi/xmgd/naviservice/j;->a(Lcom/autonavi/xm/navigation/server/GCoordConvert;[Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v11, 0x0

    aget-object v11, v2, v11

    if-nez v11, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    aget-object v11, v2, v11

    iget v11, v11, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    const/4 v12, 0x0

    aget-object v2, v2, v12

    iget v12, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    if-lez v11, :cond_0

    if-lez v12, :cond_0

    array-length v13, v7

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v13, :cond_0

    array-length v14, v7

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    aget v14, v7, v2

    iget v15, v1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lCategoryID:I

    if-ne v14, v15, :cond_3

    :cond_2
    shr-int/lit8 v1, v2, 0x1

    aget-object v2, v8, v1

    if-eqz v2, :cond_0

    aget-object v2, v8, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int v2, v11, v2

    aget-object v11, v8, v1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    shr-int/lit8 v11, v11, 0x1

    sub-int v11, v12, v11

    aget-object v1, v8, v1

    int-to-float v2, v2

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v11, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public getElementsToShow()[Lcom/autonavi/xm/navigation/server/map/GCustomElement;
    .locals 14

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/PoiLayerObject;->mPoiLayerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/view/PoiLayerObject;->mPoiLayerList:Ljava/util/ArrayList;

    sub-int v1, v5, v3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;

    iget-object v6, v0, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;->pois:Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;->poiType:[I

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v8, :cond_3

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget-object v1, p0, Lcom/autonavi/xmgd/view/PoiLayerObject;->geoCoord:[Lcom/autonavi/xm/navigation/server/GCoord;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    aput-object v10, v1, v9

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v9

    sget-object v10, Lcom/autonavi/xm/navigation/server/GCoordConvert;->GCC_GEO_TO_SCR:Lcom/autonavi/xm/navigation/server/GCoordConvert;

    iget-object v11, p0, Lcom/autonavi/xmgd/view/PoiLayerObject;->geoCoord:[Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {v9, v10, v1, v11}, Lcom/autonavi/xmgd/naviservice/j;->a(Lcom/autonavi/xm/navigation/server/GCoordConvert;[Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v9, 0x0

    aget-object v9, v1, v9

    if-nez v9, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    aget-object v9, v1, v9

    iget v9, v9, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    const/4 v10, 0x0

    aget-object v1, v1, v10

    iget v10, v1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    if-lez v9, :cond_0

    if-lez v10, :cond_0

    array-length v11, v7

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v11, :cond_0

    aget v12, v7, v1

    iget v13, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lCategoryID:I

    if-ne v12, v13, :cond_2

    invoke-static {}, Lcom/autonavi/xmgd/utility/GBitmapCache;->getInstance()Lcom/autonavi/xmgd/utility/GBitmapCache;

    move-result-object v0

    aget v1, v7, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/GBitmapCache;->getGBitmap(I)Lcom/autonavi/xm/navigation/server/map/GBitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/autonavi/xm/navigation/server/map/GBitmap;

    const/4 v11, 0x0

    aput-object v0, v1, v11

    iget v0, v0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cxWidth:I

    shr-int/lit8 v0, v0, 0x1

    new-instance v11, Lcom/autonavi/xm/navigation/server/map/GCustomElement;

    add-int/2addr v0, v9

    invoke-direct {v11, v1, v0, v10}, Lcom/autonavi/xm/navigation/server/map/GCustomElement;-><init>([Lcom/autonavi/xm/navigation/server/map/GBitmap;II)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GCustomElement;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, v0, [Lcom/autonavi/xm/navigation/server/map/GCustomElement;

    if-eqz v2, :cond_5

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GCustomElement;

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GCustomElement;

    :goto_4
    return-object v0

    :cond_5
    move-object v0, v1

    goto :goto_4
.end method

.method public getTouchPoi(II)Lcom/autonavi/xm/navigation/server/poi/GPoi;
    .locals 12

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/PoiLayerObject;->mPoiLayerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/view/PoiLayerObject;->mPoiLayerList:Ljava/util/ArrayList;

    sub-int v1, v4, v3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;

    iget-object v5, v0, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;->pois:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;->click:Landroid/graphics/Rect;

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v1, v2

    :goto_1
    if-ge v1, v7, :cond_2

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget-object v8, p0, Lcom/autonavi/xmgd/view/PoiLayerObject;->geoCoord:[Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v9, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    aput-object v9, v8, v2

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v9

    sget-object v10, Lcom/autonavi/xm/navigation/server/GCoordConvert;->GCC_GEO_TO_SCR:Lcom/autonavi/xm/navigation/server/GCoordConvert;

    iget-object v11, p0, Lcom/autonavi/xmgd/view/PoiLayerObject;->geoCoord:[Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {v9, v10, v8, v11}, Lcom/autonavi/xmgd/naviservice/j;->a(Lcom/autonavi/xm/navigation/server/GCoordConvert;[Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v9, v8, v2

    if-nez v9, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    aget-object v9, v8, v2

    iget v9, v9, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    aget-object v8, v8, v2

    iget v8, v8, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    if-lez v9, :cond_0

    if-lez v8, :cond_0

    sub-int/2addr v9, p1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v6, :cond_0

    sub-int/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v8, v6, :cond_0

    :goto_2
    return-object v0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public removeAllPoiLayer()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/PoiLayerObject;->mPoiLayerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removePoiLayer(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/view/PoiLayerObject;->mPoiLayerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;

    iget-object v2, v0, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;->pois:Ljava/util/ArrayList;

    if-ne v2, p1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/view/PoiLayerObject;->mPoiLayerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
