.class Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailJob;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PanoramaScreenNailJob"
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
.field private mItem:Lcom/android/gallery3d/data/MediaItem;

.field private mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/MediaItem;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;)V
    .locals 0
    .parameter "item"
    .parameter "params"

    .prologue
    .line 3089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3090
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 3091
    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailJob;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    .line 3092
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "jc"

    .prologue
    const/4 v2, 0x0

    .line 3096
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailJob;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    .line 3097
    .local v1, imageRequest:Lcom/android/gallery3d/util/ThreadPool$Job;,"Lcom/android/gallery3d/util/ThreadPool$Job<Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;>;"
    if-nez v1, :cond_1

    .line 3104
    :cond_0
    :goto_0
    return-object v2

    .line 3100
    :cond_1
    invoke-interface {v1, p1}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    .line 3101
    .local v0, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 3104
    iget-object v2, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3085
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter$PanoramaScreenNailJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
