.class public Lcom/android/gallery3d/data/LocalImage;
.super Lcom/android/gallery3d/data/LocalMediaItem;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;,
        Lcom/android/gallery3d/data/LocalImage$LocalLargeImageRequest;,
        Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;
    }
.end annotation


# static fields
.field private static final INDEX_BUCKET_ID:I = 0xa

.field private static final INDEX_CAPTION:I = 0x1

.field private static final INDEX_DATA:I = 0x8

.field private static final INDEX_DATE_ADDED:I = 0x6

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x5

.field private static final INDEX_DRM_METHOD:I = 0xf

.field protected static final INDEX_FOCUS_VALUE_HIGH:I = 0x14

.field protected static final INDEX_FOCUS_VALUE_LOW:I = 0x15

.field protected static final INDEX_GROUP_COUNT:I = 0x17

.field protected static final INDEX_GROUP_ID:I = 0x12

.field protected static final INDEX_GROUP_INDEX:I = 0x13

.field private static final INDEX_HEIGHT:I = 0xd

.field private static final INDEX_ID:I = 0x0

.field protected static final INDEX_IS_BEST_SHOT:I = 0x16

.field private static final INDEX_IS_DRM:I = 0xe

.field private static final INDEX_LATITUDE:I = 0x3

.field private static final INDEX_LONGITUDE:I = 0x4

.field private static final INDEX_MIME_TYPE:I = 0x2

.field private static final INDEX_MPO_SUB_TYPE:I = 0x10

.field private static final INDEX_ORIENTATION:I = 0x9

.field private static final INDEX_SIZE:I = 0xb

.field private static final INDEX_STEREO_TYPE:I = 0x11

.field private static final INDEX_WIDTH:I = 0xc

.field static final ITEM_PATH:Lcom/android/gallery3d/data/Path; = null

.field public static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Gallery2/LocalImage"

.field private static final mIsDisplay2dAs3dSupported:Z

.field private static final mIsDrmSupported:Z

.field private static final mIsGifAnimationSupported:Z

.field private static final mIsMavSupported:Z

.field private static final mIsMpoSupported:Z

.field private static final mIsPrintSupported:Z

.field private static final mIsStereoDisplaySupported:Z


# instance fields
.field protected mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field public mMpoSubType:I

.field private mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

.field private mSniffedMimetype:Ljava/lang/String;

.field private mStereoDimAdjusted:Z

