.class public abstract Lcom/android/gallery3d/data/MediaItem;
.super Lcom/android/gallery3d/data/MediaObject;
.source "MediaItem.java"


# static fields
.field private static final BYTESBUFFER_SIZE:I = 0x32000

.field private static final BYTESBUFFE_POOL_SIZE:I = 0x4

.field public static final CACHED_IMAGE_QUALITY:I = 0x5f

.field public static final IMAGE_BEST_SHOT_MARK_FALSE:I = 0x1

.field public static final IMAGE_BEST_SHOT_MARK_TRUE:I = 0x2

.field public static final IMAGE_BEST_SHOT_NOT_MARK:I = 0x0

.field public static final IMAGE_ERROR:I = -0x1

.field public static final IMAGE_READY:I = 0x0

.field public static final IMAGE_WAIT:I = 0x1

.field public static final INVALID_LATLNG:D = 0.0

.field public static final MICROTHUMBNAIL_TARGET_SIZE:I = 0xc8

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final THUMBNAIL_TARGET_SIZE:I = 0x280

.field public static final TYPE_MICROTHUMBNAIL:I = 0x2

.field public static final TYPE_MOTIONTHUMBNAIL:I = 0x3

.field public static final TYPE_THUMBNAIL:I = 0x1

.field private static final sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

.field private static sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

.field private static sMicrothumbnailTargetSize:I

.field private static final sThumbPool:Lcom/android/gallery3d/data/BitmapPool;

.field protected static sThumbnailTargetSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 64
    const/16 v0, 0xc8

    sput v0, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    .line 66
    new-instance v0, Lcom/android/gallery3d/data/BytesBufferPool;

    const v1, 0x32000

    invoke-direct {v0, v2, v1}, Lcom/android/gallery3d/data/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

    .line 70
    const/16 v0, 0x280

    sput v0, Lcom/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    .line 71
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/data/BitmapPool;

    invoke-direct {v0, v2}, Lcom/android/gallery3d/data/BitmapPool;-><init>(I)V

    :goto_0
    sput-object v0, Lcom/android/gallery3d/data/MediaItem;->sThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;J)V
    .locals 0
    .parameter "path"
    .parameter "version"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/data/MediaObject;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 88
    return-void
.end method

.method public static getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

    return-object v0
.end method

.method public static getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;
    .locals 1

    .prologue
    .line 157
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    if-nez v0, :cond_0

    .line 158
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->initializeMicroThumbPool()V

    .line 160
    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    return-object v0
.end method

.method public static getTargetSize(I)I
    .locals 2
    .parameter "type"

    .prologue
    .line 143
    packed-switch p0, :pswitch_data_0

    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "should only request thumb/microthumb from cache"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :pswitch_0
    sget v0, Lcom/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    .line 149
    :goto_0
    return v0

    :pswitch_1
    sget v0, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getThumbPool()Lcom/android/gallery3d/data/BitmapPool;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    return-object v0
.end method

.method private static initializeMicroThumbPool()V
    .locals 4

    .prologue
    .line 172
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/data/BitmapPool;

    sget v1, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    sget v2, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/data/BitmapPool;-><init>(III)V

    :goto_0
    sput-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    .line 176
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setThumbnailSizes(II)V
    .locals 1
    .parameter "size"
    .parameter "microSize"

    .prologue
    .line 179
    sput p0, Lcom/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    .line 180
    sget v0, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    if-eq v0, p1, :cond_0

    .line 181
    sput p1, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    .line 182
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->initializeMicroThumbPool()V

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public drmRights(I)I
    .locals 1
    .parameter "action"

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public getDateInMs()J
    .locals 2

    .prologue
    .line 91
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFaces()[Lcom/android/gallery3d/data/Face;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, ""

    return-object v0
.end method

.method public getFocusValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFullImageRotation()I
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    return v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 224
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupIndex()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getHeight()I
.end method

.method public getIsBestShot()I
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    const-wide/16 v1, 0x0

    .line 99
    const/4 v0, 0x0

    aput-wide v1, p1, v0

    .line 100
    const/4 v0, 0x1

    aput-wide v1, p1, v0

    .line 101
    return-void
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRelatedMediaSet()Lcom/android/gallery3d/data/MediaSet;
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 122
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStereoLayout()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public getSubType()I
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getWidth()I
.end method

.method public hasDrmRights()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public isConShot()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public isContainer()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public isDrmMethod(I)Z
    .locals 1
    .parameter "method"

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public isMotion()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public isPanorama()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 270
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v3

    if-gtz v3, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v2

    .line 272
    :cond_1
    const/4 v1, 0x0

    .line 273
    .local v1, ratio:I
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, mimetype:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    .line 275
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v4

    div-int v1, v3, v4

    .line 279
    :goto_1
    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    const/16 v3, 0xa

    if-gt v1, v3, :cond_0

    const-string v3, "image/gif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "image/mpo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "image/x-jps"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 277
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v4

    div-int v1, v3, v4

    goto :goto_1
.end method

.method public isTimeInterval()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public isVerticalPanorama()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v3

    if-gtz v3, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v2

    .line 289
    :cond_1
    const/4 v1, 0x0

    .line 290
    .local v1, ratio:I
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, mimetype:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    .line 292
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v4

    div-int v1, v3, v4

    .line 296
    :goto_1
    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    const/16 v3, 0xa

    if-gt v1, v3, :cond_0

    const-string v3, "image/gif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "image/mpo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "image/x-jps"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 294
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v4

    div-int v1, v3, v4

    goto :goto_1
.end method

.method public abstract requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .parameter "type"
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$Params;",
            ")",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end method

.method public setDisable(Z)V
    .locals 0
    .parameter "isDisable"

    .prologue
    .line 261
    return-void
.end method

.method public setIsBestShot(I)V
    .locals 0
    .parameter "isBestShort"

    .prologue
    .line 240
    return-void
.end method

.method public abstract setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V
.end method