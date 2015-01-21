.class public Lcom/android/gallery3d/data/UriImage;
.super Lcom/android/gallery3d/data/MediaItem;
.source "UriImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/UriImage$UriImageRequest;,
        Lcom/android/gallery3d/data/UriImage$BitmapJob;,
        Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;
    }
.end annotation


# static fields
.field private static final STATE_DOWNLOADED:I = 0x2

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Gallery2/UriImage"

.field private static final mIsDisplay2dAs3dSupported:Z

.field private static final mIsDrmSupported:Z

.field private static final mIsMpoSupported:Z

.field private static final mIsStereoDisplaySupported:Z


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

.field private final mContentType:Ljava/lang/String;

.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mHeight:I

.field public mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

.field private mMpoSubType:I

.field private mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

.field private mRotation:I

.field private mState:I

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/UriImage;->mIsDrmSupported:Z

    .line 70
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isMpoSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/UriImage;->mIsMpoSupported:Z

    .line 72
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/UriImage;->mIsStereoDisplaySupported:Z

    .line 74
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDisplay2dAs3dSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/UriImage;->mIsDisplay2dAs3dSupported:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter "application"
    .parameter "path"
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 95
    invoke-static {}, Lcom/android/gallery3d/data/UriImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/gallery3d/data/MediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/UriImage;->mMpoSubType:I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    .line 88
    new-instance v0, Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PanoramaMetadataSupport;-><init>(Lcom/android/gallery3d/data/MediaObject;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    .line 96
    iput-object p3, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    .line 97
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 98
    iput-object p4, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    .line 99
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/UriImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriImage;->prepareInputFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 59
    invoke-static/range {p0 .. p6}, Lcom/android/gallery3d/data/UriImage;->decodeBitmapEx(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/data/UriImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/gallery3d/data/UriImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/gallery3d/data/UriImage;->mHeight:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/gallery3d/data/UriImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/gallery3d/data/UriImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriImage;->extractImageInfo(Lcom/android/gallery3d/util/ThreadPool$JobContext;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery3d/data/UriImage;)Lcom/android/gallery3d/app/GalleryApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/data/UriImage;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/data/UriImage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method private static decodeBitmapEx(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "jc"
    .parameter "application"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "type"
    .parameter "options"
    .parameter "targetSize"

    .prologue
    .line 526
    new-instance v1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v1}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 527
    .local v1, params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    .line 528
    iput p4, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    .line 529
    iput p6, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    .line 530
    iget-boolean v0, p5, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    iput-boolean v0, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    move-object v2, p1

    .line 531
    check-cast v2, Landroid/content/Context;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/gallery3d/data/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v7

    .line 533
    .local v7, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    if-eqz v7, :cond_0

    iget-object v6, v7, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 534
    .local v6, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {v6}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 533
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private extractImageInfo(Lcom/android/gallery3d/util/ThreadPool$JobContext;)V
    .locals 6
    .parameter "jc"

    .prologue
    const/4 v5, 0x0

    .line 482
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->preferDisplayOriginalSize()Z

    move-result v3

    if-nez v3, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 485
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 487
    sget-boolean v3, Lcom/android/gallery3d/data/UriImage;->mIsDrmSupported:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "file"

    iget-object v4, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".dcf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 492
    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 493
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:///"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 494
    .local v0, drmUri:Landroid/net/Uri;
    const/4 v3, 0x0

    invoke-static {v2, v0, v5, v3}, Lcom/mediatek/gallery3d/drm/DrmHelper;->forceDecodeDrmUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    .line 499
    .end local v0           #drmUri:Landroid/net/Uri;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :goto_1
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v3, :cond_2

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v3, :cond_2

    .line 500
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    .line 501
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/gallery3d/data/UriImage;->mHeight:I

    .line 503
    :cond_2
    const-string v3, "Gallery2/UriImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractImageInfo:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/data/UriImage;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    sget-boolean v3, Lcom/android/gallery3d/data/UriImage;->mIsStereoDisplaySupported:Z

    if-eqz v3, :cond_0

    const-string v3, "image/x-jps"

    iget-object v4, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 508
    const-string v3, "Gallery2/UriImage"

    const-string v4, "extractImageInfo:for JPS, assume left/right layout"

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget v3, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    goto/16 :goto_0

    .line 496
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3, v5, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method private getFileDescriptor(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/io/FileDescriptor;
    .locals 1
    .parameter "jc"

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriImage;->prepareInputFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 520
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method private getModifiedOperations(I)I
    .locals 0
    .parameter "supported"

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriImage;->modifyForImageType(I)I

    move-result p1

    .line 416
    return p1
.end method

.method private initMpoSubType()V
    .locals 5

    .prologue
    .line 397
    const/4 v2, -0x1

    iget v3, p0, Lcom/android/gallery3d/data/UriImage;->mMpoSubType:I

    if-ne v2, v3, :cond_0

    .line 398
    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 399
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/mediatek/mpo/MpoDecoder;->decodeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/mediatek/mpo/MpoDecoder;

    move-result-object v0

    .line 400
    .local v0, mpoDecoder:Lcom/mediatek/mpo/MpoDecoder;
    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Lcom/mediatek/mpo/MpoDecoder;->suggestMtkMpoType()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/UriImage;->mMpoSubType:I

    .line 402
    invoke-virtual {v0}, Lcom/mediatek/mpo/MpoDecoder;->close()V

    .line 403
    const-string v2, "Gallery2/UriImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initMpoSubType:mMpoSubType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/data/UriImage;->mMpoSubType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .end local v0           #mpoDecoder:Lcom/mediatek/mpo/MpoDecoder;
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private isSharable()Z
    .locals 2

    .prologue
    .line 309
    const-string v0, "file"

    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private modifyForImageType(I)I
    .locals 3
    .parameter "supported"

    .prologue
    const/high16 v2, 0x1

    .line 421
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isGifSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image/gif"

    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    or-int/lit16 p1, p1, 0x1000

    .line 427
    :cond_0
    const-string v0, "image/x-jps"

    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    sget-boolean v0, Lcom/android/gallery3d/data/UriImage;->mIsStereoDisplaySupported:Z

    if-eqz v0, :cond_1

    .line 429
    or-int/2addr p1, v2

    .line 435
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/data/UriImage;->mIsMpoSupported:Z

    if-eqz v0, :cond_3

    const-string v0, "image/mpo"

    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 437
    invoke-direct {p0}, Lcom/android/gallery3d/data/UriImage;->initMpoSubType()V

    .line 438
    const v0, 0x20002

    iget v1, p0, Lcom/android/gallery3d/data/UriImage;->mMpoSubType:I

    if-eq v0, v1, :cond_2

    const v0, 0x20001

    iget v1, p0, Lcom/android/gallery3d/data/UriImage;->mMpoSubType:I

    if-ne v0, v1, :cond_5

    .line 440
    :cond_2
    sget-boolean v0, Lcom/android/gallery3d/data/UriImage;->mIsStereoDisplaySupported:Z

    if-eqz v0, :cond_3

    .line 441
    or-int/2addr p1, v2

    .line 452
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/android/gallery3d/data/UriImage;->mIsDisplay2dAs3dSupported:Z

    if-eqz v0, :cond_4

    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_4

    and-int v0, p1, v2

    if-nez v0, :cond_4

    and-int/lit16 v0, p1, 0x1000

    if-nez v0, :cond_4

    .line 456
    or-int/2addr p1, v2

    .line 457
    const/high16 v0, 0x8

    or-int/2addr p1, v0

    .line 460
    :cond_4
    return p1

    .line 443
    :cond_5
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/gallery3d/data/UriImage;->getSubType()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 444
    const/high16 v0, 0x200

    or-int/2addr p1, v0

    goto :goto_0

    .line 446
    :cond_6
    or-int/lit16 p1, p1, 0x80

    goto :goto_0
.end method

.method private openFileOrDownloadTempFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)V
    .locals 3
    .parameter "jc"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriImage;->openOrDownloadInner(Lcom/android/gallery3d/util/ThreadPool$JobContext;)I

    move-result v0

    .line 113
    .local v0, state:I
    monitor-enter p0

    .line 114
    :try_start_0
    iput v0, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    .line 115
    iget v1, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 121
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 122
    monitor-exit p0

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private openOrDownloadInner(Lcom/android/gallery3d/util/ThreadPool$JobContext;)I
    .locals 11
    .parameter "jc"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 126
    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, scheme:Ljava/lang/String;
    const-string v8, "content"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.resource"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "file"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 131
    :cond_0
    :try_start_0
    const-string v8, "image/jpeg"

    iget-object v9, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 132
    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 134
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/android/gallery3d/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v8

    iput v8, p0, Lcom/android/gallery3d/data/UriImage;->mRotation:I

    .line 135
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 137
    .end local v1           #is:Ljava/io/InputStream;
    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    const-string v10, "r"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 139
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    .line 164
    :cond_2
    :goto_0
    return v5

    :cond_3
    move v5, v7

    .line 140
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v5, "Gallery2/UriImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to open: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 143
    goto :goto_0

    .line 147
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :try_start_1
    new-instance v8, Ljava/net/URI;

    iget-object v9, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    .line 148
    .local v4, url:Ljava/net/URL;
    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryApp;->getDownloadCache()Lcom/android/gallery3d/data/DownloadCache;

    move-result-object v8

    invoke-virtual {v8, p1, v4}, Lcom/android/gallery3d/data/DownloadCache;->download(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;)Lcom/android/gallery3d/data/DownloadCache$Entry;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    .line 149
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 150
    iget-object v5, p0, Lcom/android/gallery3d/data/UriImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    if-nez v5, :cond_5

    .line 151
    const-string v5, "Gallery2/UriImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 152
    goto :goto_0

    .line 154
    :cond_5
    const-string v5, "image/jpeg"

    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 155
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/gallery3d/data/UriImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    iget-object v5, v5, Lcom/android/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 156
    .restart local v1       #is:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/android/gallery3d/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/data/UriImage;->mRotation:I

    .line 157
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 159
    .end local v1           #is:Ljava/io/InputStream;
    :cond_6
    iget-object v5, p0, Lcom/android/gallery3d/data/UriImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    iget-object v5, v5, Lcom/android/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    const/high16 v8, 0x1000

    invoke-static {v5, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v7

    .line 161
    goto/16 :goto_0

    .line 162
    .end local v4           #url:Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 163
    .local v3, t:Ljava/lang/Throwable;
    const-string v5, "Gallery2/UriImage"

    const-string v7, "download error"

    invoke-static {v5, v7, v3}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 164
    goto/16 :goto_0
.end method

.method private openUriInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 464
    if-nez p1, :cond_0

    .line 478
    :goto_0
    return-object v2

    .line 465
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, scheme:Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.resource"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 470
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "Gallery2/UriImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openUriInputStream:fail to open: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 477
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_2
    const-string v3, "Gallery2/UriImage"

    const-string v4, "openUriInputStream:encountered unknow scheme!"

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private prepareInputFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z
    .locals 4
    .parameter "jc"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 170
    new-instance v2, Lcom/android/gallery3d/data/UriImage$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/data/UriImage$1;-><init>(Lcom/android/gallery3d/data/UriImage;)V

    invoke-interface {p1, v2}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 180
    :goto_0
    monitor-enter p0

    .line 181
    :try_start_0
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 188
    :goto_1
    return v0

    .line 182
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    if-nez v2, :cond_1

    .line 183
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    .line 197
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriImage;->openFileOrDownloadTempFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)V

    goto :goto_0

    .line 185
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 186
    monitor-exit p0

    goto :goto_1

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 187
    :cond_2
    :try_start_2
    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 188
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_1

    .line 191
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 195
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public clearCachedPanoramaSupport()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PanoramaMetadataSupport;->clearCachedValues()V

    .line 302
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 354
    return-void

    .line 352
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 4

    .prologue
    .line 324
    invoke-super {p0}, Lcom/android/gallery3d/data/MediaObject;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 325
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mHeight:I

    if-eqz v2, :cond_0

    .line 326
    const/4 v2, 0x5

    iget v3, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 327
    const/4 v2, 0x6

    iget v3, p0, Lcom/android/gallery3d/data/UriImage;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 330
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 332
    :cond_1
    const-string v2, "file"

    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 333
    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, filePath:Ljava/lang/String;
    const/16 v2, 0xc8

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 335
    invoke-static {v0, v1}, Lcom/android/gallery3d/data/MediaDetails;->extractExifInfo(Lcom/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V

    .line 337
    .end local v1           #filePath:Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/android/gallery3d/data/UriImage;->mHeight:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/app/PanoramaMetadataSupport;->getPanoramaSupport(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 297
    return-void
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/android/gallery3d/data/UriImage;->mRotation:I

    return v0
.end method

.method public getStereoLayout()I
    .locals 2

    .prologue
    .line 568
    const-string v0, "image/mpo"

    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    const/4 v0, 0x1

    .line 574
    :goto_0
    return v0

    .line 570
    :cond_0
    const-string v0, "image/x-jps"

    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    const/4 v0, 0x2

    goto :goto_0

    .line 574
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubType()I
    .locals 3

    .prologue
    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, subType:I
    sget-boolean v1, Lcom/android/gallery3d/data/UriImage;->mIsMpoSupported:Z

    if-eqz v1, :cond_0

    const-string v1, "image/mpo"

    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/android/gallery3d/data/UriImage;->initMpoSubType()V

    .line 382
    const v1, 0x20003

    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mMpoSubType:I

    if-ne v1, v2, :cond_0

    .line 383
    or-int/lit8 v0, v0, 0x2

    .line 388
    :cond_0
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->preferDisplayOriginalSize()Z

    move-result v1

    if-eqz v1, :cond_1

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    .line 390
    or-int/lit16 v0, v0, 0x200

    .line 393
    :cond_1
    return v0
.end method

.method public getSupportedOperations()I
    .locals 4

    .prologue
    .line 278
    const/16 v0, 0x220

    .line 279
    .local v0, supported:I
    invoke-direct {p0}, Lcom/android/gallery3d/data/UriImage;->isSharable()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    or-int/lit8 v0, v0, 0x40

    .line 282
    const-string v1, "image/mpo"

    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/data/UriImage;->getSubType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 284
    const-string v1, "Gallery2/UriImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current type is mpo_mav, don\'t support full image, path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    and-int/lit8 v0, v0, -0x41

    .line 289
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/UriImage;->getModifiedOperations(I)I

    move-result v0

    .line 291
    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    return v0
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 1
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
    .line 103
    new-instance v0, Lcom/android/gallery3d/data/UriImage$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/data/UriImage$BitmapJob;-><init>(Lcom/android/gallery3d/data/UriImage;I)V

    return-object v0
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
    .line 539
    new-instance v0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/gallery3d/data/UriImage$UriImageRequest;-><init>(Lcom/android/gallery3d/data/UriImage;ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)V

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
    .line 108
    new-instance v0, Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;-><init>(Lcom/android/gallery3d/data/UriImage;Lcom/android/gallery3d/data/UriImage$1;)V

    return-object v0
.end method

.method public setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/gallery3d/data/UriImage;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    .line 581
    return-void
.end method
