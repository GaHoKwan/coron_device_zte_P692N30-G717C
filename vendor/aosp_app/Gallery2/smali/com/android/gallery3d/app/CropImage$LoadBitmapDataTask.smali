.class Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapDataTask"
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
.field mItem:Lcom/android/gallery3d/data/MediaItem;

.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter
    .parameter "item"

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1456
    iput-object p2, p0, Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 1457
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "jc"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1466
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPictureQualityEnhanceSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mSetStereoWallpaper:Z
    invoke-static {v3}, Lcom/android/gallery3d/app/CropImage;->access$600(Lcom/android/gallery3d/app/CropImage;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1468
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;->mItem:Lcom/android/gallery3d/data/MediaItem;

    if-nez v3, :cond_1

    .line 1476
    :cond_0
    :goto_0
    return-object v2

    .line 1469
    :cond_1
    new-instance v1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v1}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 1470
    .local v1, params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    iput-boolean v4, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    .line 1471
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3, v4, v1}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    .line 1473
    .local v0, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1476
    .end local v0           #dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .end local v1           #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;->mItem:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1452
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
