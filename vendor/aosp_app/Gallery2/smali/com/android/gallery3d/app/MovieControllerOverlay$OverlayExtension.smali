.class Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverlayExtension"
.end annotation


# instance fields
.field private mAlwaysShowBottom:Z

.field private mCanPause:Z

.field private mEnableScrubbing:Z

.field private mLastState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

.field private mLogoPic:Landroid/graphics/drawable/Drawable;

.field private mPlayingInfo:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 1
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mCanPause:Z

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mEnableScrubbing:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;Lcom/android/gallery3d/app/MovieControllerOverlay$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mEnableScrubbing:Z

    return v0
.end method


# virtual methods
.method public clearBuffering()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 530
    const-string v0, "Gallery2/MovieControllerOverlay"

    const-string v1, "clearBuffering()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/TimeBar;->setSecondaryProgress(I)V

    .line 533
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->showBuffering(ZI)V

    .line 534
    return-void
.end method

.method public handleHide()Z
    .locals 3

    .prologue
    .line 632
    const-string v0, "Gallery2/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHide() mAlwaysShowBottom"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mAlwaysShowBottom:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mAlwaysShowBottom:Z

    return v0
.end method

.method public handleShowPaused()Z
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/TimeBar;->setInfo(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->BUFFERING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 674
    sget-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mLastState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 675
    const/4 v0, 0x1

    .line 677
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleShowPlaying()Z
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->BUFFERING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 665
    sget-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mLastState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 666
    const/4 v0, 0x1

    .line 668
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleUpdateViews()Z
    .locals 3

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v2, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v2, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v2, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->BUFFERING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v2, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->RETRY_CONNECTING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v2, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v2, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->RETRY_CONNECTING_ERROR:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mCanPause:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mPlayingInfo:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_1

    .line 720
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mPlayingInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/TimeBar;->setInfo(Ljava/lang/String;)V

    .line 722
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 706
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public isPlayingEnd()Z
    .locals 4

    .prologue
    .line 653
    const-string v1, "Gallery2/MovieControllerOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlayingEnd() state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, v3, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, end:Z
    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v2, v2, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v2, v2, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->RETRY_CONNECTING_ERROR:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v2, v2, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v1, v2, :cond_1

    .line 658
    :cond_0
    const/4 v0, 0x1

    .line 660
    :cond_1
    return v0
.end method

.method public onShowEnded()V
    .locals 2

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->clearBuffering()V

    .line 698
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/TimeBar;->setInfo(Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method public onShowErrorMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->clearBuffering()V

    .line 703
    return-void
.end method

.method public onShowLoading(Z)V
    .locals 3
    .parameter "isHttp"

    .prologue
    .line 687
    if-eqz p1, :cond_0

    .line 688
    const v0, 0x7f0c01ee

    .line 692
    .local v0, msgId:I
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v2, v2, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/app/TimeBar;->setInfo(Ljava/lang/String;)V

    .line 694
    return-void

    .line 690
    .end local v0           #msgId:I
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    const v0, 0x2050055

    .restart local v0       #msgId:I
    goto :goto_0
.end method

.method public onShowMainView()V
    .locals 3

    .prologue
    .line 727
    const-string v0, "Gallery2/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowMainView() enableScrubbing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mEnableScrubbing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v2, v2, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mEnableScrubbing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_1

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/TimeBar;->setScrubbing(Z)V

    .line 736
    :goto_0
    return-void

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/TimeBar;->setScrubbing(Z)V

    goto :goto_0
.end method

.method public setBottomPanel(ZZ)V
    .locals 4
    .parameter "alwaysShow"
    .parameter "foreShow"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 595
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mAlwaysShowBottom:Z

    .line 596
    if-nez p1, :cond_1

    .line 597
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 598
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 601
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mLogoPic:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 602
    const-string v0, "Gallery2/MovieControllerOverlay"

    const-string v1, "setBottomPanel() dissmiss orange logo picuture"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iput-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mLogoPic:Landroid/graphics/drawable/Drawable;

    .line 604
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 605
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 606
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 625
    :cond_0
    :goto_0
    const-string v0, "Gallery2/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBottomPanel("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-void

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mLogoPic:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 612
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 613
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mLogoPic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 617
    :goto_1
    if-eqz p2, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const v1, 0x7f020166

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public setCanPause(Z)V
    .locals 3
    .parameter "canPause"

    .prologue
    .line 579
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mCanPause:Z

    .line 581
    const-string v0, "Gallery2/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCanPause("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void
.end method

.method public setCanScrubbing(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 586
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mEnableScrubbing:Z

    .line 587
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/TimeBar;->setScrubbing(Z)V

    .line 589
    const-string v0, "Gallery2/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCanScrubbing("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-void
.end method

.method public setLogoPic([B)V
    .locals 3
    .parameter "byteArray"

    .prologue
    .line 643
    invoke-static {p1}, Lcom/mediatek/gallery3d/util/MtkUtils;->bytesToDrawable([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 644
    .local v0, backgound:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 645
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 646
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 647
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 648
    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mLogoPic:Landroid/graphics/drawable/Drawable;

    .line 649
    return-void
.end method

.method public setPlayingInfo(Z)V
    .locals 4
    .parameter "liveStreaming"

    .prologue
    .line 562
    if-eqz p1, :cond_0

    .line 563
    const v0, 0x2050053

    .line 567
    .local v0, msgId:I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mPlayingInfo:Ljava/lang/String;

    .line 569
    const-string v1, "Gallery2/MovieControllerOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPlayingInfo("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") playingInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mPlayingInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-void

    .line 565
    .end local v0           #msgId:I
    :cond_0
    const v0, 0x2050054

    .restart local v0       #msgId:I
    goto :goto_0
.end method

.method public showBuffering(ZI)V
    .locals 7
    .parameter "fullBuffer"
    .parameter "percent"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x64

    .line 498
    const-string v2, "Gallery2/MovieControllerOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showBuffering("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lastState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mLastState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v4, v4, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    if-eqz p1, :cond_0

    .line 503
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v2, v2, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v2, p2}, Lcom/android/gallery3d/app/TimeBar;->setSecondaryProgress(I)V

    .line 524
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v2, v2, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v2, v2, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v2, v3, :cond_2

    .line 507
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v2, v2, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mLastState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 509
    :cond_2
    if-ltz p2, :cond_3

    if-ge p2, v5, :cond_3

    .line 510
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    sget-object v3, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->BUFFERING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v3, v2, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 511
    const v0, 0x205004f

    .line 512
    .local v0, msgId:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v2, v2, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/app/TimeBar;->setInfo(Ljava/lang/String;)V

    .line 515
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, v3, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)V

    goto :goto_0

    .line 516
    .end local v0           #msgId:I
    .end local v1           #text:Ljava/lang/String;
    :cond_3
    if-ne p2, v5, :cond_4

    .line 517
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mLastState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v3, v2, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 518
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v2, v2, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v2, v6}, Lcom/android/gallery3d/app/TimeBar;->setInfo(Ljava/lang/String;)V

    .line 519
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, v3, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)V

    goto :goto_0

    .line 521
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mLastState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v3, v2, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 522
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v2, v2, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v2, v6}, Lcom/android/gallery3d/app/TimeBar;->setInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showReconnecting(I)V
    .locals 6
    .parameter "times"

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->clearBuffering()V

    .line 538
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    sget-object v3, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->RETRY_CONNECTING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v3, v2, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 539
    const v0, 0x7f0c01ed

    .line 540
    .local v0, msgId:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v2, v2, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/app/TimeBar;->setInfo(Ljava/lang/String;)V

    .line 542
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, v3, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)V

    .line 544
    const-string v2, "Gallery2/MovieControllerOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showReconnecting("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void
.end method

.method public showReconnectingError()V
    .locals 4

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->clearBuffering()V

    .line 550
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    sget-object v3, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->RETRY_CONNECTING_ERROR:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v3, v2, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 551
    const v0, 0x2050058

    .line 552
    .local v0, msgId:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v2, v2, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/app/TimeBar;->setInfo(Ljava/lang/String;)V

    .line 554
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, v3, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)V

    .line 556
    const-string v2, "Gallery2/MovieControllerOverlay"

    const-string v3, "showReconnectingError()"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-void
.end method
