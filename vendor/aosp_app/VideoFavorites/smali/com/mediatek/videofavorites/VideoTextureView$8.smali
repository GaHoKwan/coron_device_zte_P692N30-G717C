.class Lcom/mediatek/videofavorites/VideoTextureView$8;
.super Ljava/lang/Object;
.source "VideoTextureView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


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
    .line 858
    iput-object p1, p0, Lcom/mediatek/videofavorites/VideoTextureView$8;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    const/4 v1, 0x0

    .line 860
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$8;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    #setter for: Lcom/mediatek/videofavorites/VideoTextureView;->mIsSeeking:Z
    invoke-static {v0, v1}, Lcom/mediatek/videofavorites/VideoTextureView;->access$102(Lcom/mediatek/videofavorites/VideoTextureView;Z)Z

    .line 861
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$8;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    #getter for: Lcom/mediatek/videofavorites/VideoTextureView;->mStopWhenSeekComplete:Z
    invoke-static {v0}, Lcom/mediatek/videofavorites/VideoTextureView;->access$200(Lcom/mediatek/videofavorites/VideoTextureView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$8;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    #setter for: Lcom/mediatek/videofavorites/VideoTextureView;->mStopWhenSeekComplete:Z
    invoke-static {v0, v1}, Lcom/mediatek/videofavorites/VideoTextureView;->access$202(Lcom/mediatek/videofavorites/VideoTextureView;Z)Z

    .line 863
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$8;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    invoke-virtual {v0}, Lcom/mediatek/videofavorites/VideoTextureView;->stopPlaybackAsync()V

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$8;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    #getter for: Lcom/mediatek/videofavorites/VideoTextureView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v0}, Lcom/mediatek/videofavorites/VideoTextureView;->access$300(Lcom/mediatek/videofavorites/VideoTextureView;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 868
    const-string v0, "VideoTextureView"

    const-string v1, "calling onSeekComplete()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView$8;->this$0:Lcom/mediatek/videofavorites/VideoTextureView;

    #getter for: Lcom/mediatek/videofavorites/VideoTextureView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v0}, Lcom/mediatek/videofavorites/VideoTextureView;->access$300(Lcom/mediatek/videofavorites/VideoTextureView;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method