.field public rotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    const-string v0, "/local/image/item"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .line 89
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalImage;->mIsDrmSupported:Z

    .line 91
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isMpoSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalImage;->mIsMpoSupported:Z

    .line 93
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isBluetoothPrintSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalImage;->mIsPrintSupported:Z

    .line 95
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalImage;->mIsStereoDisplaySupported:Z

    .line 97
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDisplay2dAs3dSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalImage;->mIsDisplay2dAs3dSupported:Z

    .line 99
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isGifAnimationSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalImage;->mIsGifAnimationSupported:Z

    .line 101
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isMAVSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalImage;->mIsMavSupported:Z

    .line 140
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_drm"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "drm_method"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "mpo_type"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "stereo_type"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "group_id"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "group_index"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "focus_value_high"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "focus_value_low"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "is_best_shot"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "group_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 171
    invoke-static {}, Lcom/android/gallery3d/data/LocalImage;->updateWidthAndHeightProjection()V

    .line 172
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;I)V
    .locals 6
    .parameter "path"
    .parameter "application"
    .parameter "id"

    .prologue
    .line 196
    invoke-static {}, Lcom/android/gallery3d/data/LocalImage;->nextVersionNumber()J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 106
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    .line 107
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/gallery3d/data/LocalImage;->mStereoDimAdjusted:Z

    .line 187
    new-instance v3, Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PanoramaMetadataSupport;-><init>(Lcom/android/gallery3d/data/MediaObject;)V

    iput-object v3, p0, Lcom/android/gallery3d/data/LocalImage;->mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    .line 197
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 198
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 199
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 200
    .local v2, uri:Landroid/net/Uri;
    sget-object v3, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/android/gallery3d/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 201
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 202
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot get cursor for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 205
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 213
    return-void

    .line 208
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find data for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "cursor"

    .prologue
    .line 190
    invoke-static {}, Lcom/android/gallery3d/data/LocalImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalImage;->mStereoDimAdjusted:Z

    .line 187
    new-instance v0, Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PanoramaMetadataSupport;-><init>(Lcom/android/gallery3d/data/MediaObject;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    .line 191
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 192
    invoke-virtual {p0, p3}, Lcom/android/gallery3d/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 74
    invoke-static/range {p0 .. p5}, Lcom/android/gallery3d/data/LocalImage;->decodeOriginEx(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private adjustDimIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 692
    const-string v1, "image/x-jps"

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/gallery3d/data/LocalImage;->mIsStereoDisplaySupported:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/data/LocalImage;->mStereoDimAdjusted:Z

    if-nez v1, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getStereoLayout()I

    move-result v0

    .line 695
    .local v0, layout:I
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    invoke-static {v3, v0, v1}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->adjustDim(ZII)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    .line 696
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    invoke-static {v1, v0, v2}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->adjustDim(ZII)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    .line 697
    iput-boolean v3, p0, Lcom/android/gallery3d/data/LocalImage;->mStereoDimAdjusted:Z

    .line 699
    .end local v0           #layout:I
    :cond_0
    return-void
.end method

.method private attachMtkDetails(Lcom/android/gallery3d/data/MediaDetails;)V
    .locals 8
    .parameter "details"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    .line 857
    const/4 v0, 0x1

    .line 858
    .local v0, dimensionAvailable:Z
    invoke-virtual {p1, v6}, Lcom/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v3

    .line 859
    .local v3, objW:Ljava/lang/Object;
    invoke-virtual {p1, v7}, Lcom/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 860
    .local v2, objH:Ljava/lang/Object;
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 861
    :cond_0
    const/4 v0, 0x0

    .line 862
    const-string v4, "Gallery2/LocalImage"

    const-string v5, "attachMtkDetails: no width/height found in details, will use DB data"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_1
    if-eqz v0, :cond_3

    .line 866
    :try_start_0
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 867
    check-cast v3, Ljava/lang/String;

    .end local v3           #objW:Ljava/lang/Object;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 868
    const/4 v0, 0x0

    .line 869
    const-string v4, "Gallery2/LocalImage"

    const-string v5, "attachMtkDetails: width is 0, use DB data"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_2
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 873
    check-cast v2, Ljava/lang/String;

    .end local v2           #objH:Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 874
    const/4 v0, 0x0

    .line 875
    const-string v4, "Gallery2/LocalImage"

    const-string v5, "attachMtkDetails: height is 0, use DB data"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 890
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalImage;->adjustDimIfNeeded()V

    .line 891
    iget v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v6, v4}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 892
    iget v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v7, v4}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 894
    :cond_4
    return-void

    .line 878
    :catch_0
    move-exception v1

    .line 880
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "Gallery2/LocalImage"

    const-string v5, "attachMtkDetails: exception: "

    invoke-static {v4, v5, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static decodeOriginEx(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "jc"
    .parameter "application"
    .parameter "filePath"
    .parameter "type"
    .parameter "options"
    .parameter "targetSize"

    .prologue
    .line 589
    new-instance v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 590
    .local v2, params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    .line 591
    iput p3, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    .line 592
    iput p5, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    .line 593
    iget-boolean v3, p4, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    iput-boolean v3, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    .line 594
    check-cast p1, Landroid/content/Context;

    .end local p1
    const/4 v3, 0x0

    invoke-static {p0, v2, p1, p2, v3}, Lcom/mediatek/gallery3d/data/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/content/Context;Ljava/lang/String;Z)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v1

    .line 596
    .local v1, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 597
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 596
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .parameter "orientation"

    .prologue
    .line 470
    sparse-switch p0, :sswitch_data_0

    .line 480
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 472
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 478
    :goto_0
    return-object v0

    .line 474
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 476
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 478
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 470
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static getItemPath(I)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "mtkInclusion"

    .prologue
    .line 80
    if-eqz p0, :cond_0

    .line 82
    const-string v0, "/local/image/item"

    invoke-static {v0, p0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method private getModifiedOperations(I)I
    .locals 1
    .parameter "operation"

    .prologue
    .line 760
    sget-boolean v0, Lcom/android/gallery3d/data/LocalImage;->mIsPrintSupported:Z

    if-eqz v0, :cond_0

    .line 761
    or-int/lit16 p1, p1, 0x4000

    .line 765
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/LocalImage;->modifyForImageType(I)I

    move-result p1

    .line 768
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/LocalImage;->modifyForDRM(I)I

    move-result p1

    .line 770
    return p1
.end method

.method private modifyForDRM(I)I
    .locals 2
    .parameter "operation"

    .prologue
    .line 810
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalMediaItem;->isDrm()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v0, p1

    .line 853
    .end local p1
    .local v0, operation:I
    :goto_0
    return v0

    .line 815
    .end local v0           #operation:I
    .restart local p1
    :cond_1
    const v1, 0x8000

    or-int/2addr p1, v1

    .line 817
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/data/LocalMediaItem;->isDrmMethod(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 822
    or-int/lit16 p1, p1, 0x2000

    .line 825
    :cond_2
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_3

    .line 826
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/data/LocalImage;->drmRights(I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 828
    and-int/lit8 p1, p1, -0x21

    .line 832
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 833
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/data/LocalImage;->drmRights(I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 835
    and-int/lit8 p1, p1, -0x5

    .line 839
    :cond_4
    sget-boolean v1, Lcom/android/gallery3d/data/LocalImage;->mIsPrintSupported:Z

    if-eqz v1, :cond_5

    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_5

    .line 841
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/data/LocalImage;->drmRights(I)I

    move-result v1

    if-eqz v1, :cond_5

    .line 843
    and-int/lit16 p1, p1, -0x4001

    .line 849
    :cond_5
    and-int/lit8 p1, p1, -0x9

    .line 850
    and-int/lit16 p1, p1, -0x201

    .line 851
    and-int/lit8 p1, p1, -0x3

    move v0, p1

    .line 853
    .end local p1
    .restart local v0       #operation:I
    goto :goto_0
.end method

.method private modifyForImageType(I)I
    .locals 3
    .parameter "operation"

    .prologue
    const/high16 v2, 0x1

    .line 775
    const-string v0, "image/mpo"

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 778
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getSubType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 780
    const/16 p1, 0x405

    .line 782
    const/high16 v0, 0x200

    or-int/2addr p1, v0

    .line 786
    :goto_0
    sget-boolean v0, Lcom/android/gallery3d/data/LocalImage;->mIsStereoDisplaySupported:Z

    if-eqz v0, :cond_0

    .line 787
    or-int/2addr p1, v2

    .line 804
    :cond_0
    :goto_1
    return p1

    .line 784
    :cond_1
    or-int/lit8 p1, p1, 0x40

    goto :goto_0

    .line 789
    :cond_2
    const-string v0, "image/x-jps"

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 791
    or-int/lit8 p1, p1, 0x40

    .line 792
    sget-boolean v0, Lcom/android/gallery3d/data/LocalImage;->mIsStereoDisplaySupported:Z

    if-eqz v0, :cond_0

    .line 793
    or-int/2addr p1, v2

    goto :goto_1

    .line 795
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isSupportedByGifDecoder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 797
    or-int/lit16 p1, p1, 0x1000

    goto :goto_1

    .line 798
    :cond_4
    sget-boolean v0, Lcom/android/gallery3d/data/LocalImage;->mIsDisplay2dAs3dSupported:Z

    if-eqz v0, :cond_0

    .line 801
    or-int/2addr p1, v2

    .line 802
    const/high16 v0, 0x8

    or-int/2addr p1, v0

    goto :goto_1
.end method

.method private static updateWidthAndHeightProjection()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 176
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "width"

    aput-object v2, v0, v1

    .line 178
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "height"

    aput-object v2, v0, v1

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public clearCachedPanoramaSupport()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PanoramaMetadataSupport;->clearCachedValues()V

    .line 457
    return-void
.end method

.method public delete()V
    .locals 6

    .prologue
    .line 461
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 462
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 463
    .local v0, baseUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 466
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/DataManager;->broadcastUpdatePicture()V

    .line 467
    return-void
.end method

.method public drmRights(I)I
    .locals 2
    .parameter "action"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/mediatek/gallery3d/drm/DrmHelper;->checkRightsStatus(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 532
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 533
    .local v0, baseUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 3

    .prologue
    .line 543
    invoke-super {p0}, Lcom/android/gallery3d/data/LocalMediaItem;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 544
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    const/4 v1, 0x7

    iget v2, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 545
    const-string v1, "image/jpeg"

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/MediaDetails;->extractExifInfo(Lcom/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V

    .line 551
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/LocalImage;->attachMtkDetails(Lcom/android/gallery3d/data/MediaDetails;)V

    .line 552
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalImage;->adjustDimIfNeeded()V

    .line 575
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x2

    return v0
.end method

.method public getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/app/PanoramaMetadataSupport;->getPanoramaSupport(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 452
    return-void
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    return v0
.end method

.method public getStereoLayout()I
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 650
    const-string v1, "image/mpo"

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getSubType()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 652
    const/4 v0, 0x1

    .line 657
    :cond_0
    :goto_0
    return v0

    .line 653
    :cond_1
    const-string v1, "image/x-jps"

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubType()I
    .locals 8

    .prologue
    .line 702
    const/4 v3, 0x0

    .line 704
    .local v3, subType:I
    const-string v5, "image/mpo"

    iget-object v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 706
    const v5, 0x20003

    iget v6, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    if-ne v5, v6, :cond_6

    .line 707
    or-int/lit8 v3, v3, 0x2

    .line 719
    :cond_0
    :goto_0
    const-string v5, "image/x-jps"

    iget-object v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 720
    sget-boolean v5, Lcom/android/gallery3d/data/LocalImage;->mIsStereoDisplaySupported:Z

    if-eqz v5, :cond_1

    .line 721
    or-int/lit8 v3, v3, 0x40

    .line 726
    :cond_1
    sget-boolean v5, Lcom/android/gallery3d/data/LocalImage;->mIsDrmSupported:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalMediaItem;->isDrm()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->drm_method:I

    if-eq v5, v6, :cond_2

    .line 728
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->hasDrmRights()Z

    move-result v5

    if-nez v5, :cond_8

    .line 729
    or-int/lit8 v3, v3, 0x4

    .line 737
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 738
    .local v1, isSpecialImage:Z
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getWidth()I

    move-result v4

    .line 739
    .local v4, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getHeight()I

    move-result v0

    .line 740
    .local v0, h:I
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit16 v2, v5, 0x280

    .line 741
    .local v2, scale:I
    if-eqz v2, :cond_4

    div-int v5, v4, v2

    if-eqz v5, :cond_3

    div-int v5, v0, v2

    if-nez v5, :cond_4

    .line 742
    :cond_3
    const/4 v1, 0x1

    .line 743
    const-string v5, "Gallery2/LocalImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "is special image, w: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", h: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_4
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->preferDisplayOriginalSize()Z

    move-result v5

    if-eqz v5, :cond_5

    and-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_5

    if-nez v1, :cond_5

    .line 750
    const-string v5, "Gallery2/LocalImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", getHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    or-int/lit16 v3, v3, 0x200

    .line 754
    :cond_5
    return v3

    .line 708
    .end local v0           #h:I
    .end local v1           #isSpecialImage:Z
    .end local v2           #scale:I
    .end local v4           #w:I
    :cond_6
    const v5, 0x20002

    iget v6, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    if-ne v5, v6, :cond_7

    .line 709
    or-int/lit8 v3, v3, 0x10

    goto/16 :goto_0

    .line 710
    :cond_7
    const v5, 0x20001

    iget v6, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    if-ne v5, v6, :cond_0

    .line 714
    or-int/lit8 v3, v3, 0x10

    goto/16 :goto_0

    .line 731
    :cond_8
    or-int/lit8 v3, v3, 0x8

    goto/16 :goto_1
.end method

.method public getSupportedOperations()I
    .locals 6

    .prologue
    .line 412
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getStitchingProgressManager()Lcom/android/gallery3d/app/StitchingProgressManager;

    move-result-object v1

    .line 413
    .local v1, progressManager:Lcom/android/gallery3d/app/StitchingProgressManager;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/StitchingProgressManager;->getProgress(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 414
    const/4 v0, 0x0

    .line 446
    :goto_0
    return v0

    .line 417
    :cond_0
    const/16 v0, 0x62d

    .line 420
    .local v0, operation:I
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalMediaItem;->isDrm()Z

    move-result v2

    if-nez v2, :cond_1

    .line 421
    or-int/lit8 v0, v0, 0x40

    .line 423
    const-string v2, "image/mpo"

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getSubType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 425
    const-string v2, "Gallery2/LocalImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current type is mpo_mav, don\'t support full image, path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    and-int/lit8 v0, v0, -0x41

    .line 436
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/gallery3d/common/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    or-int/lit8 v0, v0, 0x2

    .line 440
    :cond_2
    iget-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 441
    or-int/lit8 v0, v0, 0x10

    .line 444
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/LocalImage;->getModifiedOperations(I)I

    move-result v0

    .line 446
    goto :goto_0

    .line 427
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    const-string v3, "bmp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 430
    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    sget v3, Lcom/android/gallery3d/data/LocalImage;->sThumbnailTargetSize:I

    if-gt v2, v3, :cond_1

    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    sget v3, Lcom/android/gallery3d/data/LocalImage;->sThumbnailTargetSize:I

    if-gt v2, v3, :cond_1

    .line 431
    and-int/lit8 v0, v0, -0x41

    goto :goto_1
.end method

.method public getVideoPlayer()Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;
    .locals 2

    .prologue
    .line 900
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getSubType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 901
    new-instance v0, Lcom/mediatek/gallery3d/mpo/MavPlayer;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/mpo/MavPlayer;-><init>()V

    .line 905
    :goto_0
    return-object v0

    .line 902
    :cond_0
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->isPanorama()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    new-instance v0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;-><init>()V

    goto :goto_0

    .line 905
    :cond_1
    invoke-super {p0}, Lcom/android/gallery3d/data/LocalMediaItem;->getVideoPlayer()Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;

    move-result-object v0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalImage;->adjustDimIfNeeded()V

    .line 566
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    return v0
.end method

.method public hasDrmRights()Z
    .locals 3

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/mediatek/gallery3d/drm/DrmHelper;->checkRightsStatus(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initThumbnailPlayType()V
    .locals 2

    .prologue
    .line 912
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->isPanorama()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    sget v0, Lcom/android/gallery3d/data/LocalImage;->TPT_DIRECT_PLAY:I

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->thumbnailPlayType:I

    .line 920
    :goto_0
    return-void

    .line 914
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getSubType()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/android/gallery3d/data/LocalImage;->mIsMavSupported:Z

    if-eqz v0, :cond_1

    .line 915
    sget v0, Lcom/android/gallery3d/data/LocalImage;->TPT_DIRECT_PLAY:I

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->thumbnailPlayType:I

    goto :goto_0

    .line 917
    :cond_1
    sget v0, Lcom/android/gallery3d/data/LocalImage;->TPT_NO_PLAY:I

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->thumbnailPlayType:I

    goto :goto_0
.end method

.method protected initVideoGenerator()V
    .locals 2

    .prologue
    .line 924
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->isPanorama()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    new-instance v0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    .line 932
    :goto_0
    return-void

    .line 926
    :cond_0
    const v0, 0x20003

    iget v1, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    if-ne v0, v1, :cond_1

    .line 927
    new-instance v0, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    goto :goto_0

    .line 929
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    goto :goto_0
.end method

.method public isTimeInterval()Z
    .locals 3

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/mediatek/gallery3d/drm/DrmHelper;->isTimeIntervalMedia(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method protected loadFromCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    .line 217
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    .line 218
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    .line 219
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    .line 220
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    .line 221
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    .line 224
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateAddedInSec:J

    .line 225
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    .line 227
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 228
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    .line 229
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    .line 230
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    .line 231
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    .line 232
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    .line 235
    sget-boolean v0, Lcom/android/gallery3d/data/LocalImage;->mIsDrmSupported:Z

    if-eqz v0, :cond_0

    .line 236
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->is_drm:I

    .line 237
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->drm_method:I

    .line 240
    :cond_0
    sget-boolean v0, Lcom/android/gallery3d/data/LocalImage;->mIsStereoDisplaySupported:Z

    if-eqz v0, :cond_1

    .line 241
    iput-boolean v2, p0, Lcom/android/gallery3d/data/LocalImage;->mStereoDimAdjusted:Z

    .line 243
    :cond_1
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    .line 245
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->stereoType:I

    .line 246
    return-void
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 7
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;J)V

    return-object v0
.end method

.method public requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 8
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
    .line 603
    new-instance v0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object v1, p0

    move v4, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;-><init>(Lcom/android/gallery3d/data/LocalImage;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    new-instance v0, Lcom/android/gallery3d/data/LocalImage$LocalLargeImageRequest;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public rotate(I)V
    .locals 12
    .parameter "degrees"

    .prologue
    .line 486
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 487
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 488
    .local v0, baseUri:Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 489
    .local v6, values:Landroid/content/ContentValues;
    iget v7, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    add-int/2addr v7, p1

    rem-int/lit16 v5, v7, 0x168

    .line 490
    .local v5, rotation:I
    if-gez v5, :cond_0

    add-int/lit16 v5, v5, 0x168

    .line 492
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    const-string v8, "image/jpeg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 494
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    iget-object v7, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 495
    .local v2, exif:Landroid/media/ExifInterface;
    const-string v7, "Orientation"

    invoke-static {v5}, Lcom/android/gallery3d/data/LocalImage;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .end local v2           #exif:Landroid/media/ExifInterface;
    :goto_0
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    .line 504
    const-string v7, "_size"

    iget-wide v8, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 507
    :cond_1
    const-string v7, "orientation"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 514
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 515
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->isPanorama()Z

    move-result v3

    .line 516
    .local v3, isPanorama:Z
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->isVerticalPanorama()Z

    move-result v4

    .line 517
    .local v4, isVerticalPanorama:Z
    if-nez v3, :cond_2

    if-eqz v4, :cond_3

    .line 519
    :cond_2
    iget-object v7, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/android/gallery3d/data/ImageCacheService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    const/4 v9, 0x2

    iget-wide v10, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/gallery3d/data/ImageCacheService;->clearImageData(Lcom/android/gallery3d/data/Path;IJ)V

    .line 524
    .end local v3           #isPanorama:Z
    .end local v4           #isVerticalPanorama:Z
    :cond_3
    iget-object v7, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v0, v6, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 527
    iget-object v7, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/data/DataManager;->broadcastUpdatePicture()V

    .line 528
    return-void

    .line 498
    :catch_0
    move-exception v1

    .line 499
    .local v1, e:Ljava/io/IOException;
    const-string v7, "Gallery2/LocalImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot set exif data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 8
    .parameter "cursor"

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xc

    const/4 v5, 0x0

    .line 250
    new-instance v0, Lcom/android/gallery3d/util/UpdateHelper;

    invoke-direct {v0}, Lcom/android/gallery3d/util/UpdateHelper;-><init>()V

    .line 251
    .local v0, uh:Lcom/android/gallery3d/util/UpdateHelper;
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    .line 252
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    .line 254
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    .line 255
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    .line 256
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    .line 258
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateAddedInSec:J

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateAddedInSec:J

    .line 260
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    .line 262
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 263
    iget v1, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    .line 264
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    .line 265
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    .line 267
    sget-boolean v1, Lcom/android/gallery3d/data/LocalImage;->mIsStereoDisplaySupported:Z

    if-eqz v1, :cond_0

    const-string v1, "image/x-jps"

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 269
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    .line 270
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    .line 279
    :goto_0
    sget-boolean v1, Lcom/android/gallery3d/data/LocalImage;->mIsDrmSupported:Z

    if-eqz v1, :cond_1

    .line 280
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->is_drm:I

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->is_drm:I

    .line 281
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->drm_method:I

    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->drm_method:I

    .line 284
    :cond_1
    sget-boolean v1, Lcom/android/gallery3d/data/LocalImage;->mIsStereoDisplaySupported:Z

    if-eqz v1, :cond_2

    .line 285
    iput-boolean v5, p0, Lcom/android/gallery3d/data/LocalImage;->mStereoDimAdjusted:Z

    .line 287
    :cond_2
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    .line 289
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->stereoType:I

    const/16 v2, 0x11

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->stereoType:I

    .line 293
    invoke-virtual {v0}, Lcom/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalMediaItem;->invalidateThumbnailPlayType()V

    .line 297
    :cond_3
    invoke-virtual {v0}, Lcom/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v1

    return v1

    .line 274
    :cond_4
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    .line 275
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    goto :goto_0
.end method
