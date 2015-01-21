.class public Lcom/mediatek/gallery3d/video/WfdPowerSaving;
.super Ljava/lang/Object;
.source "WfdPowerSaving.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;,
        Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;
    }
.end annotation


# static fields
.field private static final POWER_SAVING_MODE_DIM:I = 0x1

.field private static final POWER_SAVING_MODE_IMAGE:I = -0x1

.field private static final POWER_SAVING_MODE_NONE:I = 0x2

.field private static final POWER_SAVING_MODE_OFF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Gallery2/WfdPowerSaving"


# instance fields
.field private mMediaRouter:Landroid/media/MediaRouter;

.field private final mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

.field private mMovieActivity:Lcom/android/gallery3d/app/MovieActivity;

.field private final mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSavingMode:I

.field private mPowerSavingTime:I

.field private mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

.field private final mRootView:Landroid/view/View;

.field private mScreenBrightness:F

.field private mScreenOnReceiver:Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;

.field private mScreenSaver:Landroid/widget/ImageView;

.field private mTurnOnScreenInReceiver:Z

.field private final mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

.field private final mWfdPowerSavingRunnable:Ljava/lang/Runnable;

.field private mWfdReceiver:Landroid/content/BroadcastReceiver;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Lcom/mediatek/gallery3d/video/MTKVideoView;Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 4
    .parameter "rootView"
    .parameter "movieActivity"
    .parameter "videoview"
    .parameter "movieplayer"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mTurnOnScreenInReceiver:Z

    .line 83
    new-instance v1, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;

    invoke-direct {v1, p0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;-><init>(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)V

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mWfdPowerSavingRunnable:Ljava/lang/Runnable;

    .line 272
    new-instance v1, Lcom/mediatek/gallery3d/video/WfdPowerSaving$2;

    invoke-direct {v1, p0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving$2;-><init>(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)V

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    .line 329
    new-instance v1, Lcom/mediatek/gallery3d/video/WfdPowerSaving$3;

    invoke-direct {v1, p0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving$3;-><init>(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)V

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    .line 353
    new-instance v1, Lcom/mediatek/gallery3d/video/WfdPowerSaving$4;

    invoke-direct {v1, p0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving$4;-><init>(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)V

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 64
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPowerManager:Landroid/os/PowerManager;

    .line 66
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mWindow:Landroid/view/Window;

    .line 67
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 68
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mScreenBrightness:F

    .line 71
    const-string v1, "media_router"

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter;

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mMediaRouter:Landroid/media/MediaRouter;

    .line 72
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 73
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mRootView:Landroid/view/View;

    .line 74
    iput-object p3, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    .line 75
    iput-object p2, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mMovieActivity:Lcom/android/gallery3d/app/MovieActivity;

    .line 77
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->getPowerSavingMode()I

    move-result v1

    iput v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPowerSavingMode:I

    .line 78
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->getPowerSavingDelay()I

    move-result v1

    iput v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPowerSavingTime:I

    .line 80
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->initialzeScreenSaver()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPowerSavingMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/gallery3d/video/WfdPowerSaving;Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;)Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mScreenOnReceiver:Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/gallery3d/video/WfdPowerSaving;Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;)Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mScreenOnReceiver:Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Lcom/android/gallery3d/app/MovieActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mMovieActivity:Lcom/android/gallery3d/app/MovieActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Lcom/mediatek/gallery3d/video/MTKVideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->updatePresentation()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Landroid/view/Window;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mTurnOnScreenInReceiver:Z

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/gallery3d/video/WfdPowerSaving;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mTurnOnScreenInReceiver:Z

    return p1
.end method

.method private getPowerSavingDelay()I
    .locals 5

    .prologue
    .line 168
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mMovieActivity:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 169
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "wifi_display_power_saving_delay"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 170
    .local v0, delayTime:I
    const-string v2, "Gallery2/WfdPowerSaving"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPowerSavingDelay delayTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    mul-int/lit16 v2, v0, 0x3e8

    return v2
.end method

.method private getPowerSavingMode()I
    .locals 5

    .prologue
    .line 161
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mMovieActivity:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 162
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "wifi_display_power_saving_option"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, mode:I
    const-string v2, "Gallery2/WfdPowerSaving"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPowerSavingMode mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v0
.end method

.method private initialzeScreenSaver()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 127
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 130
    .local v0, matchParent:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mMovieActivity:Lcom/android/gallery3d/app/MovieActivity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mScreenSaver:Landroid/widget/ImageView;

    .line 131
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mScreenSaver:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 132
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mScreenSaver:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mMovieActivity:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 134
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mScreenSaver:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mMovieActivity:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 136
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mScreenSaver:Landroid/widget/ImageView;

    const v2, 0x7f02014a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mScreenSaver:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 139
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mScreenSaver:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mScreenSaver:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    return-void
.end method

.method private leavePowerSavingMode()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 202
    const-string v4, "Gallery2/WfdPowerSaving"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "leavePowerSavingMode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPowerSavingMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPowerSavingMode:I

    packed-switch v4, :pswitch_data_0

    .line 239
    :goto_0
    :pswitch_0
    return-void

    .line 205
    :pswitch_1
    const-string v4, "Gallery2/WfdPowerSaving"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPowerManager.isScreenOn(); "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4, v7}, Landroid/os/PowerManager;->setBacklightOffForWFD(Z)V

    goto :goto_0

    .line 210
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mTurnOnScreenInReceiver:Z

    goto :goto_0

    .line 214
    :pswitch_2
    const-string v4, "Gallery2/WfdPowerSaving"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "leavePowerSavingMode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    if-eqz v4, :cond_1

    .line 216
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mMovieActivity:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 217
    .local v0, actionbar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 218
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v3

    .line 219
    .local v3, position:I
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v1

    .line 220
    .local v1, duration:I
    invoke-virtual {p0, v7}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->showImage(Z)V

    .line 221
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    invoke-virtual {v4}, Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;->removeSurfaceView()V

    .line 222
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 223
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    .line 224
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mRootView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 225
    invoke-virtual {p0, v3, v1}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->startVideo(II)V

    .line 229
    .end local v0           #actionbar:Landroid/app/ActionBar;
    .end local v1           #duration:I
    .end local v3           #position:I
    :cond_1
    :pswitch_3
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 230
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iget v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mScreenBrightness:F

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 231
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private updatePresentation()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 301
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 303
    .local v2, route:Landroid/media/MediaRouter$RouteInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v1

    .line 306
    .local v1, presentationDisplay:Landroid/view/Display;
    :goto_0
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    invoke-virtual {v4}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v4

    if-eq v4, v1, :cond_0

    .line 307
    const-string v4, "Gallery2/WfdPowerSaving"

    const-string v5, "Dismissing presentation because the current route no longer has a presentation display."

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 310
    iput-object v3, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    .line 314
    :cond_0
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    .line 315
    const-string v4, "Gallery2/WfdPowerSaving"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Showing presentation on display: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v4, Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    iget-object v5, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mMovieActivity:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v6, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-direct {v4, p0, v5, v1, v6}, Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;-><init>(Lcom/mediatek/gallery3d/video/WfdPowerSaving;Landroid/content/Context;Landroid/view/Display;Landroid/view/SurfaceView;)V

    iput-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    .line 317
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    iget-object v5, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 319
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    invoke-virtual {v4}, Landroid/app/Presentation;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_1
    :goto_1
    return-void

    .end local v1           #presentationDisplay:Landroid/view/Display;
    :cond_2
    move-object v1, v3

    .line 303
    goto :goto_0

    .line 320
    .restart local v1       #presentationDisplay:Landroid/view/Display;
    :catch_0
    move-exception v0

    .line 321
    .local v0, ex:Landroid/view/WindowManager$InvalidDisplayException;
    const-string v4, "Gallery2/WfdPowerSaving"

    const-string v5, "Couldn\'t show presentation!  Display was removed in the meantime."

    invoke-static {v4, v5, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    iput-object v3, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    goto :goto_1
.end method


# virtual methods
.method public cancelCountDownTime(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 195
    const-string v0, "Gallery2/WfdPowerSaving"

    const-string v1, "cancelCountDownTime"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mWfdPowerSavingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->leavePowerSavingMode()V

    .line 198
    return-void
.end method

.method public cancelPowerSaving()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public checkShowImage()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPresentation:Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->showImage(Z)V

    .line 158
    :cond_0
    return-void
.end method

.method public refreshPowerSavingPara()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "Gallery2/WfdPowerSaving"

    const-string v1, "refreshPowerSavingPara"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->getPowerSavingMode()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPowerSavingMode:I

    .line 177
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->getPowerSavingDelay()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPowerSavingTime:I

    .line 178
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mMovieActivity:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 290
    return-void
.end method

.method public restartCountDownTime(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 188
    const-string v0, "Gallery2/WfdPowerSaving"

    const-string v1, "restartCountDownTime"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mWfdPowerSavingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mWfdPowerSavingRunnable:Ljava/lang/Runnable;

    iget v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPowerSavingTime:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->leavePowerSavingMode()V

    .line 192
    return-void
.end method

.method public showImage(Z)V
    .locals 3
    .parameter "needShow"

    .prologue
    .line 144
    const-string v0, "Gallery2/WfdPowerSaving"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showImage() needShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mScreenSaver:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mScreenSaver:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public startCountDownTime(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 182
    const-string v0, "Gallery2/WfdPowerSaving"

    const-string v1, "startCountDownTime"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mWfdPowerSavingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mWfdPowerSavingRunnable:Ljava/lang/Runnable;

    iget v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPowerSavingTime:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    return-void
.end method

.method public startVideo(II)V
    .locals 0
    .parameter "position"
    .parameter "duration"

    .prologue
    .line 120
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mMovieActivity:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 294
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mScreenOnReceiver:Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mScreenOnReceiver:Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;->unregister()V

    .line 297
    :cond_0
    return-void
.end method
