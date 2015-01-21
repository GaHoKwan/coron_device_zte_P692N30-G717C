.class public Lcom/mediatek/gallery3d/pq/TileImageDecoder;
.super Lcom/mediatek/gallery3d/pq/ImageDecoder;
.source "TileImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/pq/TileImageDecoder$RegionDecoder;
    }
.end annotation


# static fields
.field static final SCALE_LIMIT:I = 0x4


# instance fields
.field TAG:Ljava/lang/String;

.field private final TILE_BORDER:I

.field TILE_SIZE:I

.field decoder:Landroid/graphics/BitmapRegionDecoder;

.field endLevel:I

.field fromLevel:I

.field mDesRect:Landroid/graphics/Rect;

.field mHandler:Landroid/os/Handler;

.field mLevel:I

.field mscreenNailDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIILandroid/os/Handler;III)V
    .locals 9
    .parameter "context"
    .parameter "mPqUri"
    .parameter "width"
    .parameter "height"
    .parameter "targetSize"
    .parameter "mHandler"
    .parameter "viewWidth"
    .parameter "viewHeight"
    .parameter "level"

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/gallery3d/pq/ImageDecoder;-><init>(Landroid/content/Context;Ljava/lang/String;IIIIII)V

    .line 26
    const-string v0, "Gallery2/TileImageDecoder"

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->mscreenNailDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->mDesRect:Landroid/graphics/Rect;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->mHandler:Landroid/os/Handler;

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->TILE_BORDER:I

    .line 39
    iput-object p6, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->mHandler:Landroid/os/Handler;

    .line 40
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->isHighResolution(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/16 v0, 0x1ff

    iput v0, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->TILE_SIZE:I

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " TILE_SIZE===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->TILE_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 43
    :cond_0
    const/16 v0, 0xff

    iput v0, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->TILE_SIZE:I

    goto :goto_0
.end method

.method private decodeTileImage(FI)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "scale"
    .parameter "sample"

    .prologue
    const/4 v9, 0x0

    .line 90
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v7

    .line 91
    .local v7, imagewidth:I
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v6

    .line 92
    .local v6, imageheight:I
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scale==="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    int-to-float v0, v7

    mul-float/2addr v0, p1

    float-to-int v7, v0

    .line 94
    int-to-float v0, v6

    mul-float/2addr v0, p1

    float-to-int v6, v0

    .line 95
    shr-int v0, v7, p2

    shr-int v2, v6, p2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 97
    .local v8, result:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 98
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v4, v9, v9, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 99
    .local v4, desRect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    invoke-direct {v3, v9, v9, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 105
    .local v3, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->drawInTiles(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 106
    return-object v8
.end method

.method private drawInTiles(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 16
    .parameter "canvas"
    .parameter "decoder"
    .parameter "rect"
    .parameter "dest"
    .parameter "sample"

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->TILE_SIZE:I

    shl-int v8, v13, p5

    .line 112
    .local v8, tileSize:I
    const/4 v13, 0x1

    shl-int v2, v13, p5

    .line 113
    .local v2, borderSize:I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 114
    .local v7, tileRect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 115
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v13, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 116
    const/4 v13, 0x1

    iput-boolean v13, v5, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 118
    const/4 v13, 0x1

    iput-boolean v13, v5, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    .line 119
    const/4 v13, 0x1

    shl-int v13, v13, p5

    iput v13, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 120
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sample===="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p5

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 122
    .local v6, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .local v9, tx:I
    const/4 v11, 0x0

    .line 123
    .local v11, x:I
    :goto_0
    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Rect;->right:I

    if-ge v9, v13, :cond_2

    .line 124
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .local v10, ty:I
    const/4 v12, 0x0

    .line 125
    .local v12, y:I
    :goto_1
    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v10, v13, :cond_1

    .line 126
    add-int v13, v9, v8

    add-int/2addr v13, v2

    add-int v14, v10, v8

    add-int/2addr v14, v2

    invoke-virtual {v7, v9, v10, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 127
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 128
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 129
    .local v4, height:I
    const/4 v1, 0x0

    .line 134
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v5}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "drawInTiles() end decodeRegion() bitmap.width=="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " height=="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "pixelX==="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  pixelY===="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    int-to-float v13, v11

    int-to-float v14, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v13, v14, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 141
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #height:I
    :cond_0
    :goto_2
    add-int/2addr v10, v8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->TILE_SIZE:I

    add-int/2addr v12, v13

    goto/16 :goto_1

    .line 138
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #height:I
    :catchall_0
    move-exception v13

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v13
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 142
    :catch_0
    move-exception v3

    .line 143
    .local v3, e:Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "drawInTiles:got exception:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 123
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .end local v4           #height:I
    :cond_1
    add-int/2addr v9, v8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->TILE_SIZE:I

    add-int/2addr v11, v13

    goto/16 :goto_0

    .line 148
    .end local v10           #ty:I
    .end local v12           #y:I
    :cond_2
    return-void
.end method


# virtual methods
.method public apply()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    if-nez v1, :cond_0

    .line 74
    invoke-super {p0}, Lcom/mediatek/gallery3d/pq/ImageDecoder;->apply()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 80
    :goto_0
    return-object v1

    .line 77
    :cond_0
    const/high16 v1, 0x3f80

    :try_start_0
    iget v2, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->mLevel:I

    invoke-direct {p0, v1, v2}, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->decodeTileImage(FI)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/OutOfMemoryError;
    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public calculateCurrentLevel()V
    .locals 4

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->getScaleMin()F

    move-result v0

    .line 169
    .local v0, currentScale:F
    const/high16 v1, 0x3f80

    div-float/2addr v1, v0

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->floorLog2(F)I

    move-result v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mLevelCount:I

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    iput v1, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->mLevel:I

    .line 170
    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decodeImage   currentScale===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mOriginalImageWidth=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mOriginalImageWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mOriginalImageHeight  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mOriginalImageHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenNail.getWidth()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mScreenNail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenNail.getWidth() =="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mScreenNail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  levelCount===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mLevelCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mLevel=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->mLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method public decodeImage()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/pq/ImageDecoder;->caculateInSampleSize()I

    .line 51
    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->options:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 52
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/pq/ImageDecoder;->decoder()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mScreenNail:Landroid/graphics/Bitmap;

    .line 53
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->calculateCurrentLevel()V

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mApply:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 68
    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mScreenNail:Landroid/graphics/Bitmap;

    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/io/FileNotFoundException;
    iput-object v3, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    .line 59
    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNotFoundException!!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 63
    .local v0, e:Ljava/io/IOException;
    iput-object v3, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    .line 64
    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException!!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getScaleMin()F
    .locals 4

    .prologue
    .line 195
    iget v1, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mGLviewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mOriginalImageWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mGLviewHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mOriginalImageHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 197
    .local v0, s:F
    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " viewW=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mGLviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  viewH=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mGLviewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mOriginalImageWidth=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mOriginalImageWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mOriginalImageHeight=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mOriginalImageHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/high16 v1, 0x4080

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Lcom/mediatek/gallery3d/pq/ImageDecoder;->recycle()V

    .line 178
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    .line 182
    :cond_0
    return-void
.end method
