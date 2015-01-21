.class public Lcom/android/gallery3d/ui/TiledTexture;
.super Ljava/lang/Object;
.source "TiledTexture.java"

# interfaces
.implements Lcom/android/gallery3d/ui/Texture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/TiledTexture$1;,
        Lcom/android/gallery3d/ui/TiledTexture$Tile;,
        Lcom/android/gallery3d/ui/TiledTexture$Uploader;
    }
.end annotation


# static fields
.field private static final BORDER_SIZE:I = 0x1

.field public static CONTENT_SIZE:I = 0x0

.field private static final INIT_CAPACITY:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Gallery2/TiledTexture"

.field public static TILE_SIZE:I = 0x0

.field private static final UPLOAD_TILE_LIMIT:J = 0x4L

.field private static sBitmapPaint:Landroid/graphics/Paint;

.field private static sCanvas:Landroid/graphics/Canvas;

.field private static sFreeTileHead:Lcom/android/gallery3d/ui/TiledTexture$Tile;

.field private static final sFreeTileLock:Ljava/lang/Object;

.field private static sPaint:Landroid/graphics/Paint;

.field private static sUploadBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private final mDestRect:Landroid/graphics/RectF;

.field private final mHeight:I

.field private mOpaque:Z

.field private final mSrcRect:Landroid/graphics/RectF;

.field private final mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

