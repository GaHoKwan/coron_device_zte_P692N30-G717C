.class Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;
.super Ljava/lang/Object;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SinglePhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    const/4 v8, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 240
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    .line 241
    .local v1, decoder:Landroid/graphics/BitmapRegionDecoder;
    if-nez v1, :cond_0

    .line 266
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v4

    .line 243
    .local v4, width:I
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    .line 245
    .local v2, height:I
    iget-object v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I
    invoke-static {v5}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$600(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)I

    move-result v5

    if-ne v5, v11, :cond_1

    iget-object v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v5}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v2}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isOutOfLimitation(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 247
    const-string v5, "Gallery2/SinglePhotoDataAdapter"

    const-string v6, "out of limitation: %s [mime type: %s, width: %d, height: %d]"

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    const/4 v8, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v5}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getStereoLayout()I

    move-result v5

    invoke-static {v10, v5, v4}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->adjustDim(ZII)I

    move-result v4

    .line 254
    iget-object v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v5}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getStereoLayout()I

    move-result v5

    invoke-static {v9, v5, v2}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->adjustDim(ZII)I

    move-result v2

    .line 256
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 257
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/high16 v5, 0x4480

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v5

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 261
    invoke-static {v3, v10}, Lcom/mediatek/gallery3d/util/MediatekFeature;->enablePictureQualityEnhance(Landroid/graphics/BitmapFactory$Options;Z)V

    .line 263
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v9, v9, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5, v3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 264
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$800(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$800(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;

    invoke-direct {v7, v1, v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;-><init>(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
