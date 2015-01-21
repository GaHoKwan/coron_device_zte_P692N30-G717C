.class Lcom/android/gallery3d/app/PhotoDataAdapter$SecondScreenNailJob;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecondScreenNailJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mItem:Lcom/android/gallery3d/data/MediaItem;

.field private mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;)V
    .locals 0
    .parameter
    .parameter "item"
    .parameter "params"

    .prologue
    .line 2332
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$SecondScreenNailJob;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2333
    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$SecondScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 2334
    iput-object p3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$SecondScreenNailJob;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    .line 2335
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 6
    .parameter "jc"

    .prologue
    const/4 v2, 0x0

    .line 2345
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$SecondScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$SecondScreenNailJob;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    .line 2347
    .local v1, imageRequest:Lcom/android/gallery3d/util/ThreadPool$Job;,"Lcom/android/gallery3d/util/ThreadPool$Job<Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;>;"
    if-nez v1, :cond_1

    move-object v0, v2

    .line 2354
    :cond_0
    :goto_0
    return-object v0

    .line 2350
    :cond_1
    invoke-interface {v1, p1}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    .line 2351
    .local v0, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 2352
    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2328
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter$SecondScreenNailJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v0

    return-object v0
.end method
