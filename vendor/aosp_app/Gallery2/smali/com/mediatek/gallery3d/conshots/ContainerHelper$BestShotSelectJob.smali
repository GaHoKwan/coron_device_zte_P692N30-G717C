.class Lcom/mediatek/gallery3d/conshots/ContainerHelper$BestShotSelectJob;
.super Ljava/lang/Object;
.source "ContainerHelper.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/conshots/ContainerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BestShotSelectJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mMediaItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerHelper$BestShotSelectJob;->mMediaItemList:Ljava/util/ArrayList;

    .line 176
    invoke-static {}, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->access$100()Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->access$100()Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerHelper$BestShotSelectJob;->mMediaItemList:Ljava/util/ArrayList;

    .line 177
    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/mediatek/gallery3d/conshots/ContainerHelper$BestShotSelectJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 3
    .parameter "jc"

    .prologue
    .line 180
    const-string v1, "Gallery2/ContainerHelper"

    const-string v2, "<BestShotSelectJob.run> begin"

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerHelper$BestShotSelectJob;->mMediaItemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/mediatek/gallery3d/conshots/BestShotSelector;-><init>(Ljava/util/ArrayList;)V

    .line 183
    .local v0, selector:Lcom/mediatek/gallery3d/conshots/BestShotSelector;
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->markBestShot()V

    .line 184
    const/4 v1, 0x0

    return-object v1
.end method
