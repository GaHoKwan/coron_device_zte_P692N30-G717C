.class Lcom/android/gallery3d/ui/TiledTexture$Tile;
.super Lcom/android/gallery3d/ui/UploadedTexture;
.source "TiledTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/TiledTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tile"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public contentHeight:I

.field public contentWidth:I

.field public nextFreeTile:Lcom/android/gallery3d/ui/TiledTexture$Tile;

.field public offsetX:I

.field public offsetY:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/TiledTexture$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TiledTexture$Tile;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 166
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 143
    const-string v0, "Gallery2/TiledTexture"

    const-string v1, "onGetBitmap(): bitmap is null"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$100()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    .line 147
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v9, v0, 0x1

    .line 148
    .local v9, x:I
    iget v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v10, v0, 0x1

    .line 149
    .local v10, y:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int v8, v0, v9

    .line 150
    .local v8, r:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int v7, v0, v10

    .line 151
    .local v7, b:I
    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$300()Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v9

    int-to-float v4, v10

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$200()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 155
    if-lez v9, :cond_1

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$300()Landroid/graphics/Canvas;

    move-result-object v0

    add-int/lit8 v1, v9, -0x1

    int-to-float v1, v1

    add-int/lit8 v3, v9, -0x1

    int-to-float v3, v3

    sget v4, Lcom/android/gallery3d/ui/TiledTexture;->TILE_SIZE:I

    int-to-float v4, v4

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$400()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 156
    :cond_1
    if-lez v10, :cond_2

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$300()Landroid/graphics/Canvas;

    move-result-object v1

    add-int/lit8 v0, v10, -0x1

    int-to-float v3, v0

    sget v0, Lcom/android/gallery3d/ui/TiledTexture;->TILE_SIZE:I

    int-to-float v4, v0

    add-int/lit8 v0, v10, -0x1

    int-to-float v5, v0

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$400()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 157
    :cond_2
    sget v0, Lcom/android/gallery3d/ui/TiledTexture;->CONTENT_SIZE:I

    if-ge v8, v0, :cond_3

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$300()Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, v8

    int-to-float v3, v8

    sget v4, Lcom/android/gallery3d/ui/TiledTexture;->TILE_SIZE:I

    int-to-float v4, v4

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$400()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 158
    :cond_3
    sget v0, Lcom/android/gallery3d/ui/TiledTexture;->CONTENT_SIZE:I

    if-ge v7, v0, :cond_4

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$300()Landroid/graphics/Canvas;

    move-result-object v1

    int-to-float v3, v7

    sget v0, Lcom/android/gallery3d/ui/TiledTexture;->TILE_SIZE:I

    int-to-float v4, v0

    int-to-float v5, v7

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$400()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 160
    :cond_4
    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$100()Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public setSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 131
    iput p1, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentWidth:I

    .line 132
    iput p2, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentHeight:I

    .line 133
    add-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    .line 134
    add-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    .line 135
    sget v0, Lcom/android/gallery3d/ui/TiledTexture;->TILE_SIZE:I

    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureWidth:I

    .line 136
    sget v0, Lcom/android/gallery3d/ui/TiledTexture;->TILE_SIZE:I

    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureHeight:I

    .line 137
    return-void
.end method
