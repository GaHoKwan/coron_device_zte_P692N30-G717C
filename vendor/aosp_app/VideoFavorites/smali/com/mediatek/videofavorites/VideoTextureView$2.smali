.class Lcom/mediatek/videofavorites/VideoTextureView$2;
.super Ljava/lang/Object;
.source "VideoTextureView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 407
    iput-object p1, p0, Lcom/mediatek/videofavorites/VideoTextureView$2;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$2;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {v0}, Lcom/mediatek/videofavorites/VideoTextureView;->isInPlaybackState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$2;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    .line 414
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$2;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iput v1, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    .line 415
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$2;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v0, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$2;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v0, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$2;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v0, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mSurface:Landroid/view/Surface;

    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 417
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$2;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v0, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView$2;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v1, v1, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView$2;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget v2, v2, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setSize(II)V

    .line 418
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$2;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v0, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mSurface:Landroid/view/Surface;

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    goto :goto_0
.end method
