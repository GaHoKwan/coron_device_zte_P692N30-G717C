.class Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayPauseProcessExt"
.end annotation


# instance fields
.field public mNeedCheckPauseSuccess:Z

.field public mPauseSuccess:Z

.field public mPlayVideoWhenPaused:Z

.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2046
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2047
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mPauseSuccess:Z

    .line 2048
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mNeedCheckPauseSuccess:Z

    .line 2049
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mPlayVideoWhenPaused:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2046
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    return-void
.end method

.method private CheckPauseSuccess()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2056
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckPauseSuccess() mNeedCheckPauseSuccess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mNeedCheckPauseSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPauseSuccess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mPauseSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mNeedCheckPauseSuccess:Z

    if-ne v0, v4, :cond_1

    .line 2059
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mPauseSuccess:Z

    if-ne v0, v4, :cond_0

    .line 2060
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3600(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 2061
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mPauseSuccess:Z

    .line 2062
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mNeedCheckPauseSuccess:Z

    .line 2070
    :goto_0
    return-void

    .line 2064
    :cond_0
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mPlayVideoWhenPaused:Z

    .line 2065
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setViewEnabled(Z)V

    goto :goto_0

    .line 2068
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3600(Lcom/android/gallery3d/app/MoviePlayer;)V

    goto :goto_0
.end method

.method static synthetic access$4600(Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2046
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->CheckPauseSuccess()V

    return-void
.end method

.method private handlePauseComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2099
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePauseComplete() mNeedCheckPauseSuccess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mNeedCheckPauseSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPlayVideoWhenPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mPlayVideoWhenPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mNeedCheckPauseSuccess:Z

    if-ne v0, v4, :cond_0

    .line 2102
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mPauseSuccess:Z

    .line 2104
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mPlayVideoWhenPaused:Z

    if-ne v0, v4, :cond_1

    .line 2105
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 2106
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPlaying()V

    .line 2107
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mPauseSuccess:Z

    .line 2108
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mNeedCheckPauseSuccess:Z

    .line 2109
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mPlayVideoWhenPaused:Z

    .line 2111
    :cond_1
    return-void
.end method

.method private showNetWorkErrorDialog()V
    .locals 4

    .prologue
    .line 2119
    const-string v0, "ERROR_DIALOG_TAG"

    .line 2120
    .local v0, errorDialogTag:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$1500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 2121
    .local v2, fragmentManager:Landroid/app/FragmentManager;
    const v3, 0x7f0c01ca

    invoke-static {v3}, Lcom/mediatek/gallery3d/video/ErrorDialogFragment;->newInstance(I)Lcom/mediatek/gallery3d/video/ErrorDialogFragment;

    move-result-object v1

    .line 2124
    .local v1, fragment:Landroid/app/DialogFragment;
    const-string v3, "ERROR_DIALOG_TAG"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2125
    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2126
    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/16 v3, 0x35a

    const/4 v0, 0x1

    .line 2074
    if-eq p2, v3, :cond_0

    const/16 v1, 0x35b

    if-ne p2, v1, :cond_4

    .line 2076
    :cond_0
    const-string v1, "Gallery2/MoviePlayer"

    const-string v2, "onInfo is PAUSE PLAY COMPLETED"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    if-nez p3, :cond_3

    .line 2078
    if-ne p2, v3, :cond_1

    .line 2079
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->handlePauseComplete()V

    .line 2086
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->canPause()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2087
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setViewEnabled(Z)V

    .line 2088
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer;->updateRewindAndForwardUI()V

    .line 2092
    :cond_2
    :goto_1
    return v0

    .line 2082
    :cond_3
    const/16 v1, -0x26

    if-eq p3, v1, :cond_1

    const/16 v1, -0x23

    if-eq p3, v1, :cond_1

    .line 2083
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->showNetWorkErrorDialog()V

    goto :goto_0

    .line 2092
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
