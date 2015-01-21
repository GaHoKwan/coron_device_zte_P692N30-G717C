.class public Lcom/android/mms/ui/SlideshowPresenter;
.super Lcom/android/mms/ui/Presenter;
.source "SlideshowPresenter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "SlideshowPresenter"


# instance fields
.field private mActivityRunning:Z

.field private mCurPage:I

.field protected final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field protected mHeightTransformRatio:F

.field protected mLocation:I

.field private mPageChanged:Z

.field protected final mSlideNumber:I

.field mStartingService:Landroid/os/PowerManager$WakeLock;

.field private final mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field protected mWidthTransformRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 5
    .parameter "context"
    .parameter "view"
    .parameter "model"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v4, 0x1

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/Presenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 64
    iput v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    .line 65
    iput v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    .line 70
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    .line 72
    const/16 v2, 0x320

    iput v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHeight:I

    .line 77
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->mActivityRunning:Z

    .line 81
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mCurPage:I

    .line 82
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mPageChanged:Z

    .line 85
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mStartingService:Landroid/os/PowerManager$WakeLock;

    .line 120
    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideshowPresenter$1;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 89
    iput v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 90
    iget-object v2, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v2, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    .line 93
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 95
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 96
    .local v0, pm:Landroid/os/PowerManager;
    const v2, 0x3000000a

    const-string v3, "StartingSlideService"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mStartingService:Landroid/os/PowerManager$WakeLock;

    .line 99
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 103
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 104
    .local v1, winM:Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_2

    .line 105
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHeight:I

    .line 110
    :goto_0
    instance-of v2, p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v2, :cond_1

    .line 111
    check-cast p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .end local p2
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    invoke-interface {p2, v2}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V

    .line 116
    :cond_1
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->mActivityRunning:Z

    .line 118
    return-void

    .line 107
    .restart local p2
    :cond_2
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHeight:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowPresenter;II)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->getWidthTransformRatio(II)F

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowPresenter;II)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->getHeightTransformRatio(II)F

    move-result v0

    return v0
.end method

.method private getHeightTransformRatio(II)F
    .locals 2
    .parameter "height"
    .parameter "layoutHeight"

    .prologue
    .line 149
    if-lez p1, :cond_0

    .line 150
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 152
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private getWidthTransformRatio(II)F
    .locals 2
    .parameter "width"
    .parameter "layoutWidth"

    .prologue
    .line 142
    if-lez p1, :cond_0

    .line 143
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 145
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private transformHeight(I)I
    .locals 2
    .parameter "height"

    .prologue
    .line 160
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private transformWidth(I)I
    .locals 2
    .parameter "width"

    .prologue
    .line 156
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public cancelBackgroundLoading()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public getLocation()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    return v0
.end method

.method public goBackward()V
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    if-lez v0, :cond_0

    .line 374
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 376
    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 2

    .prologue
    .line 379
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 380
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 382
    :cond_0
    return-void
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 3
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    .line 387
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mActivityRunning:Z

    if-nez v1, :cond_1

    .line 388
    const-string v1, "SlideshowPresenter"

    const-string v2, "onModelChanged after mActivityRunning = false"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    instance-of v1, v1, Lcom/android/mms/ui/SlideViewInterface;

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v1, Lcom/android/mms/ui/SlideViewInterface;

    invoke-interface {v1}, Lcom/android/mms/ui/SlideViewInterface;->stopAudio()V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    .line 398
    .local v0, view:Lcom/android/mms/ui/SlideViewInterface;
    instance-of v1, p1, Lcom/android/mms/model/SlideshowModel;

    if-nez v1, :cond_0

    .line 400
    instance-of v1, p1, Lcom/android/mms/model/SlideModel;

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 401
    check-cast v1, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/ui/SlideshowPresenter$2;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 408
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideshowPresenter$3;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 414
    :cond_3
    instance-of v1, p1, Lcom/android/mms/model/MediaModel;

    if-eqz v1, :cond_5

    .line 415
    instance-of v1, p1, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v1, :cond_4

    .line 416
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$4;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$4;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    move-object v1, p1

    .line 421
    check-cast v1, Lcom/android/mms/model/MediaModel;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$5;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$5;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 428
    :cond_5
    instance-of v1, p1, Lcom/android/mms/model/RegionModel;

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 441
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mActivityRunning:Z

    .line 445
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 447
    iput-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mStartingService:Landroid/os/PowerManager$WakeLock;

    .line 450
    :cond_0
    return-void
