.class Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerRewindAndForwardExt"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1479
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    return-void
.end method


# virtual methods
.method public onForward()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1555
    const-string v4, "Gallery2/MoviePlayer"

    const-string v5, "ControllerRewindAndForwardExt onForward()"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1557
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$3400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;
    invoke-static {v5}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->canStop()Z

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v6}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/VideoView;->canSeekBackward()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v6}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;
    invoke-static {v6}, Lcom/android/gallery3d/app/MoviePlayer;->access$3400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    move-result-object v6

    invoke-interface {v6}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->getTimeBarEanbled()Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    invoke-interface {v4, v5, v2, v3}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->showControllerButtonsView(ZZZ)V

    .line 1562
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MoviePlayer;->getStepOptionValue()I

    move-result v0

    .line 1563
    .local v0, stepValue:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v3

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v1

    .line 1567
    .local v1, targetDuration:I
    :goto_1
    const-string v2, "Gallery2/MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onForward targetDuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 1576
    .end local v0           #stepValue:I
    .end local v1           #targetDuration:I
    :goto_2
    return-void

    :cond_0
    move v2, v3

    .line 1557
    goto :goto_0

    .line 1563
    .restart local v0       #stepValue:I
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v2

    add-int v1, v2, v0

    goto :goto_1

    .line 1570
    .end local v0           #stepValue:I
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$3400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;
    invoke-static {v5}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->canStop()Z

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v6}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/VideoView;->canSeekBackward()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v6}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;
    invoke-static {v6}, Lcom/android/gallery3d/app/MoviePlayer;->access$3400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    move-result-object v6

    invoke-interface {v6}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->getTimeBarEanbled()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_3
    invoke-interface {v4, v5, v2, v3}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->showControllerButtonsView(ZZZ)V

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3
.end method

.method public onHidden()V
    .locals 0

    .prologue
    .line 1502
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->onHidden()V

    .line 1503
    return-void
.end method

.method public onIsRTSP()Z
    .locals 1

    .prologue
    .line 1511
    const/4 v0, 0x0

    return v0
.end method

.method public onPlayPause()V
    .locals 0

    .prologue
    .line 1482
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->onPlayPause()V

    .line 1483
    return-void
.end method

.method public onReplay()V
    .locals 0

    .prologue
    .line 1506
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->onReplay()V

    .line 1507
    return-void
.end method

.method public onRewind()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1524
    const-string v4, "Gallery2/MoviePlayer"

    const-string v5, "ControllerRewindAndForwardExt onRewind()"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->canSeekBackward()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1526
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$3400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;
    invoke-static {v5}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->canStop()Z

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v6}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v6}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v7}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v7

    if-ge v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;
    invoke-static {v6}, Lcom/android/gallery3d/app/MoviePlayer;->access$3400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    move-result-object v6

    invoke-interface {v6}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->getTimeBarEanbled()Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    invoke-interface {v4, v5, v3, v2}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->showControllerButtonsView(ZZZ)V

    .line 1535
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MoviePlayer;->getStepOptionValue()I

    move-result v0

    .line 1536
    .local v0, stepValue:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v2

    sub-int/2addr v2, v0

    if-gez v2, :cond_1

    move v1, v3

    .line 1539
    .local v1, targetDuration:I
    :goto_1
    const-string v2, "Gallery2/MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRewind targetDuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 1552
    .end local v0           #stepValue:I
    .end local v1           #targetDuration:I
    :goto_2
    return-void

    :cond_0
    move v2, v3

    .line 1526
    goto :goto_0

    .line 1536
    .restart local v0       #stepValue:I
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v2

    sub-int v1, v2, v0

    goto :goto_1

    .line 1542
    .end local v0           #stepValue:I
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$3400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;
    invoke-static {v5}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->canStop()Z

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v6}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v6}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v7}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v7

    if-ge v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;
    invoke-static {v6}, Lcom/android/gallery3d/app/MoviePlayer;->access$3400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    move-result-object v6

    invoke-interface {v6}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->getTimeBarEanbled()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_3
    invoke-interface {v4, v5, v3, v2}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->showControllerButtonsView(ZZZ)V

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3
.end method

.method public onSeekEnd(III)V
    .locals 0
    .parameter "time"
    .parameter "trimStartTime"
    .parameter "trimEndTime"

    .prologue
    .line 1494
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->onSeekEnd(III)V

    .line 1495
    return-void
.end method

.method public onSeekMove(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 1490
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->onSeekMove(I)V

    .line 1491
    return-void
.end method

.method public onSeekStart()V
    .locals 0

    .prologue
    .line 1486
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->onSeekStart()V

    .line 1487
    return-void
.end method

.method public onShown()V
    .locals 0

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->onShown()V

    .line 1499
    return-void
.end method

.method public onStopVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1515
    const-string v0, "Gallery2/MoviePlayer"

    const-string v1, "ControllerRewindAndForwardExt onStopVideo()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->canStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->stopVideo()V

    .line 1518
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    move-result-object v0

    invoke-interface {v0, v2, v2, v2}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->showControllerButtonsView(ZZZ)V

    .line 1521
    :cond_0
    return-void
.end method