.field private mUploadIndex:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x100

    sput v0, Lcom/android/gallery3d/ui/TiledTexture;->CONTENT_SIZE:I

    .line 47
    sget v0, Lcom/android/gallery3d/ui/TiledTexture;->CONTENT_SIZE:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/gallery3d/ui/TiledTexture;->TILE_SIZE:I

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmap"

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mUploadIndex:I

    .line 69
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 70
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 368
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mOpaque:Z

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/ui/TiledTexture$Tile;>;"
    const/4 v4, 0x0

    .local v4, x:I
    iget v3, p0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    .local v3, w:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 216
    const/4 v5, 0x0

    .local v5, y:I
    iget v0, p0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    .local v0, h:I
    :goto_1
    if-ge v5, v0, :cond_0

    .line 217
    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->obtainTile()Lcom/android/gallery3d/ui/TiledTexture$Tile;

    move-result-object v2

    .line 218
    .local v2, tile:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    iput v4, v2, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    .line 219
    iput v5, v2, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    .line 220
    iput-object p1, v2, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 221
    sget v6, Lcom/android/gallery3d/ui/TiledTexture;->CONTENT_SIZE:I

    iget v7, p0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    sub-int/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    sget v7, Lcom/android/gallery3d/ui/TiledTexture;->CONTENT_SIZE:I

    iget v8, p0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    sub-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/android/gallery3d/ui/TiledTexture$Tile;->setSize(II)V

    .line 224
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget v6, Lcom/android/gallery3d/ui/TiledTexture;->CONTENT_SIZE:I

    add-int/2addr v5, v6

    goto :goto_1

    .line 215
    .end local v2           #tile:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    :cond_0
    sget v6, Lcom/android/gallery3d/ui/TiledTexture;->CONTENT_SIZE:I

    add-int/2addr v4, v6

    goto :goto_0

    .line 227
    .end local v0           #h:I
    .end local v5           #y:I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/gallery3d/ui/TiledTexture$Tile;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/gallery3d/ui/TiledTexture$Tile;

    iput-object v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/TiledTexture;Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/TiledTexture;->uploadNextTile(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$300()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$400()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static freeResources()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 244
    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    .line 245
    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    .line 246
    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    .line 247
    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    .line 248
    return-void
.end method

.method private static freeTile(Lcom/android/gallery3d/ui/TiledTexture$Tile;)V
    .locals 2
    .parameter "tile"

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->invalidateContent()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 172
    sget-object v1, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    iput-object v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->nextFreeTile:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 174
    sput-object p0, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 175
    monitor-exit v1

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V
    .locals 4
    .parameter "output"
    .parameter "src"
    .parameter "x0"
    .parameter "y0"
    .parameter "x"
    .parameter "y"
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 277
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p2

    mul-float/2addr v0, p6

    add-float/2addr v0, p4

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p3

    mul-float/2addr v1, p7

    add-float/2addr v1, p5

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, p2

    mul-float/2addr v2, p6

    add-float/2addr v2, p4

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    mul-float/2addr v3, p7

    add-float/2addr v3, p5

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 281
    return-void
.end method

.method private static obtainTile()Lcom/android/gallery3d/ui/TiledTexture$Tile;
    .locals 3

    .prologue
    .line 179
    sget-object v2, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    monitor-enter v2

    .line 180
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 181
    .local v0, result:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .end local v0           #result:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/TiledTexture$Tile;-><init>(Lcom/android/gallery3d/ui/TiledTexture$1;)V

    monitor-exit v2

    .line 184
    .restart local v0       #result:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    :goto_0
    return-object v0

    .line 182
    :cond_0
    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->nextFreeTile:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    sput-object v1, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 183
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->nextFreeTile:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 184
    monitor-exit v2

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static prepareResources()V
    .locals 3

    .prologue
    .line 251
    const-string v0, "Gallery2/TiledTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareResources TILE_SIZE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/gallery3d/ui/TiledTexture;->TILE_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget v0, Lcom/android/gallery3d/ui/TiledTexture;->TILE_SIZE:I

    sget v1, Lcom/android/gallery3d/ui/TiledTexture;->TILE_SIZE:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    .line 253
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lcom/android/gallery3d/ui/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    .line 254
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    .line 255
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 256
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    .line 257
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 258
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    return-void
.end method

.method private uploadNextTile(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 189
    iget v4, p0, Lcom/android/gallery3d/ui/TiledTexture;->mUploadIndex:I

    iget-object v5, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v5, v5

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/android/gallery3d/ui/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    if-nez v4, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v2

    .line 191
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    monitor-enter v4

    .line 192
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    iget v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mUploadIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/gallery3d/ui/TiledTexture;->mUploadIndex:I

    aget-object v1, v5, v6

    .line 196
    .local v1, next:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    iget-object v5, v1, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 197
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/UploadedTexture;->isLoaded()Z

    move-result v0

    .line 198
    .local v0, hasBeenLoad:Z
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 204
    if-nez v0, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, p1, v5, v6}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 206
    .end local v0           #hasBeenLoad:Z
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget v4, p0, Lcom/android/gallery3d/ui/TiledTexture;->mUploadIndex:I

    iget-object v5, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v5, v5

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .line 206
    .end local v1           #next:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 358
    iget v4, p0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    iget v5, p0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/TiledTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 359
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 13
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 306
    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 307
    .local v2, src:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 308
    .local v1, dest:Landroid/graphics/RectF;
    move/from16 v0, p4

    int-to-float v3, v0

    iget v4, p0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    int-to-float v4, v4

    div-float v7, v3, v4

    .line 309
    .local v7, scaleX:F
    move/from16 v0, p5

    int-to-float v3, v0

    iget v4, p0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    int-to-float v4, v4

    div-float v8, v3, v4

    .line 310
    .local v8, scaleY:F
    iget-object v12, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    monitor-enter v12

    .line 311
    const/4 v9, 0x0

    .local v9, i:I
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v10, v3

    .local v10, n:I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 312
    iget-object v3, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    aget-object v11, v3, v9

    .line 313
    .local v11, t:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentWidth:I

    int-to-float v5, v5

    iget v6, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentHeight:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 314
    iget v3, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    int-to-float v3, v3

    iget v4, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 315
    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, p2

    move/from16 v0, p3

    int-to-float v6, v0

    invoke-static/range {v1 .. v8}, Lcom/android/gallery3d/ui/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    .line 316
    iget v3, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 317
    iget-object v3, p0, Lcom/android/gallery3d/ui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/gallery3d/ui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    invoke-interface {p1, v11, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 311
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 319
    .end local v11           #t:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    :cond_0
    monitor-exit v12

    .line 320
    return-void

    .line 319
    .end local v10           #n:I
    :catchall_0
    move-exception v3

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 17
    .parameter "canvas"
    .parameter "source"
    .parameter "target"

    .prologue
    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 325
    .local v2, src:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 326
    .local v1, dest:Landroid/graphics/RectF;
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 327
    .local v3, x0:F
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 328
    .local v4, y0:F
    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/RectF;->left:F

    .line 329
    .local v5, x:F
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/RectF;->top:F

    .line 330
    .local v6, y:F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float v7, v12, v13

    .line 331
    .local v7, scaleX:F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float v8, v12, v13

    .line 333
    .local v8, scaleY:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    monitor-enter v13

    .line 334
    const/4 v9, 0x0

    .local v9, i:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v10, v12

    .local v10, n:I
    :goto_0
    if-ge v9, v10, :cond_1

    .line 335
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    aget-object v11, v12, v9

    .line 336
    .local v11, t:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    const/4 v12, 0x0

    const/4 v14, 0x0

    iget v15, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentWidth:I

    int-to-float v15, v15

    iget v0, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v12, v14, v15, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 337
    iget v12, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    int-to-float v12, v12

    iget v14, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    int-to-float v14, v14

    invoke-virtual {v2, v12, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 338
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 334
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 339
    :cond_0
    invoke-static/range {v1 .. v8}, Lcom/android/gallery3d/ui/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    .line 340
    iget v12, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    iget v14, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v14, v14, 0x1

    int-to-float v14, v14

    invoke-virtual {v2, v12, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 341
    move-object/from16 v0, p1

    invoke-interface {v0, v11, v2, v1}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1

    .line 343
    .end local v10           #n:I
    .end local v11           #t:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .restart local v10       #n:I
    :cond_1
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    return-void
.end method

.method public drawMixed(Lcom/android/gallery3d/ui/GLCanvas;IFIIII)V
    .locals 18
    .parameter "canvas"
    .parameter "color"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 288
    .local v2, src:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 289
    .local v1, dest:Landroid/graphics/RectF;
    move/from16 v0, p6

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    int-to-float v4, v4

    div-float v7, v3, v4

    .line 290
    .local v7, scaleX:F
    move/from16 v0, p7

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    int-to-float v4, v4

    div-float v8, v3, v4

    .line 291
    .local v8, scaleY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 292
    const/4 v15, 0x0

    .local v15, i:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v0, v3

    move/from16 v16, v0

    .local v16, n:I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    aget-object v10, v3, v15

    .line 294
    .local v10, t:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v10, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentWidth:I

    int-to-float v5, v5

    iget v6, v10, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentHeight:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 295
    iget v3, v10, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    int-to-float v3, v3

    iget v4, v10, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 296
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    invoke-static/range {v1 .. v8}, Lcom/android/gallery3d/ui/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    .line 297
    iget v3, v10, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, v10, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 298
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/ui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    move-object/from16 v9, p1

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-interface/range {v9 .. v14}, Lcom/android/gallery3d/ui/GLCanvas;->drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 292
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 300
    .end local v10           #t:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    :cond_0
    monitor-exit v17

    .line 301
    return-void

    .line 300
    .end local v16           #n:I
    :catchall_0
    move-exception v3

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/TiledTexture;->mOpaque:Z

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 231
    iget v0, p0, Lcom/android/gallery3d/ui/TiledTexture;->mUploadIndex:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 4

    .prologue
    .line 236
    iget-object v3, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    monitor-enter v3

    .line 237
    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 238
    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/gallery3d/ui/TiledTexture;->freeTile(Lcom/android/gallery3d/ui/TiledTexture$Tile;)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_0
    monitor-exit v3

    .line 241
    return-void

    .line 240
    .end local v1           #n:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setOpaque(Z)V
    .locals 4
    .parameter "opaque"

    .prologue
    .line 370
    iget-object v3, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    monitor-enter v3

    .line 371
    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 372
    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->setOpaque(Z)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/TiledTexture;->mOpaque:Z

    .line 376
    return-void

    .line 374
    .end local v1           #n:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