.end method

.method public present(Lcom/android/mms/util/ItemLoadedCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    .line 168
    return-void
.end method

.method protected presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V
    .locals 4
    .parameter "view"
    .parameter "audio"
    .parameter "dataChanged"

    .prologue
    .line 245
    if-eqz p3, :cond_0

    .line 246
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    .line 249
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 250
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_2

    .line 251
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startAudio()V

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 252
    :cond_2
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_3

    .line 253
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseAudio()V

    goto :goto_0

    .line 254
    :cond_3
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_4

    .line 255
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopAudio()V

    goto :goto_0

    .line 256
    :cond_4
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_1

    .line 257
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSeekTo()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->seekAudio(I)V

    goto :goto_0
.end method

.method protected presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 8
    .parameter "view"
    .parameter "image"
    .parameter "r"
    .parameter "dataChanged"

    .prologue
    .line 284
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v4

    .line 285
    .local v4, transformedWidth:I
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v3

    .line 296
    .local v3, transformedHeight:I
    if-eqz p4, :cond_0

    .line 298
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, lowerName:Ljava/lang/String;
    const-string v5, ".gif"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 301
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v1           #lowerName:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    instance-of v5, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v5, :cond_1

    move-object v5, p1

    .line 318
    check-cast v5, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v6

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v7

    invoke-interface {v5, v6, v7, v4, v3}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setImageRegion(IIII)V

    .line 324
    :cond_1
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/android/mms/ui/SlideViewInterface;->setImageRegionFit(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isVisible()Z

    move-result v5

    invoke-interface {p1, v5}, Lcom/android/mms/ui/SlideViewInterface;->setImageVisibility(Z)V

    .line 326
    return-void

    .line 304
    .restart local v1       #lowerName:Ljava/lang/String;
    .restart local v2       #name:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v6

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v7

    invoke-virtual {p2, v6, v7}, Lcom/android/mms/model/ImageModel;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 308
    .end local v1           #lowerName:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "SlideshowPresenter"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200d3

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V
    .locals 2
    .parameter "view"
    .parameter "rMedia"
    .parameter "dataChanged"

    .prologue
    .line 232
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v0

    .line 233
    .local v0, r:Lcom/android/mms/model/RegionModel;
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    check-cast p2, Lcom/android/mms/model/TextModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 235
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    check-cast p2, Lcom/android/mms/model/ImageModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_0

    .line 237
    .restart local p2
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    check-cast p2, Lcom/android/mms/model/VideoModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_0
.end method

.method protected presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .locals 6
    .parameter "view"
    .parameter "model"

    .prologue
    const/4 v5, 0x1

    .line 177
    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->mActivityRunning:Z

    if-nez v4, :cond_1

    .line 225
    :cond_0
    return-void

    .line 181
    :cond_1
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 183
    instance-of v4, p1, Lcom/android/mms/ui/SlideView;

    if-eqz v4, :cond_2

    .line 184
    invoke-virtual {p2}, Lcom/android/mms/model/Model;->getCurrentPage()I

    move-result v1

    .local v1, curPage:I
    move-object v4, p1

    .line 185
    check-cast v4, Lcom/android/mms/ui/SlideView;

    invoke-virtual {v4, v1}, Lcom/android/mms/ui/SlideView;->setPageDividerView(I)V

    .line 186
    iget v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->mCurPage:I

    if-eq v4, v1, :cond_4

    .line 187
    iput v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mCurPage:I

    .line 188
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideshowPresenter;->mPageChanged:Z

    .line 194
    .end local v1           #curPage:I
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/MediaModel;

    .line 195
    .local v3, media:Lcom/android/mms/model/MediaModel;
    instance-of v4, v3, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v4, :cond_5

    .line 196
    check-cast v3, Lcom/android/mms/model/RegionMediaModel;

    .end local v3           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {p0, p1, v3, v5}, Lcom/android/mms/ui/SlideshowPresenter;->presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V

    goto :goto_1

    .line 190
    .end local v2           #i$:Ljava/util/Iterator;
    .restart local v1       #curPage:I
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->mPageChanged:Z

    goto :goto_0

    .line 197
    .end local v1           #curPage:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #media:Lcom/android/mms/model/MediaModel;
    :cond_5
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 200
    instance-of v4, p1, Lcom/android/mms/ui/SlideView;

    if-eqz v4, :cond_7

    .line 202
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 203
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v4, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v4, :cond_6

    .line 208
    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->mPageChanged:Z

    if-eqz v4, :cond_3

    .line 209
    check-cast v3, Lcom/android/mms/model/AudioModel;

    .end local v3           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {p0, p1, v3, v5}, Lcom/android/mms/ui/SlideshowPresenter;->presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V

    move-object v4, p1

    .line 210
    check-cast v4, Lcom/android/mms/ui/SlideView;

    invoke-virtual {v4}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    goto :goto_1

    .line 215
    .restart local v3       #media:Lcom/android/mms/model/MediaModel;
    :cond_6
    invoke-virtual {v3, v0}, Lcom/android/mms/model/MediaModel;->appendActionAtFirst(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 218
    check-cast v3, Lcom/android/mms/model/AudioModel;

    .end local v3           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {p0, p1, v3, v5}, Lcom/android/mms/ui/SlideshowPresenter;->presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V

    goto :goto_1

    .line 220
    .end local v0           #action:Lcom/android/mms/model/MediaModel$MediaAction;
    .restart local v3       #media:Lcom/android/mms/model/MediaModel;
    :cond_7
    check-cast v3, Lcom/android/mms/model/AudioModel;

    .end local v3           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {p0, p1, v3, v5}, Lcom/android/mms/ui/SlideshowPresenter;->presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V

    goto :goto_1
.end method

.method protected presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 5
    .parameter "view"
    .parameter "text"
    .parameter "r"
    .parameter "dataChanged"

    .prologue
    .line 263
    if-eqz p4, :cond_0

    .line 264
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/mms/ui/SlideViewInterface;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_0
    instance-of v0, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 268
    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v1

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v2

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setTextRegion(IIII)V

    .line 274
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isVisible()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/mms/ui/SlideViewInterface;->setTextVisibility(Z)V

    .line 275
    return-void
.end method

.method protected presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 6
    .parameter "view"
    .parameter "video"
    .parameter "r"
    .parameter "dataChanged"

    .prologue
    .line 335
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 336
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    if-eqz p4, :cond_2

    .line 337
    instance-of v1, p1, Lcom/android/mms/ui/SlideView;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->hasDrmContent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->hasDrmRight()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mPageChanged:Z

    if-nez v1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setVideo(Ljava/lang/String;Landroid/net/Uri;)V

    .line 344
    :cond_2
    instance-of v1, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 345
    check-cast v1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v2

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v4

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setVideoRegion(IIII)V

    .line 351
    :cond_3
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isVisible()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->setVideoVisibility(Z)V

    .line 353
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_4

    .line 354
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startVideo()V

    goto :goto_0

    .line 355
    :cond_4
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_5

    .line 356
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseVideo()V

    goto :goto_0

    .line 357
    :cond_5
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_6

    .line 358
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopVideo()V

    goto :goto_0

    .line 359
    :cond_6
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_0

    .line 360
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSeekTo()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->seekVideo(I)V

    goto :goto_0
.end method

.method public setLocation(I)V
    .locals 0
    .parameter "location"

    .prologue
    .line 365
    iput p1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 366
    return-void
.end method
