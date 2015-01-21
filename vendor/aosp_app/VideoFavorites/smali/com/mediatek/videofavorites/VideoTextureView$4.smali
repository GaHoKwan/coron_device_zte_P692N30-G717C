.class Lcom/mediatek/videofavorites/VideoTextureView$4;
.super Ljava/lang/Object;
.source "VideoTextureView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 521
    iput-object p1, p0, Lcom/mediatek/videofavorites/VideoTextureView$4;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    const/4 v1, 0x5

    .line 523
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$4;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iput v1, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    .line 524
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$4;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iput v1, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mTargetState:I

    .line 525
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$4;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v0, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$4;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v0, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$4;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v0, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$4;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v0, v0, Lcom/mediatek/videofavorites/VideoTextureView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView$4;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    iget-object v1, v1, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 531
    :cond_1
    return-void
.end method
