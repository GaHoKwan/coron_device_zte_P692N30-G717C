.class Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;
.super Ljava/lang/Object;


# instance fields
.field click:Landroid/graphics/Rect;

.field poiBmp:[Landroid/graphics/Bitmap;

.field poiType:[I

.field pois:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static make(Ljava/util/ArrayList;[Ljava/lang/Object;Landroid/graphics/Rect;)Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;[",
            "Ljava/lang/Object;",
            "Landroid/graphics/Rect;",
            ")",
            "Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v4, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;

    invoke-direct {v4}, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;-><init>()V

    iput-object p0, v4, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;->pois:Ljava/util/ArrayList;

    iput-object p2, v4, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;->click:Landroid/graphics/Rect;

    if-eqz p1, :cond_2

    array-length v0, p1

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, v4, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;->poiType:[I

    move v1, v2

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_0

    iget-object v5, v4, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;->poiType:[I

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v1

    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v0, p1

    if-ne v0, v3, :cond_1

    move v0, v3

    :goto_1
    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, v4, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;->poiBmp:[Landroid/graphics/Bitmap;

    move v3, v2

    :goto_2
    array-length v0, p1

    if-ge v3, v0, :cond_2

    iget-object v5, v4, Lcom/autonavi/xmgd/view/PoiLayerObject$PoiLayerData;->poiBmp:[Landroid/graphics/Bitmap;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v0, v3, 0x1

    aget-object v0, p1, v0

    check-cast v0, Landroid/graphics/Bitmap;

    aput-object v0, v5, v2

    add-int/lit8 v2, v3, 0x2

    move v3, v2

    move v2, v1

    goto :goto_2

    :cond_1
    array-length v0, p1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v4
.end method
