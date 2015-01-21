.class Lcom/mediatek/videofavorites/VideoTextureView$7;
.super Ljava/lang/Object;
.source "VideoTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


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
    .line 634
    iput-object p1, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 637
    const-string v0, "VideoTextureView"

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mSurface:Landroid/view/Surface;

    .line 639
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iput p2, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mSurfaceWidth:I

    .line 640
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iput p3, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mSurfaceHeight:I

    .line 641
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {v0}, Lcom/mediatek/videofavorites/VideoTextureView;->openVideo()V

    .line 642
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .parameter "surface"

    .prologue
    const/4 v2, 0x1

    .line 659
    const-string v0, "VideoTextureView"

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v0, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 661
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mSurface:Landroid/view/Surface;

    .line 662
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v0, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v0, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {v0, v2}, Lcom/mediatek/videofavorites/VideoTextureView;->release(Z)V

    .line 666
    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 6
    .parameter "surface"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 646
    iget-object v4, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iput p2, v4, Lcom/mediatek/videofavorites/VideoTextureView;->mSurfaceWidth:I

    .line 647
    iget-object v4, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iput p3, v4, Lcom/mediatek/videofavorites/VideoTextureView;->mSurfaceHeight:I

    .line 648
    iget-object v4, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v4, v4, Lcom/mediatek/videofavorites/VideoTextureView;->mTargetState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 649
    .local v1, isValidState:Z
    :goto_0
    iget-object v4, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v4, v4, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    if-ne v4, p2, :cond_3

    iget-object v4, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v4, v4, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    if-ne v4, p3, :cond_3

    move v0, v2

    .line 650
    .local v0, hasValidSize:Z
    :goto_1
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 651
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mSeekWhenPrepared:I

    if-eqz v2, :cond_0

    .line 652
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v3, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v3, v3, Lcom/mediatek/videofavorites/VideoTextureView;->mSeekWhenPrepared:I

    invoke-virtual {v2, v3}, Lcom/mediatek/videofavorites/VideoTextureView;->seekTo(I)V

    .line 654
    :cond_0
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$7;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {v2}, Lcom/mediatek/videofavorites/VideoTextureView;->start()V

    .line 656
    :cond_1
    return-void

    .end local v0           #hasValidSize:Z
    .end local v1           #isValidState:Z
    :cond_2
    move v1, v3

    .line 648
    goto :goto_0

    .restart local v1       #isValidState:Z
    :cond_3
    move v0, v3

    .line 649
    goto :goto_1
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surface"

    .prologue
    .line 671
    return-void
.end method
