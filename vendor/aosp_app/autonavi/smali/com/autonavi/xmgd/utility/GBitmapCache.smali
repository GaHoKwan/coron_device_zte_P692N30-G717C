.class public Lcom/autonavi/xmgd/utility/GBitmapCache;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/autonavi/xmgd/utility/GBitmapCache;


# instance fields
.field private mCacheData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/utility/GBitmapCache$CacheData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/utility/GBitmapCache;->instance:Lcom/autonavi/xmgd/utility/GBitmapCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/GBitmapCache;->mCacheData:Ljava/util/ArrayList;

    return-void
.end method

.method private bitmap2GBitmap(ILandroid/graphics/Bitmap;)Lcom/autonavi/xm/navigation/server/map/GBitmap;
    .locals 17

    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int v1, v4, v8

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int v1, v4, v8

    new-array v10, v1, [I

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v12, v4

    move v15, v4

    move/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int v3, v4, v8

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v1, v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    mul-int/2addr v1, v4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    new-array v10, v3, [B

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget v4, v2, v1

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x5

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/autonavi/xm/navigation/server/map/GBitmap;

    const v2, 0x3a000001

    add-int v2, v2, p1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    const/16 v7, 0x10

    sget-object v8, Lcom/autonavi/xm/navigation/server/map/GColorFormat;->COLOR_FORMAT_RGB565:Lcom/autonavi/xm/navigation/server/map/GColorFormat;

    invoke-virtual {v8}, Lcom/autonavi/xm/navigation/server/map/GColorFormat;->ordinal()I

    move-result v8

    move-object v9, v11

    invoke-direct/range {v1 .. v10}, Lcom/autonavi/xm/navigation/server/map/GBitmap;-><init>(IIIIIII[B[B)V

    goto/16 :goto_0
.end method

.method public static destroy()V
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/utility/GBitmapCache;->instance:Lcom/autonavi/xmgd/utility/GBitmapCache;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/utility/GBitmapCache;->instance:Lcom/autonavi/xmgd/utility/GBitmapCache;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/autonavi/xmgd/utility/GBitmapCache;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/utility/GBitmapCache;->instance:Lcom/autonavi/xmgd/utility/GBitmapCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/utility/GBitmapCache;

    invoke-direct {v0}, Lcom/autonavi/xmgd/utility/GBitmapCache;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/utility/GBitmapCache;->instance:Lcom/autonavi/xmgd/utility/GBitmapCache;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/utility/GBitmapCache;->instance:Lcom/autonavi/xmgd/utility/GBitmapCache;

    return-object v0
.end method

.method private isExist(Lcom/autonavi/xmgd/utility/GBitmapCache$CacheData;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/GBitmapCache;->mCacheData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/GBitmapCache;->mCacheData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/GBitmapCache;->mCacheData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/GBitmapCache;->mCacheData:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/utility/GBitmapCache$CacheData;

    iget v0, v0, Lcom/autonavi/xmgd/utility/GBitmapCache$CacheData;->mType:I

    iget v4, p1, Lcom/autonavi/xmgd/utility/GBitmapCache$CacheData;->mType:I

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addBitmap(ILandroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/GBitmapCache;->mCacheData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/GBitmapCache;->mCacheData:Ljava/util/ArrayList;

    :cond_0
    new-instance v0, Lcom/autonavi/xmgd/utility/GBitmapCache$CacheData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/utility/GBitmapCache$CacheData;-><init>(Lcom/autonavi/xmgd/utility/GBitmapCache;Lcom/autonavi/xmgd/utility/GBitmapCache$1;)V

    iput p1, v0, Lcom/autonavi/xmgd/utility/GBitmapCache$CacheData;->mType:I

    iput-object p2, v0, Lcom/autonavi/xmgd/utility/GBitmapCache$CacheData;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xmgd/utility/GBitmapCache;->bitmap2GBitmap(ILandroid/graphics/Bitmap;)Lcom/autonavi/xm/navigation/server/map/GBitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/utility/GBitmapCache$CacheData;->mGBitmap:Lcom/autonavi/xm/navigation/server/map/GBitmap;

    :cond_1
    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/utility/GBitmapCache;->isExist(Lcom/autonavi/xmgd/utility/GBitmapCache$CacheData;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/GBitmapCache;->mCacheData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public addBitmap([I[Landroid/graphics/Bitmap;)V
    .locals 4

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/xmgd/utility/GBitmapCache;->addBitmap(ILandroid/graphics/Bitmap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getGBitmap(I)Lcom/autonavi/xm/navigation/server/map/GBitmap;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/GBitmapCache;->mCacheData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/GBitmapCache;->mCacheData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/GBitmapCache;->mCacheData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/GBitmapCache;->mCacheData:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/utility/GBitmapCache$CacheData;

    iget v0, v0, Lcom/autonavi/xmgd/utility/GBitmapCache$CacheData;->mType:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/GBitmapCache;->mCacheData:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/utility/GBitmapCache$CacheData;

    iget-object v0, v0, Lcom/autonavi/xmgd/utility/GBitmapCache$CacheData;->mGBitmap:Lcom/autonavi/xm/navigation/server/map/GBitmap;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
