.class public Lcom/mediatek/videoplayer/ThumbnailBuilder;
.super Ljava/lang/Object;
.source "ThumbnailBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailBuilder"

.field private static final TASK_GROUP_ID:I = 0x7cf

.field public static final TYPE_LOADED_HAS_PREVIEW:I = 0x2

.field public static final TYPE_LOADED_NO_PREVIEW:I = 0x1

.field public static final TYPE_NEED_LOAD:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultOverlay3D:Landroid/graphics/Bitmap;

.field private final mDefaultThumbnail:Landroid/graphics/Bitmap;

.field private mDefaultThumbnail3D:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailBuilder;->mDefaultThumbnail3D:Landroid/graphics/Bitmap;

    .line 59
    iput-object p1, p0, Lcom/mediatek/videoplayer/ThumbnailBuilder;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020003

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailBuilder;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailBuilder;->mDefaultOverlay3D:Landroid/graphics/Bitmap;

    .line 63
    return-void
.end method


# virtual methods
.method public cancelThumbnailFromDb()V
    .locals 5

    .prologue
    .line 113
    const-string v0, "ThumbnailBuilder"

    const-string v1, "cancelThumbnailFromDb()"

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x7cf

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;JJ)V

    .line 115
    return-void
.end method

.method public getDefaultThumbnailWith3D(Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "isSupport3D"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailBuilder;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 72
    .local v0, thumbnail:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/mediatek/videoplayer/MtkUtils;->isSupport3d()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/mediatek/videoplayer/ThumbnailBuilder;->mDefaultThumbnail3D:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/mediatek/videoplayer/ThumbnailBuilder;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/videoplayer/ThumbnailBuilder;->mDefaultThumbnail3D:Landroid/graphics/Bitmap;

    .line 75
    iget-object v1, p0, Lcom/mediatek/videoplayer/ThumbnailBuilder;->mDefaultThumbnail3D:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/mediatek/videoplayer/ThumbnailBuilder;->overlay3DImpl(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/videoplayer/ThumbnailBuilder;->mDefaultThumbnail3D:Landroid/graphics/Bitmap;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailBuilder;->mDefaultThumbnail3D:Landroid/graphics/Bitmap;

    .line 79
    :cond_1
    return-object v0
.end method

.method public getThumbnailFromDb(J)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "id"

    .prologue
    .line 105
    const-string v0, "ThumbnailBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThumbnailFromDb() id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v3, 0x7cf

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-wide v1, p1

    invoke-static/range {v0 .. v6}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 108
    .local v7, bitmap:Landroid/graphics/Bitmap;
    const-string v0, "ThumbnailBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThumbnailFromDb() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-object v7
.end method

.method public getmDefaultThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailBuilder;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public overlay3DImpl(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"

    .prologue
    const/4 v9, 0x0

    .line 83
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 84
    .local v2, overlayCanvas:Landroid/graphics/Canvas;
    iget-object v6, p0, Lcom/mediatek/videoplayer/ThumbnailBuilder;->mDefaultOverlay3D:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 85
    .local v4, overlayWidth:I
    iget-object v6, p0, Lcom/mediatek/videoplayer/ThumbnailBuilder;->mDefaultOverlay3D:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 86
    .local v3, overlayHeight:I
    const/4 v0, 0x0

    .line 87
    .local v0, left:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v5, v6, v3

    .line 88
    .local v5, top:I
    new-instance v1, Landroid/graphics/Rect;

    const/4 v6, 0x0

    add-int/lit8 v7, v4, 0x0

    add-int v8, v5, v3

    invoke-direct {v1, v6, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 89
    .local v1, newBounds:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/mediatek/videoplayer/ThumbnailBuilder;->mDefaultOverlay3D:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6, v9, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 90
    return-object p1
.end method

.method public recycle(Lcom/mediatek/videoplayer/ThumbnailEntity;)V
    .locals 3
    .parameter "thumbnailEntity"

    .prologue
    .line 94
    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p1}, Lcom/mediatek/videoplayer/ThumbnailEntity;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    .local v0, thumbnail:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/videoplayer/ThumbnailBuilder;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/videoplayer/ThumbnailBuilder;->mDefaultThumbnail3D:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    .end local v0           #thumbnail:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v1, "ThumbnailBuilder"

    const-string v2, "recycle() thumbnailEntity is null"

    invoke-static {v1, v2}, Lcom/mediatek/videoplayer/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
