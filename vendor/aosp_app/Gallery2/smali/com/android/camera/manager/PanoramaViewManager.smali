.class public Lcom/android/camera/manager/PanoramaViewManager;
.super Lcom/android/camera/manager/ViewManager;
.source "PanoramaViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;
    }
.end annotation


# static fields
.field static final ANIMATION:Z = true

.field private static final DIRECTIONS:[I = null

#the value of this static final field might be set in the static constructor
.field private static final DIRECTIONS_COUNT:I = 0x0

.field private static final DIRECTION_DOWN:I = 0x3

.field private static final DIRECTION_LEFT:I = 0x1

.field private static final DIRECTION_RIGHT:I = 0x0

.field private static final DIRECTION_UNKNOWN:I = 0x4

.field private static final DIRECTION_UP:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field public static final MAV_VIEW:I = 0x1

.field private static final NONE_ORIENTATION:I = -0x1

.field public static final PANORAMA_VIEW:I = 0x0

.field private static final PANO_3D_OVERLAP_DISTANCE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "PanoramaViewManager"

.field private static final TARGET_DISTANCE_HORIZONTAL:I = 0xa0

.field private static final TARGET_DISTANCE_VERTICAL:I = 0x78


# instance fields
.field private mAnimation:Lcom/android/camera/AnimationController;

.field private mCenterIndicator:Landroid/view/ViewGroup;

.field private mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

.field private mDirectionSigns:[Landroid/view/ViewGroup;

.field private mDisplayDirection:I

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayOrientaion:I

.field private mDisplayRotation:I

.field private mHalfArrowHeight:I

.field private mHalfArrowLength:I

.field private mHoldOrientation:I

.field private mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

.field private mNeedInitialize:Z

.field private mOnSizeChangedListener:Lcom/android/camera/ui/RotateLayout$OnSizeChangedListener;

.field private mPanoView:Landroid/view/View;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgeressNumber:I

.field private mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

.field private mRootView:Landroid/view/View;

.field private mS3DMode:Z

.field private mScreenProgressLayout:Lcom/android/camera/ui/RotateLayout;

.field private mSensorDirection:I

.field private mSensorMatrix:[Landroid/graphics/Matrix;

.field private mViewCategory:I

.field private mViewChangedListener:Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/PanoramaViewManager;->LOG:Z

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/manager/PanoramaViewManager;->DIRECTIONS:[I

    .line 46
    sget-object v0, Lcom/android/camera/manager/PanoramaViewManager;->DIRECTIONS:[I

    array-length v0, v0

    sput v0, Lcom/android/camera/manager/PanoramaViewManager;->DIRECTIONS_COUNT:I

    return-void

    .line 44
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/Camera;I)V
    .locals 3
    .parameter "context"
    .parameter "viewCategory"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 25
    new-array v0, v2, [Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    .line 32
    iput-boolean v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mS3DMode:Z

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 48
    iput v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorDirection:I

    .line 49
    iput v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayDirection:I

    .line 61
    iput v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowHeight:I

    .line 62
    iput v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowLength:I

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNeedInitialize:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHoldOrientation:I

    .line 68
    iput v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgeressNumber:I

    .line 70
    new-instance v0, Lcom/android/camera/manager/PanoramaViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/PanoramaViewManager$1;-><init>(Lcom/android/camera/manager/PanoramaViewManager;)V

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mOnSizeChangedListener:Lcom/android/camera/ui/RotateLayout$OnSizeChangedListener;

    .line 81
    iput p2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewCategory:I

    .line 82
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/manager/PanoramaViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mPreviewWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/manager/PanoramaViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mPreviewHeight:I

    return p1
.end method

.method private filterViewCategory(I)Z
    .locals 3
    .parameter "requestCategory"

    .prologue
    .line 389
    iget v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewCategory:I

    if-eq v0, p1, :cond_0

    .line 390
    const-string v0, "PanoramaViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only panorama could call this method. mViewCategory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x0

    .line 393
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getArrowHL()V
    .locals 3

    .prologue
    .line 305
    iget v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowHeight:I

    if-nez v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 307
    .local v1, naviWidth:I
    iget-object v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 308
    .local v0, naviHeight:I
    if-le v1, v0, :cond_1

    .line 309
    shr-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowLength:I

    .line 310
    shr-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowHeight:I

    .line 316
    .end local v0           #naviHeight:I
    .end local v1           #naviWidth:I
    :cond_0
    :goto_0
    return-void

    .line 312
    .restart local v0       #naviHeight:I
    .restart local v1       #naviWidth:I
    :cond_1
    shr-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowHeight:I

    .line 313
    shr-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowLength:I

    goto :goto_0
.end method

.method private initializeViewManager()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v1, 0x7f0b0094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mPanoView:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v1, 0x7f0b00ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mScreenProgressLayout:Lcom/android/camera/ui/RotateLayout;

    .line 116
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v1, 0x7f0b00af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    .line 117
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v2, 0x7f0b00c2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-object v0, v1, v4

    .line 118
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v2, 0x7f0b00bd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-object v0, v1, v5

    .line 119
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v3, 0x7f0b00c7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-object v0, v1, v2

    .line 120
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v3, 0x7f0b00ca

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-object v0, v1, v2

    .line 121
    new-instance v1, Lcom/android/camera/AnimationController;

    iget-object v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v2, v0}, Lcom/android/camera/AnimationController;-><init>([Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mAnimation:Lcom/android/camera/AnimationController;

    .line 123
    iget v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewCategory:I

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v1, 0x7f0b00cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/NaviLineImageView;

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    .line 125
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v1, 0x7f0b00bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    .line 127
    new-instance v0, Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/camera/ui/ProgressIndicator;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    .line 128
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/ProgressIndicator;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProgressIndicator;->setOrientation(I)V

    .line 131
    invoke-direct {p0}, Lcom/android/camera/manager/PanoramaViewManager;->prepareSensorMatrix()V

    .line 137
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mScreenProgressLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mOnSizeChangedListener:Lcom/android/camera/ui/RotateLayout$OnSizeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnSizeChangedListener(Lcom/android/camera/ui/RotateLayout$OnSizeChangedListener;)V

    .line 138
    return-void

    .line 132
    :cond_1
    iget v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewCategory:I

    if-ne v0, v5, :cond_0

    .line 133
    new-instance v0, Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/android/camera/ui/ProgressIndicator;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    .line 134
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/ProgressIndicator;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProgressIndicator;->setOrientation(I)V

    goto :goto_0
.end method

.method private prepareSensorMatrix()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/high16 v3, -0x4080

    .line 249
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    .line 251
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, v0, v2

    .line 252
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 253
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v2

    const/4 v1, 0x0

    const/high16 v2, 0x42f0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 255
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, v0, v4

    .line 256
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 257
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v4

    const/high16 v1, 0x43a0

    const/high16 v2, 0x42f0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 259
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, v0, v5

    .line 260
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v5

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 261
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v5

    const/high16 v1, 0x4320

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 263
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, v0, v6

    .line 264
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v6

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 265
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v6

    const/high16 v1, 0x4320

    const/high16 v2, 0x4370

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 266
    return-void
.end method

.method private prepareTransformMatrix(I)V
    .locals 9
    .parameter "direction"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4000

    .line 269
    iget-object v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 270
    iget v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mPreviewWidth:I

    shr-int/lit8 v1, v4, 0x1

    .line 271
    .local v1, halfPrewWidth:I
    iget v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mPreviewHeight:I

    shr-int/lit8 v0, v4, 0x1

    .line 274
    .local v0, halfPrewHeight:I
    invoke-direct {p0}, Lcom/android/camera/manager/PanoramaViewManager;->getArrowHL()V

    .line 279
    int-to-float v4, v1

    iget v5, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowLength:I

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 280
    .local v3, halfViewWidth:F
    int-to-float v4, v0

    iget v5, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowLength:I

    int-to-float v5, v5

    sub-float v2, v4, v5

    .line 282
    .local v2, halfViewHeight:F
    iget-object v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x4320

    div-float v5, v3, v5

    const/high16 v6, 0x42f0

    div-float v6, v2, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 283
    iget v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayOrientaion:I

    sparse-switch v4, :sswitch_data_0

    .line 301
    :goto_0
    :sswitch_0
    iget-object v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowLength:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowLength:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 302
    return-void

    .line 287
    :sswitch_1
    iget-object v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v5, v2

    mul-float/2addr v5, v7

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 288
    iget-object v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42b4

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    .line 291
    :sswitch_2
    iget-object v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v5, v3

    mul-float/2addr v5, v7

    neg-float v6, v2

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 292
    iget-object v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x4334

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    .line 295
    :sswitch_3
    iget-object v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v5, v2

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 296
    iget-object v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/high16 v5, -0x3d4c

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    .line 283
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private setOrientationIndicator(I)V
    .locals 6
    .parameter "direction"

    .prologue
    const/16 v5, 0x10e

    const/16 v4, 0xb4

    const/16 v3, 0x5a

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 229
    if-nez p1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v0, v2, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 231
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v0, v2, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 232
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    const/high16 v1, -0x3d4c

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    if-ne p1, v1, :cond_2

    .line 234
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v0, v4, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 235
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v0, v4, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 236
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 237
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v0, v3, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 239
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v0, v3, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 240
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    const/high16 v1, 0x4334

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 241
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v0, v5, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 243
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v0, v5, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 244
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0
.end method

.method private updateDirection(I)V
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v5, 0x4

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/android/camera/manager/PanoramaViewManager;->DIRECTIONS_COUNT:I

    if-ge v0, v2, :cond_0

    .line 188
    sget-object v2, Lcom/android/camera/manager/PanoramaViewManager;->DIRECTIONS:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 189
    move v1, v0

    .line 193
    :cond_0
    iget v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayRotation:I

    sparse-switch v2, :sswitch_data_0

    .line 211
    :goto_1
    :sswitch_0
    const-string v2, "PanoramaViewManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDirection mDirection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorDirection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " direction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorDirection:I

    if-eq v2, p1, :cond_3

    .line 213
    iput p1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorDirection:I

    .line 214
    iget v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorDirection:I

    if-eq v2, v5, :cond_2

    .line 215
    iget-object v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewChangedListener:Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;

    invoke-interface {v2}, Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;->onCaptureBegin()V

    .line 216
    invoke-direct {p0, p1}, Lcom/android/camera/manager/PanoramaViewManager;->setOrientationIndicator(I)V

    .line 217
    iget-object v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mAnimation:Lcom/android/camera/AnimationController;

    invoke-virtual {v2}, Lcom/android/camera/AnimationController;->startCenterAnimation()V

    .line 219
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_3

    .line 220
    iget-object v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 187
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :sswitch_1
    sget-object v2, Lcom/android/camera/manager/PanoramaViewManager;->DIRECTIONS:[I

    add-int/lit8 v3, v1, 0x1

    sget v4, Lcom/android/camera/manager/PanoramaViewManager;->DIRECTIONS_COUNT:I

    rem-int/2addr v3, v4

    aget p1, v2, v3

    .line 197
    goto :goto_1

    .line 203
    :sswitch_2
    sget-object v2, Lcom/android/camera/manager/PanoramaViewManager;->DIRECTIONS:[I

    add-int/lit8 v3, v1, -0x1

    sget v4, Lcom/android/camera/manager/PanoramaViewManager;->DIRECTIONS_COUNT:I

    add-int/2addr v3, v4

    sget v4, Lcom/android/camera/manager/PanoramaViewManager;->DIRECTIONS_COUNT:I

    rem-int/2addr v3, v4

    aget p1, v2, v3

    .line 204
    goto :goto_1

    .line 207
    :sswitch_3
    sget-object v2, Lcom/android/camera/manager/PanoramaViewManager;->DIRECTIONS:[I

    add-int/lit8 v3, v1, 0x2

    sget v4, Lcom/android/camera/manager/PanoramaViewManager;->DIRECTIONS_COUNT:I

    rem-int/2addr v3, v4

    aget p1, v2, v3

    goto :goto_1

    .line 223
    :cond_2
    iget-object v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :cond_3
    return-void

    .line 193
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private updateUIShowingMatrix(III)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "direction"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 320
    const/4 v3, 0x2

    new-array v2, v3, [F

    int-to-float v3, p1

    aput v3, v2, v8

    int-to-float v3, p2

    aput v3, v2, v6

    .line 321
    .local v2, pts:[F
    iget-object v3, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v3, v3, p3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 322
    const-string v3, "PanoramaViewManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Matrix x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-direct {p0, p3}, Lcom/android/camera/manager/PanoramaViewManager;->prepareTransformMatrix(I)V

    .line 325
    iget-object v3, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 326
    const-string v3, "PanoramaViewManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisplayMatrix x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    aget v3, v2, v8

    float-to-int v0, v3

    .line 329
    .local v0, fx:I
    aget v3, v2, v6

    float-to-int v1, v3

    .line 331
    .local v1, fy:I
    iget-object v3, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    iget v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowHeight:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowLength:I

    sub-int v5, v1, v5

    iget v6, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowHeight:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowLength:I

    add-int/2addr v7, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/camera/ui/NaviLineImageView;->setLayoutPosition(IIII)V

    .line 334
    invoke-direct {p0, p3}, Lcom/android/camera/manager/PanoramaViewManager;->updateDirection(I)V

    .line 335
    iget-object v3, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 107
    const v1, 0x7f040033

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ViewManager;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b00ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    .line 109
    return-object v0
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 149
    const-string v0, "PanoramaViewManager"

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

    const-string v2, ",mProgeressNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgeressNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 152
    invoke-super {p0, p1}, Lcom/android/camera/manager/ViewManager;->onOrientationChanged(I)V

    .line 153
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ProgressIndicator;->setOrientation(I)V

    .line 156
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHoldOrientation:I

    .line 164
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    iput p1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHoldOrientation:I

    .line 159
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isSmartBookEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgeressNumber:I

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/PanoramaViewManager;->setProgress(I)V

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNeedInitialize:Z

    .line 145
    return-void
.end method

.method public resetController()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 401
    const-string v1, "PanoramaViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetController mViewCategory="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewCategory:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mPanoView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iput v5, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgeressNumber:I

    .line 408
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mAnimation:Lcom/android/camera/AnimationController;

    invoke-virtual {v1}, Lcom/android/camera/AnimationController;->stopCenterAnimation()V

    .line 409
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewCategory:I

    if-nez v1, :cond_0

    .line 412
    iput v6, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorDirection:I

    .line 413
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 414
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 415
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 416
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 417
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public set3DMode(Z)V
    .locals 0
    .parameter "panoramaMode"

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mS3DMode:Z

    .line 398
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ProgressIndicator;->setProgress(I)V

    .line 361
    iput p1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgeressNumber:I

    .line 363
    :cond_0
    return-void
.end method

.method public setViewChangedListener(Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;)V
    .locals 0
    .parameter "viewChangedListener"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewChangedListener:Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;

    .line 86
    return-void
.end method

.method public setViewsForNext(I)V
    .locals 3
    .parameter "imageNum"

    .prologue
    const/4 v2, 0x0

    .line 339
    invoke-direct {p0, v2}, Lcom/android/camera/manager/PanoramaViewManager;->filterViewCategory(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProgressIndicator;->setProgress(I)V

    .line 343
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgeressNumber:I

    .line 344
    if-nez p1, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mAnimation:Lcom/android/camera/AnimationController;

    invoke-virtual {v0}, Lcom/android/camera/AnimationController;->startDirectionAnimation()V

    goto :goto_0

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mAnimation:Lcom/android/camera/AnimationController;

    invoke-virtual {v0}, Lcom/android/camera/AnimationController;->stopCenterAnimation()V

    .line 349
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 92
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getDisplayOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayOrientaion:I

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getDisplayRotation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayRotation:I

    .line 94
    iget-boolean v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNeedInitialize:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/android/camera/manager/PanoramaViewManager;->initializeViewManager()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNeedInitialize:Z

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/PanoramaViewManager;->showCaptureView()V

    .line 99
    return-void
.end method

.method public showCaptureView()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 168
    iget v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHoldOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 169
    iget v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHoldOrientation:I

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/PanoramaViewManager;->onOrientationChanged(I)V

    .line 171
    :cond_0
    iget v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewCategory:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 172
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mAnimation:Lcom/android/camera/AnimationController;

    invoke-virtual {v1}, Lcom/android/camera/AnimationController;->startCenterAnimation()V

    .line 180
    .end local v0           #i:I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mPanoView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/ProgressIndicator;->setProgress(I)V

    .line 182
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/ProgressIndicator;->setVisibility(I)V

    .line 183
    return-void

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public startCenterAnimation()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mAnimation:Lcom/android/camera/AnimationController;

    invoke-virtual {v0}, Lcom/android/camera/AnimationController;->startCenterAnimation()V

    .line 368
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 369
    return-void
.end method

.method public updateMovingUI(IIZ)V
    .locals 4
    .parameter "xy"
    .parameter "direction"
    .parameter "shown"

    .prologue
    const/4 v3, 0x4

    .line 372
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/manager/PanoramaViewManager;->filterViewCategory(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    :goto_0
    return-void

    .line 376
    :cond_0
    if-eq p2, v3, :cond_1

    if-nez p3, :cond_1

    iget-object v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v2, :cond_2

    .line 379
    :cond_1
    iget-object v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 382
    :cond_2
    const/high16 v2, -0x1

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x10

    int-to-short v0, v2

    .line 383
    .local v0, x:S
    const v2, 0xffff

    and-int/2addr v2, p1

    int-to-short v1, v2

    .line 385
    .local v1, y:S
    invoke-direct {p0, v0, v1, p2}, Lcom/android/camera/manager/PanoramaViewManager;->updateUIShowingMatrix(III)V

    goto :goto_0
.end method
