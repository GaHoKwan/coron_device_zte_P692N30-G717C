.class Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;
.super Ljava/lang/Object;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SinglePhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoramaScreenNailJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/android/gallery3d/ui/ScreenNail;",
        ">;"
    }
.end annotation


# instance fields
.field private mItem:Lcom/android/gallery3d/data/MediaItem;

.field private mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

.field final synthetic this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;)V
    .locals 0
    .parameter
    .parameter "item"
    .parameter "params"

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1087
    iput-object p2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 1088
    iput-object p3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    .line 1089
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 8
    .parameter "jc"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1093
    iget-object v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    iget-object v6, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-virtual {v5, v7, v6}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v3

    .line 1094
    .local v3, imageRequest:Lcom/android/gallery3d/util/ThreadPool$Job;,"Lcom/android/gallery3d/util/ThreadPool$Job<Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;>;"
    if-nez v3, :cond_0

    .line 1095
    iget-object v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #setter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v5, v4}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1702(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 1113
    :goto_0
    return-object v4

    .line 1098
    :cond_0
    invoke-interface {v3, p1}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    .line 1099
    .local v2, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v2, :cond_1

    iget-object v5, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    .line 1100
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #setter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPanoramaTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v5, v4}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1702(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 1103
    :cond_2
    iget-object v4, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v5

    invoke-static {v4, v5, v7}, Lcom/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1104
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v7}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->resizeBitmapToProperRatio(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1105
    new-instance v1, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getPanoramaScreenNailWidth()I

    move-result v6

    invoke-static {}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getPanoramaScreenNailHeight()I

    move-result v7

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;-><init>(IIII)V

    .line 1108
    .local v1, config:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;
    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/ui/TileImageViewAdapter;->mPanoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-static {v4}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1800(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1109
    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/ui/TileImageViewAdapter;->mPanoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-static {v4}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1900(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;

    invoke-virtual {v4, v0}, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1113
    :goto_1
    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/ui/TileImageViewAdapter;->mPanoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-static {v4}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$2100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    goto :goto_0

    .line 1111
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    new-instance v5, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;

    invoke-direct {v5, v0, v1}, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;-><init>(Landroid/graphics/Bitmap;Lcom/mediatek/gallery3d/panorama/PanoramaConfig;)V

    #setter for: Lcom/android/gallery3d/ui/TileImageViewAdapter;->mPanoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-static {v4, v5}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$2002(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_1
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1082
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$PanoramaScreenNailJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method
