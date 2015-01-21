.class Lcom/android/gallery3d/app/CropImage$LoadSecondBitmapDataTask;
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
    name = "LoadSecondBitmapDataTask"
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
    .line 1485
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$LoadSecondBitmapDataTask;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1486
    iput-object p2, p0, Lcom/android/gallery3d/app/CropImage$LoadSecondBitmapDataTask;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 1487
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "jc"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1489
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage$LoadSecondBitmapDataTask;->mItem:Lcom/android/gallery3d/data/MediaItem;

    if-nez v3, :cond_1

    .line 1496
    :cond_0
    :goto_0
    return-object v2

    .line 1490
    :cond_1
    new-instance v1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v1}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 1491
    .local v1, params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    iput-boolean v4, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    .line 1494
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage$LoadSecondBitmapDataTask;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3, v4, v1}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    .line 1496
    .local v0, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1482
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/CropImage$LoadSecondBitmapDataTask;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
