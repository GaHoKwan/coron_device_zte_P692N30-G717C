.class Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConShotsAnimationRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Lcom/android/gallery3d/ui/ScreenNail;",
        ">;"
    }
.end annotation


# instance fields
.field private mAnimationCount:I

.field private mAnimationItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationPositon:I

.field private mCurrVersion:J

.field private mEntry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

.field private mIndex:I

.field private mIsFirstFrame:Z

.field private mLastFrameTime:J

.field private mNextItem:Lcom/android/gallery3d/data/MediaItem;

.field private mPath:Lcom/android/gallery3d/data/Path;

.field private nextScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private nextScreenNailFuture:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/ui/ScreenNail;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;I)V
    .locals 6
    .parameter
    .parameter "path"
    .parameter "currentIndex"

    .prologue
    const/4 v5, 0x0

    .line 2485
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2483
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mLastFrameTime:J

    .line 2486
    const-string v1, "Gallery2/PhotoDataAdapter"

    const-string v2, "ConShotsAnimationRunnable"

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    iget-wide v1, p1, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCSAnimVersion:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCSAnimVersion:J

    .line 2488
    iget-wide v1, p1, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCSAnimVersion:J

    iput-wide v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mCurrVersion:J

    .line 2489
    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mPath:Lcom/android/gallery3d/data/Path;

    .line 2490
    iput p3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mIndex:I

    .line 2491
    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mEntry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 2492
    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2600(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaItem;

    .line 2493
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2600(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/GalleryApp;

    invoke-static {v1, v0}, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->getAnimationArray(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaItem;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mAnimationItems:Ljava/util/ArrayList;

    .line 2494
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mAnimationItems:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 2495
    iput v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mAnimationCount:I

    .line 2499
    :goto_0
    iput v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mAnimationPositon:I

    .line 2500
    return-void

    .line 2497
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mAnimationItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mAnimationCount:I

    goto :goto_0
.end method


# virtual methods
.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/ui/ScreenNail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2547
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/android/gallery3d/ui/ScreenNail;>;"
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2548
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2504
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$4200(Lcom/android/gallery3d/app/PhotoDataAdapter;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mAnimationCount:I

    if-nez v7, :cond_1

    .line 2505
    :cond_0
    const-string v5, "Gallery2/PhotoDataAdapter"

    const-string v6, "ConShotsAnimationRunnable:run:already paused"

    invoke-static {v5, v6}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    :goto_0
    return-void

    .line 2508
    :cond_1
    const-string v7, "Gallery2/PhotoDataAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ConShotsAnimationRunnable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mAnimationPositon:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    iget v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mIndex:I

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1600(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v9

    if-eq v7, v9, :cond_2

    move v3, v5

    .line 2511
    .local v3, imageChanged:Z
    :goto_1
    iget-wide v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mCurrVersion:J

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-wide v11, v7, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCSAnimVersion:J

    cmp-long v7, v9, v11

    if-eqz v7, :cond_3

    move v7, v5

    :goto_2
    or-int/2addr v3, v7

    .line 2512
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v7, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v4

    .line 2513
    .local v4, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 2514
    .local v0, currentPath:Lcom/android/gallery3d/data/Path;
    :goto_3
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mPath:Lcom/android/gallery3d/data/Path;

    if-eq v7, v0, :cond_5

    :goto_4
    or-int/2addr v3, v5

    .line 2515
    if-eqz v3, :cond_6

    .line 2516
    const-string v5, "Gallery2/PhotoDataAdapter"

    const-string v6, " ConShotsAnimationRunnable:run:image changed"

    invoke-static {v5, v6}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #currentPath:Lcom/android/gallery3d/data/Path;
    .end local v3           #imageChanged:Z
    .end local v4           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_2
    move v3, v6

    .line 2510
    goto :goto_1

    .restart local v3       #imageChanged:Z
    :cond_3
    move v7, v6

    .line 2511
    goto :goto_2

    .restart local v4       #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_4
    move-object v0, v8

    .line 2513
    goto :goto_3

    .restart local v0       #currentPath:Lcom/android/gallery3d/data/Path;
    :cond_5
    move v5, v6

    .line 2514
    goto :goto_4

    .line 2519
    :cond_6
    iput-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->nextScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 2521
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mEntry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V
    invoke-static {v5, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$4300(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 2522
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$4400(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 2523
    iget-boolean v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mIsFirstFrame:Z

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->nextScreenNailFuture:Lcom/android/gallery3d/util/Future;

    if-eqz v5, :cond_9

    .line 2524
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->nextScreenNailFuture:Lcom/android/gallery3d/util/Future;

    invoke-interface {v5}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/ui/ScreenNail;

    iput-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->nextScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 2525
    iput-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->nextScreenNailFuture:Lcom/android/gallery3d/util/Future;

    .line 2526
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->nextScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v5, :cond_7

    .line 2527
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mEntry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->nextScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    iput-object v7, v5, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 2528
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->uploadScreenNail(I)V
    invoke-static {v5, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$4500(Lcom/android/gallery3d/app/PhotoDataAdapter;I)V

    .line 2530
    :cond_7
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mAnimationPositon:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mAnimationPositon:I

    .line 2531
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mAnimationPositon:I

    iget v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mAnimationCount:I

    if-lt v5, v7, :cond_8

    iput v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mAnimationPositon:I

    .line 2532
    :cond_8
    const-wide/16 v7, 0x190

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mLastFrameTime:J

    sub-long/2addr v9, v11

    sub-long/2addr v7, v9

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 2533
    .local v1, delayTime:J
    cmp-long v5, v1, v13

    if-lez v5, :cond_9

    .line 2534
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2538
    .end local v1           #delayTime:J
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mLastFrameTime:J

    .line 2539
    iput-boolean v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mIsFirstFrame:Z

    .line 2541
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mAnimationItems:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mAnimationPositon:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    iput-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mNextItem:Lcom/android/gallery3d/data/MediaItem;

    .line 2542
    const-string v5, "Gallery2/PhotoDataAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mNextItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$4600(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v5

    new-instance v6, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->mNextItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v6, v7, v8}, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v5, v6, p0}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ConShotsAnimationRunnable;->nextScreenNailFuture:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0
.end method
