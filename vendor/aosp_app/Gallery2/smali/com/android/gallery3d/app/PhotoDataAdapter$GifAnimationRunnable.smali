.class Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GifAnimationRunnable"
.end annotation


# instance fields
.field private mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

.field private mPath:Lcom/android/gallery3d/data/Path;

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;)V
    .locals 6
    .parameter
    .parameter "path"
    .parameter "gifAnimation"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2625
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2626
    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mPath:Lcom/android/gallery3d/data/Path;

    .line 2627
    iput-object p3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    .line 2628
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v3, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    if-nez v3, :cond_2

    .line 2629
    :cond_0
    const-string v3, "Gallery2/PhotoDataAdapter"

    const-string v4, "GifAnimationRunnable:invalid GifDecoder"

    invoke-static {v3, v4}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->releaseGifResource()V

    .line 2654
    :cond_1
    :goto_0
    return-void

    .line 2635
    :cond_2
    const/4 v1, 0x0

    .line 2636
    .local v1, imageChanged:Z
    invoke-virtual {p1, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 2637
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 2638
    .local v0, currentPath:Lcom/android/gallery3d/data/Path;
    :goto_1
    if-eq p2, v0, :cond_4

    move v3, v4

    :goto_2
    or-int/2addr v1, v3

    .line 2639
    if-eqz v1, :cond_5

    .line 2640
    const-string v3, "Gallery2/PhotoDataAdapter"

    const-string v4, "GifAnimationRunnable:image changed"

    invoke-static {v3, v4}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->releaseGifResource()V

    goto :goto_0

    .line 2637
    .end local v0           #currentPath:Lcom/android/gallery3d/data/Path;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0       #currentPath:Lcom/android/gallery3d/data/Path;
    :cond_4
    move v3, v5

    .line 2638
    goto :goto_2

    .line 2645
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iput v5, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->currentFrame:I

    .line 2646
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v5, v5, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-virtual {v5}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getTotalFrameCount()I

    move-result v5

    iput v5, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->totalFrameCount:I

    .line 2648
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget v3, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->totalFrameCount:I

    if-gt v3, v4, :cond_1

    .line 2649
    const-string v3, "Gallery2/PhotoDataAdapter"

    const-string v4, "GifAnimationRunnable:invalid frame count, NO animation!"

    invoke-static {v3, v4}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->releaseGifResource()V

    goto :goto_0
.end method

.method private releaseGifResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2618
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    if-eqz v0, :cond_0

    .line 2619
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iput-object v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    .line 2621
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    .line 2623
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2659
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z
    invoke-static {v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$4200(Lcom/android/gallery3d/app/PhotoDataAdapter;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2660
    const-string v8, "Gallery2/PhotoDataAdapter"

    const-string v9, "GifAnimationRunnable:run:already paused"

    invoke-static {v8, v9}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->releaseGifResource()V

    .line 2728
    :goto_0
    return-void

    .line 2665
    :cond_0
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v9, v9, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    if-nez v9, :cond_2

    .line 2666
    :cond_1
    const-string v8, "Gallery2/PhotoDataAdapter"

    const-string v9, "GifAnimationRunnable:run:invalid GifDecoder"

    invoke-static {v8, v9}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->releaseGifResource()V

    goto :goto_0

    .line 2673
    :cond_2
    const/4 v5, 0x0

    .line 2674
    .local v5, imageChanged:Z
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v9, v11}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v6

    .line 2675
    .local v6, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 2676
    .local v3, currentPath:Lcom/android/gallery3d/data/Path;
    :goto_1
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mPath:Lcom/android/gallery3d/data/Path;

    if-eq v9, v3, :cond_4

    move v9, v10

    :goto_2
    or-int/2addr v5, v9

    .line 2677
    if-eqz v5, :cond_5

    .line 2678
    const-string v8, "Gallery2/PhotoDataAdapter"

    const-string v9, " GifAnimationRunnable:run:image changed"

    invoke-static {v8, v9}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->releaseGifResource()V

    goto :goto_0

    .end local v3           #currentPath:Lcom/android/gallery3d/data/Path;
    :cond_3
    move-object v3, v8

    .line 2675
    goto :goto_1

    .restart local v3       #currentPath:Lcom/android/gallery3d/data/Path;
    :cond_4
    move v9, v11

    .line 2676
    goto :goto_2

    .line 2684
    :cond_5
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v9, v9, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    iget-object v12, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget v12, v12, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->currentFrame:I

    invoke-virtual {v9, v12}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getFrameBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2686
    .local v0, curBitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_6

    .line 2687
    const-string v8, "Gallery2/PhotoDataAdapter"

    const-string v9, "GifAnimationRunnable:run:got null frame!"

    invoke-static {v8, v9}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->releaseGifResource()V

    goto :goto_0

    .line 2694
    :cond_6
    const/16 v9, 0x800

    invoke-static {v0, v9, v10}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2695
    invoke-static {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->replaceGifBackground(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2696
    const-string v9, "Gallery2/PhotoDataAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GifAnimationRunnable:run:update frame["

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget v12, v12, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->currentFrame:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "]"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v9, v9, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget v10, v10, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->currentFrame:I

    invoke-virtual {v9, v10}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getFrameDuration(I)I

    move-result v9

    int-to-long v1, v9

    .line 2703
    .local v1, curDuration:J
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget v10, v10, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->currentFrame:I

    add-int/lit8 v10, v10, 0x1

    iget-object v12, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget v12, v12, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->totalFrameCount:I

    rem-int/2addr v10, v12

    iput v10, v9, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->currentFrame:I

    .line 2706
    const/4 v4, 0x0

    .line 2707
    .local v4, gifFrame:Lcom/android/gallery3d/ui/ScreenNail;
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v9, v11}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getMtkScreenNail(Lcom/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v7

    .line 2709
    .local v7, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-nez v7, :cond_7

    .line 2710
    new-instance v7, Lcom/android/gallery3d/ui/BitmapScreenNail;

    .end local v7           #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-direct {v7, v0}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    .line 2712
    .restart local v7       #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :cond_7
    move-object v4, v7

    .line 2714
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v9, v9, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iget-object v9, v9, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_8

    .line 2715
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v9, v9, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iget-object v9, v9, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 2716
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v9, v9, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iput-object v8, v9, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    .line 2719
    :cond_8
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v8, v8, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iput-object v4, v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    .line 2721
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v9, v9, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$4300(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 2723
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$4400(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 2725
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method
