.class public Lcom/android/mms/model/ImageModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "ImageModel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = true

.field private static final PICTURE_SIZE_LIMIT:I = 0x19000

.field private static final SUPPORTED_MMS_IMAGE_CONTENT_TYPES:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Mms/image"


# instance fields
.field private mContentTypeTemp:Ljava/lang/String;

.field private mFullSizeBitmapCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public mHasDrmContent:Z

.field public mHasDrmRight:Z

.field private mHeight:I

.field private mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 77
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "image/jpeg"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/mms/model/ImageModel;->SUPPORTED_MMS_IMAGE_CONTENT_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 2
    .parameter "context"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 98
    const-string v0, "img"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 82
    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 83
    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 84
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mFullSizeBitmapCache:Ljava/lang/ref/SoftReference;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mContentTypeTemp:Ljava/lang/String;

    .line 99
    invoke-direct {p0, p2}, Lcom/android/mms/model/ImageModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "uri"
    .parameter "region"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 348
    const-string v0, "img"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 82
    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 83
    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 84
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mFullSizeBitmapCache:Ljava/lang/ref/SoftReference;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mContentTypeTemp:Ljava/lang/String;

    .line 349
    iput-object p4, p0, Lcom/android/mms/model/ImageModel;->mContentTypeTemp:Ljava/lang/String;

    .line 350
    invoke-direct {p0, p2}, Lcom/android/mms/model/ImageModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 351
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    .line 352
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 8
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 105
    const-string v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 82
    iput v7, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 83
    iput v7, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 84
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mFullSizeBitmapCache:Ljava/lang/ref/SoftReference;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mContentTypeTemp:Ljava/lang/String;

    .line 108
    return-void
.end method

