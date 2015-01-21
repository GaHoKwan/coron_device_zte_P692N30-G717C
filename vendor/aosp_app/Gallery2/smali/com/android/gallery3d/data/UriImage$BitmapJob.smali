.class Lcom/android/gallery3d/data/UriImage$BitmapJob;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/UriImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/android/gallery3d/data/UriImage;


# direct methods
.method protected constructor <init>(Lcom/android/gallery3d/data/UriImage;I)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput p2, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    .line 220
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "jc"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 227
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/data/UriImage;->mState:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/data/UriImage;->access$502(Lcom/android/gallery3d/data/UriImage;I)I

    .line 229
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    #calls: Lcom/android/gallery3d/data/UriImage;->prepareInputFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z
    invoke-static {v0, p1}, Lcom/android/gallery3d/data/UriImage;->access$100(Lcom/android/gallery3d/data/UriImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v7, v8

    .line 271
    :cond_0
    :goto_0
    return-object v7

    .line 230
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    invoke-static {v0}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v6

    .line 231
    .local v6, targetSize:I
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 232
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 235
    invoke-static {v5, v9}, Lcom/mediatek/gallery3d/util/MediatekFeature;->enablePictureQualityEnhance(Landroid/graphics/BitmapFactory$Options;Z)V

    .line 238
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    #calls: Lcom/android/gallery3d/data/UriImage;->extractImageInfo(Lcom/android/gallery3d/util/ThreadPool$JobContext;)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/data/UriImage;->access$600(Lcom/android/gallery3d/data/UriImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;)V

    .line 240
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v0}, Lcom/android/gallery3d/data/UriImage;->access$700(Lcom/android/gallery3d/data/UriImage;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v1

    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/gallery3d/data/UriImage;->access$800(Lcom/android/gallery3d/data/UriImage;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/gallery3d/data/UriImage;->access$900(Lcom/android/gallery3d/data/UriImage;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    move-object v0, p1

    #calls: Lcom/android/gallery3d/data/UriImage;->decodeBitmapEx(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/data/UriImage;->access$1000(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 242
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    .line 244
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isGifSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/UriImage;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    .line 247
    invoke-static {v7}, Lcom/mediatek/gallery3d/util/MediatekFeature;->replaceGifBackground(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v0}, Lcom/android/gallery3d/data/UriImage;->access$200(Lcom/android/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    invoke-static {p1, v0, v5, v6, v1}, Lcom/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 255
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v7, :cond_4

    :cond_3
    move-object v7, v8

    .line 256
    goto :goto_0

    .line 259
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 260
    invoke-static {v7, v6, v9}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 266
    :goto_1
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isGifSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/UriImage;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_5

    .line 269
    invoke-static {v7}, Lcom/mediatek/gallery3d/util/MediatekFeature;->replaceGifBackground(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 271
    :cond_5
    invoke-static {v7}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_0

    .line 262
    :cond_6
    invoke-static {v7, v6, v9}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_1
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/UriImage$BitmapJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
