.class public Lcom/android/camera/manager/MotionTrackViewManager;
.super Lcom/android/camera/manager/ViewManager;
.source "MotionTrackViewManager.java"


# static fields
.field private static final DIRECTION_DOWN:I = 0x3

.field private static final DIRECTION_LEFT:I = 0x1

.field private static final DIRECTION_RIGHT:I = 0x0

.field private static final DIRECTION_UNKNOWN:I = 0x4

.field private static final DIRECTION_UP:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final NONE_ORIENTATION:I = -0x1

.field private static final PROGRESS_ZERO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MotionTrackView"

.field private static final TARGET_DISTANCE_HORIZONTAL:I = 0x20

.field private static final TARGET_DISTANCE_VERTICAL:I = 0x18


# instance fields
.field private mCamera:Lcom/android/camera/Camera;

.field private mCenterWindow:Landroid/widget/ImageView;

.field private mDisplayOrientaion:I

.field private mDisplayRotation:I

.field protected mHandler:Landroid/os/Handler;

.field private mHoldOrientation:I

.field private mNaviWindow:Landroid/view/View;

.field private mNeedInitialize:Z

.field private mNormalWindowDrawable:Landroid/graphics/drawable/Drawable;

.field private mOnSizeChangedListener:Lcom/android/camera/ui/RotateLayout$OnSizeChangedListener;

.field private mPanoView:Landroid/view/View;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

.field private mRootView:Landroid/view/View;

.field private mScreenProgressLayout:Lcom/android/camera/ui/RotateLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/MotionTrackViewManager;->LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mNeedInitialize:Z

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mHoldOrientation:I

    .line 130
    new-instance v0, Lcom/android/camera/manager/MotionTrackViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/MotionTrackViewManager$1;-><init>(Lcom/android/camera/manager/MotionTrackViewManager;)V

    iput-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mOnSizeChangedListener:Lcom/android/camera/ui/RotateLayout$OnSizeChangedListener;

    .line 52
    iput-object p1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mCamera:Lcom/android/camera/Camera;

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/ViewManager;->setFileter(Z)V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/manager/MotionTrackViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mPreviewWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/manager/MotionTrackViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mPreviewHeight:I

    return p1
.end method


# virtual methods
.method public checkConfiguration()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Lcom/android/camera/manager/ViewManager;->checkConfiguration()V

    .line 83
    const-string v0, "MotionTrackView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkConfiguration,mcamera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mCamera:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->reInflate()V

    .line 89
    :cond_0
    return-void
.end method

.method protected getView()Landroid/view/View;
    .locals 3

    .prologue
    .line 59
    const-string v1, "MotionTrackView"

    const-string v2, "getView"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const v1, 0x7f04002a

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ViewManager;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mRootView:Landroid/view/View;

    .line 62
    return-object v0
.end method

.method public hideCaptureView()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mCenterWindow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mCenterWindow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    :cond_0
    return-void
.end method

.method public hideNaviWindowView()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mNaviWindow:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    return-void
.end method

.method public hideProgressIndicaotr()V
    .locals 3

    .prologue
    .line 210
    const-string v0, "MotionTrackView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideProgressIndicaotr,mProgressIndicator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProgressIndicator;->setProgress(I)V

    .line 213
    iget-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProgressIndicator;->setVisibility(I)V

    .line 215
    :cond_0
    return-void
.end method

.method protected initializeViewManager()V
    .locals 4

    .prologue
    .line 108
    const-string v1, "MotionTrackView"

    const-string v2, "initializeViewManager"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mRootView:Landroid/view/View;

    const v2, 0x7f0b0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mPanoView:Landroid/view/View;

    .line 110
    iget-object v1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mRootView:Landroid/view/View;

    const v2, 0x7f0b00ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mScreenProgressLayout:Lcom/android/camera/ui/RotateLayout;

    .line 112
    iget-object v1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mRootView:Landroid/view/View;

    const v2, 0x7f0b0095

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mCenterWindow:Landroid/widget/ImageView;

    .line 113
    iget-object v1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mRootView:Landroid/view/View;

    const v2, 0x7f0b0096

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mNaviWindow:Landroid/view/View;

    .line 115
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mNormalWindowDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    new-instance v1, Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/ui/ProgressIndicator;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    .line 119
    iget-object v1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ProgressIndicator;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ProgressIndicator;->setOrientation(I)V

    .line 122
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 236
    const-string v0, "MotionTrackView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged mContext.getCameraState()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 239
    invoke-super {p0, p1}, Lcom/android/camera/manager/ViewManager;->onOrientationChanged(I)V

    .line 240
    iget-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ProgressIndicator;->setOrientation(I)V

    .line 243
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mHoldOrientation:I

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_1
    iput p1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mHoldOrientation:I

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/camera/manager/ViewManager;->onRelease()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mNeedInitialize:Z

    .line 94
    return-void
.end method

.method public resetController()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "MotionTrackView"

    const-string v1, "resetController"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mCenterWindow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mNaviWindow:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    invoke-virtual {p0}, Lcom/android/camera/manager/MotionTrackViewManager;->hideProgressIndicaotr()V

    .line 144
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ProgressIndicator;->setProgress(I)V

    .line 128
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 67
    const-string v0, "MotionTrackView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show,mNeedInitialize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mNeedInitialize:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getDisplayOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mDisplayOrientaion:I

    .line 69
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getDisplayRotation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mDisplayRotation:I

    .line 70
    iget-boolean v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mNeedInitialize:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/camera/manager/MotionTrackViewManager;->initializeViewManager()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mNeedInitialize:Z

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/MotionTrackViewManager;->showCaptureView()V

    .line 75
    return-void