.method private createBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "thumbnailBoundsLimit"
    .parameter "uri"

    .prologue
    const/4 v1, -0x1

    .line 236
    iget v0, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    if-ne v0, v1, :cond_0

    .line 237
    invoke-direct {p0, p2}, Lcom/android/mms/model/ImageModel;->decodeImageBounds(Landroid/net/Uri;)V

    .line 239
    :cond_0
    iget v0, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    const v4, 0x19000

    iget-object v6, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move v2, p1

    move v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/UriImage;->getResizedImageData(IIIIILandroid/net/Uri;Landroid/content/Context;)[B

    move-result-object v7

    .line 244
    .local v7, data:[B
    if-nez v7, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    array-length v1, v7

    invoke-static {v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private decodeImageBounds(Landroid/net/Uri;)V
    .locals 6
    .parameter "uri"

    .prologue
    .line 162
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 167
    .local v1, input:Ljava/io/InputStream;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 168
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 169
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 171
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 172
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 178
    if-eqz v1, :cond_0

    .line 180
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :cond_0
    :goto_0
    const-string v3, "Mms/image"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image bounds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v1           #input:Ljava/io/InputStream;
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 181
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #input:Ljava/io/InputStream;
    .restart local v2       #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v0

    .line 182
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .locals 8
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 114
    :try_start_0
    new-instance v4, Lcom/android/mms/ui/UriImage;

    iget-object v5, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 115
    .local v4, uriImage:Lcom/android/mms/ui/UriImage;
    invoke-virtual {v4}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, contentTypeTemp:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 117
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    .line 118
    .local v3, mtm:Landroid/webkit/MimeTypeMap;
    const-string v2, ""

    .line 119
    .local v2, extension:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/model/ImageModel;->mContentTypeTemp:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 120
    iget-object v5, p0, Lcom/android/mms/model/ImageModel;->mContentTypeTemp:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string v6, "Type of media is unknown."

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0           #contentTypeTemp:Ljava/lang/String;
    .end local v2           #extension:Ljava/lang/String;
    .end local v3           #mtm:Landroid/webkit/MimeTypeMap;
    .end local v4           #uriImage:Lcom/android/mms/ui/UriImage;
    :catch_0
    move-exception v1

    .line 152
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "Mms/image"

    const-string v6, "IllegalArgumentException caught while opening or reading stream"

    invoke-static {v5, v6, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string v6, "Type of media is unknown."

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 125
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #contentTypeTemp:Ljava/lang/String;
    .restart local v2       #extension:Ljava/lang/String;
    .restart local v3       #mtm:Landroid/webkit/MimeTypeMap;
    .restart local v4       #uriImage:Lcom/android/mms/ui/UriImage;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/mms/model/ImageModel;->mContentTypeTemp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/UriImage;->setContentType(Ljava/lang/String;)V

    .line 126
    iget-object v5, p0, Lcom/android/mms/model/ImageModel;->mContentTypeTemp:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 133
    .end local v2           #extension:Ljava/lang/String;
    .end local v3           #mtm:Landroid/webkit/MimeTypeMap;
    :goto_0
    invoke-virtual {v4}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 134
    invoke-virtual {v4}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 135
    invoke-virtual {v4}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 137
    iget v5, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRestrictedImageWidth()I

    move-result v6

    if-gt v5, v6, :cond_2

    iget v5, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRestrictedImageHeight()I

    move-result v6

    if-le v5, v6, :cond_5

    .line 138
    :cond_2
    sget v5, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    const/16 v6, -0xb

    if-ne v5, v6, :cond_4

    .line 139
    new-instance v5, Lcom/android/mms/RestrictedResolutionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restricted resolution:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/mms/RestrictedResolutionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 129
    :cond_3
    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    goto :goto_0

    .line 140
    :cond_4
    sget v5, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    const/16 v6, -0xa

    if-ne v5, v6, :cond_5

    .line 141
    new-instance v5, Lcom/android/mms/ContentRestrictionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restricted resolution:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 146
    :cond_5
    const-string v5, "Mms/image"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New ImageModel created: mSrc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mContentType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mUri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    return-void
.end method


# virtual methods
.method public cancelThumbnailLoading()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/mms/model/ImageModel;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/model/ImageModel;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    invoke-interface {v0}, Lcom/android/mms/util/ItemLoadedFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    const-string v0, "Mms:app"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "Mms/image"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelThumbnailLoading for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/ImageModel;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mms/util/ItemLoadedFuture;->cancel(Landroid/net/Uri;)V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    .line 233
    :cond_1
    return-void
.end method

.method protected checkContentRestriction()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 210
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mFullSizeBitmapCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 249
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 251
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/model/ImageModel;->createBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 253
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/mms/ui/UriImage;->setIsResize(Z)V

    .line 254
    if-eqz v0, :cond_0

    .line 255
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/mms/model/ImageModel;->mFullSizeBitmapCache:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    return-object v0

    .line 257
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMediaResizable()Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 4
    .parameter "evt"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, mEvtType:Ljava/lang/String;
    const-string v1, "SmilMediaStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SmilMediaPause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    :cond_0
    iput-boolean v3, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 205
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 206
    return-void

    .line 198
    :cond_2
    const-string v1, "SmilMediaEnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iget-short v1, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    if-eq v1, v3, :cond_1

    .line 200
    iput-boolean v2, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0
.end method

.method public loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 3
    .parameter "callback"

    .prologue
    .line 214
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v0

    .line 216
    .local v0, thumbnailManager:Lcom/android/mms/util/ThumbnailManager;
    invoke-static {p0}, Lcom/android/mms/util/ThumbnailManager;->getThumbnailUri(Lcom/android/mms/model/MediaModel;)Landroid/net/Uri;

    move-result-object v1

    .line 217
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1, p1}, Lcom/android/mms/util/ThumbnailManager;->getThumbnail(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/model/ImageModel;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    .line 219
    iget-object v2, p0, Lcom/android/mms/model/ImageModel;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    return-object v2
.end method

.method protected resizeMedia(IJ)V
    .locals 17
    .parameter "byteLimit"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 272
    new-instance v4, Lcom/android/mms/ui/UriImage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v4, v14, v15}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 274
    .local v4, image:Lcom/android/mms/ui/UriImage;
    if-nez v4, :cond_0

    .line 275
    new-instance v14, Lcom/android/mms/ExceedMessageSizeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No room to resize picture: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 279
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v13

    .line 280
    .local v13, widthLimit:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v3

    .line 281
    .local v3, heightLimit:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v9

    .line 285
    .local v9, size:I
    invoke-virtual {v4}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v14

    invoke-virtual {v4}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v15

    if-le v14, v15, :cond_1

    .line 286
    move v12, v13

    .line 287
    .local v12, temp:I
    move v13, v3

    .line 288
    move v3, v12

    .line 291
    .end local v12           #temp:I
    :cond_1
    const-string v14, "Mms:app"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 292
    const-string v14, "Mms/image"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "resizeMedia size: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " image.getWidth(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " widthLimit: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " image.getHeight(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " heightLimit: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " image.getContentType(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_2
    if-eqz v9, :cond_4

    move/from16 v0, p1

    if-gt v9, v0, :cond_4

    invoke-virtual {v4}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v14

    if-gt v14, v13, :cond_4

    invoke-virtual {v4}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v14

    if-gt v14, v3, :cond_4

    sget-object v14, Lcom/android/mms/model/ImageModel;->SUPPORTED_MMS_IMAGE_CONTENT_TYPES:Ljava/util/Set;

    invoke-virtual {v4}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 308
    const-string v14, "Mms:app"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 309
    const-string v14, "Mms/image"

    const-string v15, "resizeMedia - already sized"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_3
    :goto_0
    return-void

    .line 314
    :cond_4
    move/from16 v0, p1

    invoke-virtual {v4, v13, v3, v0}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    .line 319
    .local v6, part:Lcom/google/android/mms/pdu/PduPart;
    if-nez v6, :cond_5

    .line 320
    new-instance v14, Lcom/android/mms/ExceedMessageSizeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Not enough memory to turn image into part: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 325
    :cond_5
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v10

    .line 328
    .local v10, src:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 329
    .local v11, srcBytes:[B
    invoke-virtual {v6, v11}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 330
    const-string v14, "."

    invoke-virtual {v10, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 331
    .local v7, period:I
    const/4 v14, -0x1

    if-eq v7, v14, :cond_7

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 332
    .local v2, contentId:[B
    :goto_1
    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 334
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v8

    .line 335
    .local v8, persister:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v14

    array-length v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 337
    const-string v14, "Mms:app"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 338
    const-string v14, "Mms/image"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "resizeMedia mSize: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/model/MediaModel;->mSize:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_6
    const/4 v14, 0x0

    move-wide/from16 v0, p2

    invoke-virtual {v8, v6, v0, v1, v14}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v5

    .line 342
    .local v5, newUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    .end local v2           #contentId:[B
    .end local v5           #newUri:Landroid/net/Uri;
    .end local v8           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_7
    move-object v2, v11

    .line 331
    goto :goto_1
.end method
