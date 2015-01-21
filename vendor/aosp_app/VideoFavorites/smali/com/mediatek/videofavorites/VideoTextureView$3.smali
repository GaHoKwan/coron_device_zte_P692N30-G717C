.class Lcom/mediatek/videofavorites/VideoTextureView$3;
.super Ljava/lang/Object;
.source "VideoTextureView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videofavorites/VideoTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/videofavorites/VideoTextureView;


# direct methods
.method constructor <init>(Lcom/mediatek/videofavorites/VideoTextureView;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 8
    .parameter "mp"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 429
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    if-eq v2, v4, :cond_1

    .line 430
    const-string v2, "VideoTextureView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepared(): ignored, mCurrentState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v4, v4, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iput v7, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    .line 435
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    if-nez v2, :cond_3

    .line 439
    :cond_2
    invoke-virtual {p1, v3, v3}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 442
    .local v0, data:Landroid/media/Metadata;
    if-nez v0, :cond_8

    .line 443
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iput-boolean v4, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mCanPause:Z

    .line 444
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iput-boolean v4, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mCanSeekBack:Z

    .line 445
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iput-boolean v4, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mCanSeekForward:Z

    .line 456
    .end local v0           #data:Landroid/media/Metadata;
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v2, :cond_4

    .line 457
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v5, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v5, v5, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v5}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 459
    :cond_4
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_5

    .line 460
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 462
    :cond_5
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    iput v4, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    .line 463
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    iput v4, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    .line 465
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v1, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mSeekWhenPrepared:I

    .line 466
    .local v1, seekToPosition:I
    if-eqz v1, :cond_6

    .line 467
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {v2, v1}, Lcom/mediatek/videofavorites/VideoTextureView;->seekTo(I)V

    .line 469
    :cond_6
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    if-nez v2, :cond_11

    .line 472
    :cond_7
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mTargetState:I

    if-ne v2, v6, :cond_f

    .line 473
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {v2}, Lcom/mediatek/videofavorites/VideoTextureView;->start()V

    .line 475
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_0

    .line 476
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    goto :goto_0

    .line 447
    .end local v1           #seekToPosition:I
    .restart local v0       #data:Landroid/media/Metadata;
    :cond_8
    iget-object v5, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_9
    move v2, v4

    :goto_2
    iput-boolean v2, v5, Lcom/mediatek/videofavorites/VideoTextureView;->mCanPause:Z

    .line 449
    iget-object v5, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_a
    move v2, v4

    :goto_3
    iput-boolean v2, v5, Lcom/mediatek/videofavorites/VideoTextureView;->mCanSeekBack:Z

    .line 451
    iget-object v5, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_b
    move v2, v4

    :goto_4
    iput-boolean v2, v5, Lcom/mediatek/videofavorites/VideoTextureView;->mCanSeekForward:Z

    goto/16 :goto_1

    :cond_c
    move v2, v3

    .line 447
    goto :goto_2

    :cond_d
    move v2, v3

    .line 449
    goto :goto_3

    :cond_e
    move v2, v3

    .line 451
    goto :goto_4

    .line 478
    .end local v0           #data:Landroid/media/Metadata;
    .restart local v1       #seekToPosition:I
    :cond_f
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {v2}, Lcom/mediatek/videofavorites/VideoTextureView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_10

    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {v2}, Lcom/mediatek/videofavorites/VideoTextureView;->getCurrentPosition()I

    move-result v2

    if-lez v2, :cond_0

    .line 480
    :cond_10
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_0

    .line 481
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->show(I)V

    goto/16 :goto_0

    .line 487
    :cond_11
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mSurface:Landroid/view/Surface;

    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 488
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mSurface:Landroid/view/Surface;

    iget-object v4, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v4, v4, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    iget-object v5, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v5, v5, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    invoke-virtual {v2, v4, v5}, Landroid/view/Surface;->setSize(II)V

    .line 489
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mSurface:Landroid/view/Surface;

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 490
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 502
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mTargetState:I

    if-ne v2, v6, :cond_12

    .line 503
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {v2}, Lcom/mediatek/videofavorites/VideoTextureView;->start()V

    .line 504
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_0

    .line 505
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    goto/16 :goto_0

    .line 507
    :cond_12
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {v2}, Lcom/mediatek/videofavorites/VideoTextureView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_13

    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {v2}, Lcom/mediatek/videofavorites/VideoTextureView;->getCurrentPosition()I

    move-result v2

    if-lez v2, :cond_0

    .line 509
    :cond_13
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$3;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->show(I)V

    goto/16 :goto_0
.end method
