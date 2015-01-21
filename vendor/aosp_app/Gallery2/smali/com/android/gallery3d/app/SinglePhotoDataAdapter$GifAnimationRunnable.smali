.class Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;
.super Ljava/lang/Object;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SinglePhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GifAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 754
    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsActive:Z
    invoke-static {v7}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1000(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 755
    const-string v7, "SinglePhotoDataAdapter"

    const-string v8, "GifAnimationRunnable:run:already paused"

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :goto_0
    return-void

    .line 760
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;
    invoke-static {v7}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    move-result-object v7

    if-nez v7, :cond_1

    .line 761
    const-string v7, "SinglePhotoDataAdapter"

    const-string v8, "GifAnimationRunnable:run:invalid GifDecoder"

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 766
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 769
    .local v5, preTime:J
    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;
    invoke-static {v7}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentFrameNum:I
    invoke-static {v8}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1200(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getFrameBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 770
    .local v1, curBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    .line 771
    const-string v7, "SinglePhotoDataAdapter"

    const-string v8, "GifAnimationRunnable:onFutureDone:got null frame!"

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 777
    :cond_2
    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;
    invoke-static {v7}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentFrameNum:I
    invoke-static {v8}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1200(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getFrameDuration(I)I

    move-result v7

    int-to-long v2, v7

    .line 779
    .local v2, curDuration:J
    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentFrameNum:I
    invoke-static {v8}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1200(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTotalFrameCount:I
    invoke-static {v9}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1300(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)I

    move-result v9

    rem-int/2addr v8, v9

    #setter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentFrameNum:I
    invoke-static {v7, v8}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1202(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;I)I

    .line 782
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentGifFrame:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1400(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 783
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getGifBackgroundColor()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 784
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 785
    .local v4, m:Landroid/graphics/Matrix;
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 787
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 789
    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentGifFrame:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1400(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/graphics/Bitmap;

    move-result-object v8

    #calls: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->updateGifFrame(Landroid/graphics/Bitmap;)V
    invoke-static {v7, v8}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$1500(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Landroid/graphics/Bitmap;)V

    .line 791
    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$800(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$800(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    add-long v9, v2, v5

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method
