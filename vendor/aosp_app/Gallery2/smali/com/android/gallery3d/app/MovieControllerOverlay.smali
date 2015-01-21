.class public Lcom/android/gallery3d/app/MovieControllerOverlay;
.super Lcom/android/gallery3d/app/CommonControllerOverlay;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;,
        Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;,
        Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;,
        Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;
    }
.end annotation


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "Gallery2/MovieControllerOverlay"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private hidden:Z

.field private final hideAnimation:Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;

.field private mControllerButtonPosition:I

.field private mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

.field private mLogoView:Landroid/widget/ImageView;

.field private mLogoViewExt:Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;

.field private mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

.field private mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

.field private mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

.field private final startHidingRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLogoViewExt:Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;

    .line 90
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$1;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    .line 99
    const v0, 0x7f050004

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 104
    invoke-static {p1}, Lcom/mediatek/gallery3d/video/ExtensionHelper;->getMovieStrategy(Landroid/content/Context;)Lcom/mediatek/gallery3d/ext/IMovieStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IMovieStrategy;->shouldEnableRewindAndForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    .line 109
    :cond_0
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    .line 110
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;Lcom/android/gallery3d/app/MovieControllerOverlay$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLogoViewExt:Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;->init(Landroid/content/Context;)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;->access$200(Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;Landroid/content/Context;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHiding()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLogoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mLogoView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/mediatek/gallery3d/video/ScreenModeManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerButtonPosition:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerButtonPosition:I

    return p1
.end method

.method private cancelHiding()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 264
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 265
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 266
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->onCancelHiding()V

    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->onCancelHiding()V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 271
    return-void
.end method

.method private maybeStartHiding()V
    .locals 4

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 238
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    :cond_0
    const-string v0, "Gallery2/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maybeStartHiding() state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method

.method private showMainView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 207
    iput-object p1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    .line 208
    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    if-ne v3, v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->onShowMainView()V

    .line 216
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    .line 217
    return-void

    :cond_0
    move v0, v2

    .line 208
    goto :goto_0

    :cond_1
    move v0, v2

    .line 210
    goto :goto_1

    :cond_2
    move v1, v2

    .line 212
    goto :goto_2
.end method

.method private startHideAnimation(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    :cond_0
    return-void
.end method

.method private startHiding()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 248
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->onStartHiding()V

    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->onStartHiding()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 254
    return-void
.end method


# virtual methods
.method protected createTimeBar(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 171
    new-instance v1, Lcom/android/gallery3d/app/TimeBar;

    invoke-direct {v1, p1, p0}, Lcom/android/gallery3d/app/TimeBar;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/TimeBar$Listener;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    .line 173
    const/16 v0, 0x8

    .line 174
    .local v0, mTimeBarId:I
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 176
    return-void
.end method

.method public getControllerRewindAndForwardExt()Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    return-object v0
.end method

.method public getOverlayExt()Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    return-object v0
.end method

.method public getTimeBarEnabled()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/TimeBar;->getScrubbing()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x4

    .line 180
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 181
    .local v0, wasHidden:Z
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 182
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->handleHide()Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->onHide()V

    .line 191
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->onHide()V

    .line 195
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 197
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onHidden()V

    .line 201
    :cond_2
    const-string v1, "Gallery2/MovieControllerOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide() wasHidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    .line 286
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 281
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 276
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 290
    const-string v0, "Gallery2/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", canReplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mCanReplay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v0, :cond_4

    .line 294
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->RETRY_CONNECTING_ERROR:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_2

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onReplay()V

    .line 310
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_1

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onPlayPause()V

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setViewEnabled(Z)V

    goto :goto_0

    .line 305
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->onClick(Landroid/view/View;)V

    .line 306
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    .line 356
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/CommonControllerOverlay;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v12

    .line 387
    .local v12, width:I
    iget-object v7, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    .line 388
    .local v7, insets:Landroid/graphics/Rect;
    iget v9, v7, Landroid/graphics/Rect;->left:I

    .line 389
    .local v9, pl:I
    iget v10, v7, Landroid/graphics/Rect;->right:I

    .line 390
    .local v10, pr:I
    iget v11, v7, Landroid/graphics/Rect;->top:I

    .line 391
    .local v11, pt:I
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 393
    .local v8, pb:I
    sub-int v5, p5, p3

    .line 394
    .local v5, h:I
    sub-int v4, p4, p2

    .line 395
    .local v4, w:I
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x1

    .line 397
    .local v6, error:Z
    :goto_0
    sub-int v13, v5, v8

    .line 405
    .local v13, y:I
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v2

    sub-int v2, v13, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v4, v13}, Landroid/view/View;->layout(IIII)V

    .line 407
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    add-int v1, v9, v10

    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v2

    sub-int v2, v13, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v3, v4, v10

    iget-object v14, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    invoke-virtual {v14}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->getHeight()I

    move-result v14

    sub-int v14, v13, v14

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/view/View;->layout(IIII)V

    .line 408
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    invoke-virtual {v0, v10, v12, v13, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->onLayout(IIII)V

    .line 413
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    invoke-virtual {v0, v4, v10, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->onLayout(III)V

    .line 415
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/app/CommonControllerOverlay;->layoutCenteredView(Landroid/view/View;IIII)V

    .line 417
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 418
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/app/CommonControllerOverlay;->layoutCenteredView(Landroid/view/View;IIII)V

    .line 420
    :cond_0
    return-void

    .line 395
    .end local v6           #error:Z
    .end local v13           #y:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 410
    .restart local v6       #error:Z
    .restart local v13       #y:I
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v2

    sub-int v2, v13, v2

    invoke-virtual {v0, v1, v2, v4, v13}, Landroid/view/View;->layout(IIII)V

    .line 411
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v1

    sub-int v1, v13, v1

    sub-int v2, v4, v10

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->getAddedRightPadding()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v9, v1, v2, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method public onScrubbingEnd(III)V
    .locals 0
    .parameter "time"
    .parameter "trimStartTime"
    .parameter "trimEndTime"

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    .line 466
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/app/CommonControllerOverlay;->onScrubbingEnd(III)V

    .line 467
    return-void
.end method

.method public onScrubbingMove(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 460
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->onScrubbingMove(I)V

    .line 461
    return-void
.end method

.method public onScrubbingStart()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 454
    invoke-super {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->onScrubbingStart()V

    .line 455
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 361
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    :cond_0
    :goto_0
    return v2

    .line 364
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_2

    .line 365
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    goto :goto_0

    .line 368
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 370
    :pswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 373
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mEnableScrubbing:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onPlayPause()V

    goto :goto_0

    .line 378
    :pswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPlayPauseReplayResume()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onIsRTSP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const-string v0, "Gallery2/MovieControllerOverlay"

    const-string v1, "setPlayPauseReplayResume is enabled is true"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 340
    :cond_0
    return-void
.end method

.method public setScreenModeManager(Lcom/mediatek/gallery3d/video/ScreenModeManager;)V
    .locals 3
    .parameter "manager"

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

    .line 473
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/ScreenModeManager;->addListener(Lcom/mediatek/gallery3d/video/ScreenModeManager$ScreenModeListener;)V

    .line 477
    :cond_0
    const-string v0, "Gallery2/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenModeManager("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method

.method public setViewEnabled(Z)V
    .locals 3
    .parameter "isEnabled"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onIsRTSP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const-string v0, "Gallery2/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewEnabled is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->setCanScrubbing(Z)V

    .line 322
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->setViewEnabled(Z)V

    .line 327
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 222
    .local v0, wasHidden:Z
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 223
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateViews()V

    .line 224
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 226
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onShown()V

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    .line 231
    const-string v1, "Gallery2/MovieControllerOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show() wasHidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method public showEnded()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->onShowEnded()V

    .line 138
    sget-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 141
    const-string v0, "Gallery2/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEnded() state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->onShowErrorMessage(Ljava/lang/String;)V

    .line 161
    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e2aaaab

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 163
    .local v0, padding:I
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 165
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 167
    return-void
.end method

.method public showLoading(Z)V
    .locals 3
    .parameter "isHttp"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->onShowLoading(Z)V

    .line 152
    sget-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 155
    const-string v0, "Gallery2/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showLoading() state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public showPaused()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->handleShowPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    sget-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 132
    :cond_0
    const-string v0, "Gallery2/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPaused() state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method public showPlaying()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->handleShowPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 122
    :cond_0
    const-string v0, "Gallery2/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPlaying() state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method protected updateViews()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 423
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_0

    .line 447
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v3, :cond_4

    const v0, 0x7f0201c4

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 432
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->onShow()V

    .line 433
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->onShow()V

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->handleUpdateViews()Z

    move-result v0

    if-nez v0, :cond_3

    .line 437
    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mCanReplay:Z

    if-eqz v0, :cond_6

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 444
    const-string v0, "Gallery2/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateViews() state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", canReplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mCanReplay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v3, :cond_5

    const v0, 0x7f0201c3

    goto :goto_1

    :cond_5
    const v0, 0x7f0201c5

    goto :goto_1

    .line 437
    :cond_6
    const/16 v0, 0x8

    goto :goto_2
.end method
