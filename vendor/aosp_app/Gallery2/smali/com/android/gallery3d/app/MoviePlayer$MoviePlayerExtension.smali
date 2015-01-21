.class Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Lcom/android/gallery3d/app/MoviePlayer$Restorable;
.implements Lcom/mediatek/gallery3d/ext/IMoviePlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoviePlayerExtension"
.end annotation


# static fields
.field private static final KEY_VIDEO_IS_LOOP:Ljava/lang/String; = "video_is_loop"


# instance fields
.field private mAuthor:Ljava/lang/String;

.field private mBookmark:Lcom/mediatek/gallery3d/video/BookmarkEnhance;

.field private mCopyRight:Ljava/lang/String;

.field private mIsLoop:Z

.field private mLastCanPaused:Z

.field private mLastPlaying:Z

.field private mPauseBuffering:Z

.field private mResumeNeed:Z

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 1815
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1826
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mResumeNeed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1815
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1815
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mPauseBuffering:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1815
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->pauseIfNeed()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1815
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->resumeIfNeed()V

    return-void
.end method

.method private pauseIfNeed()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1988
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->canStop()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->canPause()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastCanPaused:Z

    .line 1989
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastCanPaused:Z

    if-eqz v0, :cond_1

    .line 1990
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseIfNeed mTState= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$1100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$TState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$TState;

    move-result-object v0

    sget-object v3, Lcom/android/gallery3d/app/MoviePlayer$TState;->PLAYING:Lcom/android/gallery3d/app/MoviePlayer$TState;

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastPlaying:Z

    .line 1992
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->clearBuffering()V

    .line 1993
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mPauseBuffering:Z

    .line 1995
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mPlayPauseProcessExt:Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mPlayVideoWhenPaused:Z

    .line 1996
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->isCurrentPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onIsRTSP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1997
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mPlayPauseProcessExt:Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mPauseSuccess:Z

    .line 1998
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mPlayPauseProcessExt:Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mNeedCheckPauseSuccess:Z

    .line 2000
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2600(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 2004
    :cond_1
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseIfNeed() mLastPlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastCanPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastCanPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPauseBuffering="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mPauseBuffering:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mTState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$TState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    return-void

    :cond_2
    move v0, v2

    .line 1988
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 1991
    goto/16 :goto_1
.end method

.method private resumeIfNeed()V
    .locals 3

    .prologue
    .line 2010
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastCanPaused:Z

    if-eqz v0, :cond_0

    .line 2011
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastPlaying:Z

    if-eqz v0, :cond_0

    .line 2012
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mPauseBuffering:Z

    .line 2014
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$TState;->PLAYING:Lcom/android/gallery3d/app/MoviePlayer$TState;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1102(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$TState;)Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 2015
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mPlayPauseProcessExt:Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;

    move-result-object v0

    #calls: Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->CheckPauseSuccess()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->access$4600(Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;)V

    .line 2019
    :cond_0
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeIfNeed() mLastPlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastCanPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastCanPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPauseBuffering="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mPauseBuffering:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    return-void
.end method


# virtual methods
.method public addBookmark()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1868
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mBookmark:Lcom/mediatek/gallery3d/video/BookmarkEnhance;

    if-nez v0, :cond_0

    .line 1869
    new-instance v0, Lcom/mediatek/gallery3d/video/BookmarkEnhance;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/gallery3d/video/BookmarkEnhance;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mBookmark:Lcom/mediatek/gallery3d/video/BookmarkEnhance;

    .line 1871
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4200(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1872
    .local v2, uri:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mBookmark:Lcom/mediatek/gallery3d/video/BookmarkEnhance;

    invoke-virtual {v0, v2}, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1873
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v0

    const v1, 0x7f0c0217

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1879
    :goto_0
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addBookmark() mTitle="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mUri="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$4200(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    return-void

    .line 1875
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mBookmark:Lcom/mediatek/gallery3d/video/BookmarkEnhance;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$4200(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;

    .line 1876
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v0

    const v1, 0x7f0c0218

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public canStop()Z
    .locals 4

    .prologue
    .line 1856
    const/4 v0, 0x0

    .line 1857
    .local v0, stopped:Z
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1858
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$3100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->isPlayingEnd()Z

    move-result v0

    .line 1861
    :cond_0
    const-string v1, "Gallery2/MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canStop() stopped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLoop()Z
    .locals 3

    .prologue
    .line 1886
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLoop() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mIsLoop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mIsLoop:Z

    return v0
.end method

.method public onFirstShow(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 1973
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->pauseIfNeed()V

    .line 1975
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFirstShow() mLastPlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    return-void
.end method

.method public onLastDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 1981
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->resumeIfNeed()V

    .line 1983
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLastDismiss() mLastPlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 1960
    const-string v0, "video_is_loop"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mIsLoop:Z

    .line 1961
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mIsLoop:Z

    if-eqz v0, :cond_0

    .line 1962
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setCanReplay(Z)V

    .line 1964
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1968
    const-string v0, "video_is_loop"

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mIsLoop:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1969
    return-void
.end method

.method public pauseBuffering()Z
    .locals 1

    .prologue
    .line 2027
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mPauseBuffering:Z

    return v0
.end method

.method public setLoop(Z)V
    .locals 3
    .parameter "loop"

    .prologue
    .line 1894
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoop("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mIsLoop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mIsLoop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4300(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1897
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mIsLoop:Z

    .line 1898
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$TState;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$TState;->STOPED:Lcom/android/gallery3d/app/MoviePlayer$TState;

    if-eq v0, v1, :cond_0

    .line 1900
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setCanReplay(Z)V

    .line 1903
    :cond_0
    return-void
.end method

.method public setVideoInfo(Landroid/media/Metadata;)V
    .locals 4
    .parameter "data"

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x7

    const/4 v1, 0x5

    .line 2031
    invoke-virtual {p1, v1}, Landroid/media/Metadata;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2032
    invoke-virtual {p1, v1}, Landroid/media/Metadata;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mTitle:Ljava/lang/String;

    .line 2034
    :cond_0
    invoke-virtual {p1, v3}, Landroid/media/Metadata;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2035
    invoke-virtual {p1, v3}, Landroid/media/Metadata;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mAuthor:Ljava/lang/String;

    .line 2037
    :cond_1
    invoke-virtual {p1, v2}, Landroid/media/Metadata;->has(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2038
    invoke-virtual {p1, v2}, Landroid/media/Metadata;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mCopyRight:Ljava/lang/String;

    .line 2040
    :cond_2
    return-void
.end method

.method public showDetail()V
    .locals 5

    .prologue
    .line 1907
    new-instance v0, Lcom/mediatek/gallery3d/video/DetailDialog;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mAuthor:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mCopyRight:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/gallery3d/video/DetailDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    .local v0, detailDialog:Lcom/mediatek/gallery3d/video/DetailDialog;
    const v1, 0x7f0c0223

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 1909
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension$1;-><init>(Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1919
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension$2;-><init>(Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1929
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1930
    return-void
.end method

.method public startNextVideo(Lcom/mediatek/gallery3d/ext/IMovieItem;)V
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 1934
    move-object v1, p1

    .line 1935
    .local v1, next:Lcom/mediatek/gallery3d/ext/IMovieItem;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$4200(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v3

    if-eq v1, v3, :cond_0

    .line 1936
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v2

    .line 1937
    .local v2, position:I
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v0

    .line 1942
    .local v0, duration:I
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$4400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/Bookmarker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$4200(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/gallery3d/app/Bookmarker;->setBookmark(Landroid/net/Uri;II)V

    .line 1945
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/VideoView;->stopPlayback()V

    .line 1946
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1947
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->clearVideoInfo()V
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$4000(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 1948
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-static {v3, v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$4202(Lcom/android/gallery3d/app/MoviePlayer;Lcom/mediatek/gallery3d/ext/IMovieItem;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    .line 1949
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$1500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$4200(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/MovieActivity;->refreshMovieInfo(Lcom/mediatek/gallery3d/ext/IMovieItem;)V

    .line 1950
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->doStartVideoCareDrm(ZII)V
    invoke-static {v3, v5, v5, v5}, Lcom/android/gallery3d/app/MoviePlayer;->access$2000(Lcom/android/gallery3d/app/MoviePlayer;ZII)V

    .line 1951
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1955
    .end local v0           #duration:I
    .end local v2           #position:I
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$1500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 1956
    return-void

    .line 1953
    :cond_0
    const-string v3, "Gallery2/MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot play the next video! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopVideo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1831
    const-string v0, "Gallery2/MoviePlayer"

    const-string v1, "stopVideo()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$TState;->STOPED:Lcom/android/gallery3d/app/MoviePlayer$TState;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1102(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$TState;)Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 1834
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->clearSeek()V

    .line 1835
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->clearDuration()V

    .line 1836
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 1837
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setResumed(Z)V

    .line 1838
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1839
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1840
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->clearVideoInfo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4000(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 1841
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mFirstBePlayed:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4102(Lcom/android/gallery3d/app/MoviePlayer;Z)Z

    .line 1842
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setCanReplay(Z)V

    .line 1843
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showEnded()V

    .line 1844
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setViewEnabled(Z)V

    .line 1851
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$900(Lcom/android/gallery3d/app/MoviePlayer;)I

    .line 1852
    return-void
.end method