.end method

.method public showCaptureView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 197
    iget v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mHoldOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 198
    iget v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mHoldOrientation:I

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/MotionTrackViewManager;->onOrientationChanged(I)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mPanoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mCenterWindow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    return-void
.end method

.method public showCenterRectangelFrame()V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mCenterWindow:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mRootView:Landroid/view/View;

    const v2, 0x7f0b0095

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mCenterWindow:Landroid/widget/ImageView;

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mNormalWindowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mNormalWindowDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mCenterWindow:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mNormalWindowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    return-void
.end method

.method public showNaviWindowView()V
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mHoldOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 219
    iget v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mHoldOrientation:I

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/MotionTrackViewManager;->onOrientationChanged(I)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mNaviWindow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    return-void
.end method

.method public showProgressIndicator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProgressIndicator;->setProgress(I)V

    .line 206
    iget-object v0, p0, Lcom/android/camera/manager/MotionTrackViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProgressIndicator;->setVisibility(I)V

    .line 207
    return-void
.end method

.method public updateMovingUI(IIZ)V
    .locals 16
    .parameter "xPos"
    .parameter "yPos"
    .parameter "shown"

    .prologue
    .line 147
    const-string v13, "MotionTrackView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onFrame,updateMovingUI ,x = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",y = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/manager/MotionTrackViewManager;->mNaviWindow:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/manager/MotionTrackViewManager;->mNaviWindow:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    if-nez v13, :cond_1

    .line 149
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/manager/MotionTrackViewManager;->mNaviWindow:Landroid/view/View;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :goto_0
    return-void

    .line 153
    :cond_1
    move/from16 v0, p1

    int-to-short v9, v0

    .line 154
    .local v9, x:S
    move/from16 v0, p2

    int-to-short v11, v0

    .line 155
    .local v11, y:S
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/manager/MotionTrackViewManager;->mCenterWindow:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/manager/MotionTrackViewManager;->mCenterWindow:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    add-int v1, v13, v14

    .line 156
    .local v1, cwx:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/manager/MotionTrackViewManager;->mCenterWindow:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/manager/MotionTrackViewManager;->mCenterWindow:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    add-int v2, v13, v14

    .line 157
    .local v2, cwy:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/manager/MotionTrackViewManager;->mPanoView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/Camera;->getPreviewFrameWidth()I

    move-result v14

    int-to-float v14, v14

    div-float v10, v13, v14

    .line 158
    .local v10, x_ratio:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/manager/MotionTrackViewManager;->mPanoView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/Camera;->getPreviewFrameHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v12, v13, v14

    .line 162
    .local v12, y_ratio:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/manager/MotionTrackViewManager;->mDisplayOrientaion:I

    const/16 v14, 0xb4

    if-ne v13, v14, :cond_4

    .line 163
    neg-int v13, v9

    int-to-short v9, v13

    .line 164
    neg-int v13, v11

    int-to-short v11, v13

    .line 175
    :cond_2
    :goto_1
    int-to-float v13, v9

    mul-float/2addr v13, v10

    float-to-int v13, v13

    int-to-short v9, v13

    .line 176
    int-to-float v13, v11

    mul-float/2addr v13, v12

    float-to-int v13, v13

    int-to-short v11, v13

    .line 178
    neg-int v13, v9

    add-int v4, v13, v1

    .line 179
    .local v4, screenPosX:I
    neg-int v13, v11

    add-int v5, v13, v2

    .line 181
    .local v5, screenPosY:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/manager/MotionTrackViewManager;->mNaviWindow:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 182
    .local v8, w:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/manager/MotionTrackViewManager;->mNaviWindow:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 183
    .local v3, h:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/manager/MotionTrackViewManager;->mDisplayOrientaion:I

    const/16 v14, 0x5a

    if-ne v13, v14, :cond_3

    .line 184
    move v6, v4

    .line 185
    .local v6, temp:I
    move v4, v5

    .line 186
    move v5, v6

    .line 188
    move v6, v8

    .line 189
    move v8, v3

    .line 190
    move v3, v6

    .line 192
    .end local v6           #temp:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/manager/MotionTrackViewManager;->mNaviWindow:Landroid/view/View;

    add-int v14, v4, v8

    add-int v15, v5, v3

    invoke-virtual {v13, v4, v5, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/manager/MotionTrackViewManager;->mNaviWindow:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 165
    .end local v3           #h:I
    .end local v4           #screenPosX:I
    .end local v5           #screenPosY:I
    .end local v8           #w:I
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/manager/MotionTrackViewManager;->mDisplayOrientaion:I

    const/16 v14, 0x5a

    if-ne v13, v14, :cond_2

    .line 166
    move v6, v10

    .line 167
    .local v6, temp:F
    move v10, v12

    .line 168
    neg-float v12, v6

    .line 170
    move v7, v1

    .line 171
    .local v7, temp2:I
    move v1, v2

    .line 172
    move v2, v7

    goto :goto_1
.end method
