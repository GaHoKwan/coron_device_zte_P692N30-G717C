.class Lcom/mediatek/gallery3d/video/MTKVideoView$6;
.super Ljava/lang/Object;
.source "MTKVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/video/MTKVideoView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/video/MTKVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 7
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 307
    const-string v4, "Gallery2/VideoPlayer/MTKVideoView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "surfaceChanged("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v4, "Gallery2/VideoPlayer/MTKVideoView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "surfaceChanged() mMediaPlayer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$4300(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mTargetState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$4400(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mVideoWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$4500(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mVideoHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$4600(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #setter for: Landroid/widget/VideoView;->mSurfaceWidth:I
    invoke-static {v4, p3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$4702(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I

    .line 314
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #setter for: Landroid/widget/VideoView;->mSurfaceHeight:I
    invoke-static {v4, p4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$4802(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I

    .line 315
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$4900(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 316
    .local v1, isValidState:Z
    :goto_0
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$5000(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v4

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$5100(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v4

    if-ne v4, p4, :cond_3

    move v0, v2

    .line 317
    .local v0, hasValidSize:Z
    :goto_1
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$5200(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 318
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$5300(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$5400(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 321
    :cond_0
    const-string v2, "Gallery2/VideoPlayer/MTKVideoView"

    const-string v3, "surfaceChanged() start()"

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 324
    :cond_1
    return-void

    .end local v0           #hasValidSize:Z
    .end local v1           #isValidState:Z
    :cond_2
    move v1, v3

    .line 315
    goto :goto_0

    .restart local v1       #isValidState:Z
    :cond_3
    move v0, v3

    .line 316
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 328
    const-string v0, "Gallery2/VideoPlayer/MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #setter for: Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$5502(Lcom/mediatek/gallery3d/video/MTKVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 331
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->openVideo()V

    .line 332
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 337
    const-string v0, "Gallery2/VideoPlayer/MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceDestroyed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$5602(Lcom/mediatek/gallery3d/video/MTKVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 340
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$5700(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$5800(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->release(Z)V

    .line 344
    return-void
.end method
