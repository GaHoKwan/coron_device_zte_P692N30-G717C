.class public Lcom/android/dreams/phototable/PhotoTable;
.super Landroid/widget/FrameLayout;
.source "PhotoTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;,
        Lcom/android/dreams/phototable/PhotoTable$Launcher;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final MAX_SELECTION_TIME:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "PhotoTable"

.field private static sRNG:Ljava/util/Random;


# instance fields
.field private mDream:Landroid/service/dreams/DreamService;

.field private final mDropInterpolator:Landroid/view/animation/Interpolator;

.field private final mDropPeriod:I

.field private final mFastDropPeriod:I

.field private mFinished:Z

.field private mHeight:I

.field private final mImageRatio:F

.field private final mImageRotationLimit:F

.field private final mInset:I

.field private mIsLandscape:Z

.field private final mLauncher:Lcom/android/dreams/phototable/PhotoTable$Launcher;

.field private mLongSide:I

.field private final mNowDropDelay:I

.field private final mOnTable:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoLaunchTask:Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;

.field private final mPhotoSource:Lcom/android/dreams/phototable/PhotoSourcePlexor;

.field private final mRedealCount:I

.field private final mResources:Landroid/content/res/Resources;

.field private mSelected:Landroid/view/View;

.field private mSelectedTime:J

.field private mShortSide:I

.field private mStarted:Z

.field private final mTableCapacity:I

.field private final mTableRatio:F

.field private final mTapToExit:Z

.field private final mThrowInterpolator:Landroid/view/animation/Interpolator;

.field private final mThrowRotation:F

.field private final mThrowSpeed:F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/dreams/phototable/PhotoTable;->$assertionsDisabled:Z

    .line 67
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/dreams/phototable/PhotoTable;->sRNG:Ljava/util/Random;

    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "as"

    .prologue
    const/4 v5, 0x0

    const v4, 0x49742400

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-boolean v5, p0, Lcom/android/dreams/phototable/PhotoTable;->mFinished:Z

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    .line 101
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mInset:I

    .line 102
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mDropPeriod:I

    .line 103
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mFastDropPeriod:I

    .line 104
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mNowDropDelay:I

    .line 105
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mImageRatio:F

    .line 106
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mTableRatio:F

    .line 107
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mImageRotationLimit:F

    .line 108
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mThrowSpeed:F

    .line 109
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mThrowRotation:F

    .line 110
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mTableCapacity:I

    .line 111
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mRedealCount:I

    .line 112
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mTapToExit:Z

    .line 113
    new-instance v0, Lcom/android/dreams/phototable/SoftLandingInterpolator;

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f080010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/dreams/phototable/SoftLandingInterpolator;-><init>(FF)V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mThrowInterpolator:Landroid/view/animation/Interpolator;

    .line 116
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mDropInterpolator:Landroid/view/animation/Interpolator;

    .line 118
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;

    .line 119
    new-instance v0, Lcom/android/dreams/phototable/PhotoSourcePlexor;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "PhotoTableDream"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/dreams/phototable/PhotoSourcePlexor;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSourcePlexor;

    .line 121
    new-instance v0, Lcom/android/dreams/phototable/PhotoTable$Launcher;

    invoke-direct {v0, p0, p0}, Lcom/android/dreams/phototable/PhotoTable$Launcher;-><init>(Lcom/android/dreams/phototable/PhotoTable;Lcom/android/dreams/phototable/PhotoTable;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mLauncher:Lcom/android/dreams/phototable/PhotoTable$Launcher;

    .line 122
    iput-boolean v5, p0, Lcom/android/dreams/phototable/PhotoTable;->mStarted:Z

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/dreams/phototable/PhotoTable;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mDropPeriod:I

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/dreams/phototable/PhotoTable;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mFastDropPeriod:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->recycle(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/dreams/phototable/PhotoTable;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mNowDropDelay:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/dreams/phototable/PhotoTable;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mRedealCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/dreams/phototable/PhotoTable;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mLongSide:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/dreams/phototable/PhotoTable;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mShortSide:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/dreams/phototable/PhotoTable;)Lcom/android/dreams/phototable/PhotoSourcePlexor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSourcePlexor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/dreams/phototable/PhotoTable;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/dreams/phototable/PhotoTable;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mInset:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->throwOnTable(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/dreams/phototable/PhotoTable;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/dreams/phototable/PhotoTable;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mTableCapacity:I

    return v0
.end method

.method static lerp(FFF)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "f"

    .prologue
    .line 154
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 496
    return-void
.end method

.method private pickUp(Landroid/view/View;)V
    .locals 14
    .parameter "photo"

    .prologue
    .line 429
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v5, v11

    .line 430
    .local v5, photoWidth:F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v4, v11

    .line 432
    .local v4, photoHeight:F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 434
    .local v6, scale:F
    const-string v11, "target it"

    invoke-static {v11}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v5

    const/high16 v12, 0x4000

    div-float v7, v11, v12

    .line 436
    .local v7, x:F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v4

    const/high16 v12, 0x4000

    div-float v9, v11, v12

    .line 438
    .local v9, y:F
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v8

    .line 439
    .local v8, x0:F
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v10

    .line 440
    .local v10, y0:F
    sub-float v2, v7, v8

    .line 441
    .local v2, dx:F
    sub-float v3, v9, v10

    .line 443
    .local v3, dy:F
    mul-float v11, v2, v2

    mul-float v12, v3, v3

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v0, v11

    .line 444
    .local v0, dist:F
    const/high16 v11, 0x447a

    mul-float/2addr v11, v0

    const/high16 v12, 0x4416

    div-float/2addr v11, v12

    float-to-int v1, v11

    .line 445
    .local v1, duration:I
    const/16 v11, 0x1f4

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/dreams/phototable/PhotoTable;->wrapAngle(F)F

    move-result v11

    invoke-virtual {p1, v11}, Landroid/view/View;->setRotation(F)V

    .line 449
    const-string v11, "animate it"

    invoke-static {v11}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    int-to-long v12, v1

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x4000

    invoke-direct {v12, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    new-instance v12, Lcom/android/dreams/phototable/PhotoTable$3;

    invoke-direct {v12, p0, p1}, Lcom/android/dreams/phototable/PhotoTable$3;-><init>(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;)V

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 465
    return-void
.end method

.method static randFromCurve(F[Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 14
    .parameter "t"
    .parameter "v"

    .prologue
    const/4 v13, 0x0

    const-wide/high16 v11, 0x4008

    const-wide/high16 v9, 0x4000

    const/high16 v8, 0x4040

    const/high16 v7, 0x3f80

    .line 162
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    .line 163
    .local v4, p:Landroid/graphics/PointF;
    array-length v5, p1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p0, v5

    if-ltz v5, :cond_0

    cmpg-float v5, p0, v7

    if-gtz v5, :cond_0

    .line 164
    sub-float v5, v7, p0

    float-to-double v5, v5

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v0, v5

    .line 165
    .local v0, a:F
    sub-float v5, v7, p0

    float-to-double v5, v5

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v1, v5, p0

    .line 166
    .local v1, b:F
    sub-float v5, v7, p0

    float-to-double v6, p0

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v2, v5, v6

    .line 167
    .local v2, c:F
    float-to-double v5, p0

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v3, v5

    .line 169
    .local v3, d:F
    aget-object v5, p1, v13

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v0

    mul-float v6, v8, v1

    const/4 v7, 0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    mul-float v6, v8, v2

    const/4 v7, 0x2

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/4 v6, 0x3

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 170
    aget-object v5, p1, v13

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v0

    mul-float v6, v8, v1

    const/4 v7, 0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    mul-float v6, v8, v2

    const/4 v7, 0x2

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/4 v6, 0x3

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 172
    .end local v0           #a:F
    .end local v1           #b:F
    .end local v2           #c:F
    .end local v3           #d:F
    :cond_0
    return-object v4
.end method

.method private static randInCenter(FFII)Landroid/graphics/PointF;
    .locals 5
    .parameter "i"
    .parameter "j"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v4, 0x3f00

    const v3, 0x3e19999a

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "randInCenter ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;)V

    .line 177
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 178
    .local v0, p:Landroid/graphics/PointF;
    int-to-float v1, p2

    mul-float/2addr v1, v4

    int-to-float v2, p2

    mul-float/2addr v2, v3

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 179
    int-to-float v1, p3

    mul-float/2addr v1, v4

    int-to-float v2, p3

    mul-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "randInCenter returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;)V

    .line 181
    return-object v0
.end method

.method private static randMultiDrop(IFFII)Landroid/graphics/PointF;
    .locals 9
    .parameter "n"
    .parameter "i"
    .parameter "j"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v8, 0x5

    const v7, 0x3d4ccccd

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "randMultiDrop ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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

    invoke-static {v5}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;)V

    .line 186
    new-array v0, v8, [F

    fill-array-data v0, :array_0

    .line 187
    .local v0, cx:[F
    new-array v1, v8, [F

    fill-array-data v1, :array_1

    .line 188
    .local v1, cy:[F
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 189
    array-length v5, v0

    rem-int v5, p0, v5

    aget v3, v0, v5

    .line 190
    .local v3, x:F
    array-length v5, v0

    rem-int v5, p0, v5

    aget v4, v1, v5

    .line 191
    .local v4, y:F
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 192
    .local v2, p:Landroid/graphics/PointF;
    int-to-float v5, p3

    mul-float/2addr v5, v3

    int-to-float v6, p3

    mul-float/2addr v6, v7

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/PointF;->x:F

    .line 193
    int-to-float v5, p4

    mul-float/2addr v5, v4

    int-to-float v6, p4

    mul-float/2addr v6, v7

    mul-float/2addr v6, p2

    add-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/PointF;->y:F

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "randInCenter returning "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;)V

    .line 195
    return-object v2

    .line 186
    :array_0
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3et
        0x9at 0x99t 0x99t 0x3et
        0x0t 0x0t 0x0t 0x3ft
        0x33t 0x33t 0x33t 0x3ft
        0x33t 0x33t 0x33t 0x3ft
    .end array-data

    .line 187
    :array_1
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3et
        0x33t 0x33t 0x33t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x9at 0x99t 0x99t 0x3et
        0x33t 0x33t 0x33t 0x3ft
    .end array-data
.end method

.method static randfrange(FF)F
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 158
    sget-object v0, Lcom/android/dreams/phototable/PhotoTable;->sRNG:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/dreams/phototable/PhotoTable;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private recycle(Landroid/view/View;)V
    .locals 4
    .parameter "photo"

    .prologue
    .line 468
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    .line 469
    .local v1, image:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 470
    .local v2, layers:Landroid/graphics/drawable/LayerDrawable;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 471
    .local v0, bitmap:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 472
    return-void
.end method

.method private throwOnTable(Landroid/view/View;)V
    .locals 3
    .parameter "photo"

    .prologue
    .line 355
    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 356
    const-string v2, "start offscreen"

    invoke-static {v2}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;)V

    .line 357
    const v2, 0x7f0b0001

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 358
    .local v1, width:I
    const/high16 v2, 0x7f0b

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 359
    .local v0, height:I
    iget v2, p0, Lcom/android/dreams/phototable/PhotoTable;->mThrowRotation:F

    invoke-virtual {p1, v2}, Landroid/view/View;->setRotation(F)V

    .line 360
    iget v2, p0, Lcom/android/dreams/phototable/PhotoTable;->mLongSide:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setX(F)V

    .line 361
    iget v2, p0, Lcom/android/dreams/phototable/PhotoTable;->mLongSide:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setY(F)V

    .line 363
    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoTable;->mThrowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, v2}, Lcom/android/dreams/phototable/PhotoTable;->dropOnTable(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    .line 364
    return-void
.end method

.method private wrapAngle(F)F
    .locals 4
    .parameter "angle"

    .prologue
    const/high16 v3, 0x4334

    const/high16 v2, 0x43b4

    .line 422
    add-float v0, p1, v3

    .line 423
    .local v0, result:F
    rem-float v1, v0, v2

    add-float/2addr v1, v2

    rem-float v0, v1, v2

    .line 424
    sub-float/2addr v0, v3

    .line 425
    return v0
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelected:Landroid/view/View;

    .line 140
    return-void
.end method

.method public dropOnTable(Landroid/view/View;)V
    .locals 1
    .parameter "photo"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mDropInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, v0}, Lcom/android/dreams/phototable/PhotoTable;->dropOnTable(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    .line 368
    return-void
.end method

.method public dropOnTable(Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 18
    .parameter "photo"
    .parameter "interpolator"

    .prologue
    .line 371
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/dreams/phototable/PhotoTable;->mImageRotationLimit:F

    neg-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/dreams/phototable/PhotoTable;->mImageRotationLimit:F

    invoke-static {v13, v14}, Lcom/android/dreams/phototable/PhotoTable;->randfrange(FF)F

    move-result v1

    .line 372
    .local v1, angle:F
    sget-object v13, Lcom/android/dreams/phototable/PhotoTable;->sRNG:Ljava/util/Random;

    invoke-virtual {v13}, Ljava/util/Random;->nextInt()I

    move-result v13

    sget-object v14, Lcom/android/dreams/phototable/PhotoTable;->sRNG:Ljava/util/Random;

    invoke-virtual {v14}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v14

    double-to-float v14, v14

    sget-object v15, Lcom/android/dreams/phototable/PhotoTable;->sRNG:Ljava/util/Random;

    invoke-virtual {v15}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v15

    double-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTable;->mWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTable;->mHeight:I

    move/from16 v17, v0

    invoke-static/range {v13 .. v17}, Lcom/android/dreams/phototable/PhotoTable;->randMultiDrop(IFFII)Landroid/graphics/PointF;

    move-result-object v7

    .line 375
    .local v7, p:Landroid/graphics/PointF;
    iget v9, v7, Landroid/graphics/PointF;->x:F

    .line 376
    .local v9, x:F
    iget v11, v7, Landroid/graphics/PointF;->y:F

    .line 378
    .local v11, y:F
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "drop it at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v10

    .line 381
    .local v10, x0:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v12

    .line 382
    .local v12, y0:F
    const v13, 0x7f0b0001

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v8, v13

    .line 383
    .local v8, width:F
    const/high16 v13, 0x7f0b

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v6, v13

    .line 385
    .local v6, height:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/dreams/phototable/PhotoTable;->mLongSide:I

    int-to-float v13, v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    sub-float/2addr v9, v13

    .line 386
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/dreams/phototable/PhotoTable;->mShortSide:I

    int-to-float v13, v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    sub-float/2addr v11, v13

    .line 387
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fixed offset is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;)V

    .line 389
    sub-float v4, v9, v10

    .line 390
    .local v4, dx:F
    sub-float v5, v11, v12

    .line 392
    .local v5, dy:F
    mul-float v13, v4, v4

    mul-float v14, v5, v5

    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v2, v13

    .line 393
    .local v2, dist:F
    const/high16 v13, 0x447a

    mul-float/2addr v13, v2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/dreams/phototable/PhotoTable;->mThrowSpeed:F

    div-float/2addr v13, v14

    float-to-int v3, v13

    .line 394
    .local v3, duration:I
    const/16 v13, 0x3e8

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 396
    const-string v13, "animate it"

    invoke-static {v13}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/dreams/phototable/PhotoTable;->mTableRatio:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/dreams/phototable/PhotoTable;->mImageRatio:F

    div-float/2addr v14, v15

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/dreams/phototable/PhotoTable;->mTableRatio:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/dreams/phototable/PhotoTable;->mImageRatio:F

    div-float/2addr v14, v15

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    int-to-long v14, v3

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    new-instance v14, Lcom/android/dreams/phototable/PhotoTable$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/dreams/phototable/PhotoTable$2;-><init>(Lcom/android/dreams/phototable/PhotoTable;)V

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 418
    return-void
.end method

.method public fadeAway(Landroid/view/View;Z)V
    .locals 3
    .parameter "photo"
    .parameter "replace"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 330
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/dreams/phototable/PhotoTable$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/dreams/phototable/PhotoTable$1;-><init>(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 344
    return-void
.end method

.method public getSelected()Landroid/view/View;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelected:Landroid/view/View;

    return-object v0
.end method

.method public hasSelection()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelected:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public launch()V
    .locals 4

    .prologue
    .line 311
    const-string v0, "launching"

    invoke-static {v0}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 313
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelectedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getSelected()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dreams/phototable/PhotoTable;->dropOnTable(Landroid/view/View;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->clearSelection()V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    const-string v0, "inflate it"

    invoke-static {v0}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mPhotoLaunchTask:Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mPhotoLaunchTask:Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 321
    :cond_2
    new-instance v0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;

    invoke-direct {v0, p0}, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;-><init>(Lcom/android/dreams/phototable/PhotoTable;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mPhotoLaunchTask:Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;

    .line 322
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mPhotoLaunchTask:Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public moveToBackOfQueue(Landroid/view/View;)V
    .locals 1
    .parameter "photo"

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 349
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 350
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 216
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLayout ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;)V

    .line 219
    sub-int v3, p5, p3

    iput v3, p0, Lcom/android/dreams/phototable/PhotoTable;->mHeight:I

    .line 220
    sub-int v3, p4, p2

    iput v3, p0, Lcom/android/dreams/phototable/PhotoTable;->mWidth:I

    .line 222
    iget v3, p0, Lcom/android/dreams/phototable/PhotoTable;->mImageRatio:F

    iget v4, p0, Lcom/android/dreams/phototable/PhotoTable;->mWidth:I

    iget v5, p0, Lcom/android/dreams/phototable/PhotoTable;->mHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/dreams/phototable/PhotoTable;->mLongSide:I

    .line 223
    iget v3, p0, Lcom/android/dreams/phototable/PhotoTable;->mImageRatio:F

    iget v4, p0, Lcom/android/dreams/phototable/PhotoTable;->mWidth:I

    iget v5, p0, Lcom/android/dreams/phototable/PhotoTable;->mHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/dreams/phototable/PhotoTable;->mShortSide:I

    .line 225
    iget v3, p0, Lcom/android/dreams/phototable/PhotoTable;->mWidth:I

    iget v4, p0, Lcom/android/dreams/phototable/PhotoTable;->mHeight:I

    if-le v3, v4, :cond_0

    const/4 v1, 0x1

    .line 226
    .local v1, isLandscape:Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/dreams/phototable/PhotoTable;->mIsLandscape:Z

    if-eq v3, v1, :cond_3

    .line 227
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 228
    .local v2, photo:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getSelected()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 229
    invoke-direct {p0, v2}, Lcom/android/dreams/phototable/PhotoTable;->pickUp(Landroid/view/View;)V

    goto :goto_1

    .line 225
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #isLandscape:Z
    .end local v2           #photo:Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 231
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #isLandscape:Z
    .restart local v2       #photo:Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/dreams/phototable/PhotoTable;->dropOnTable(Landroid/view/View;)V

    goto :goto_1

    .line 234
    .end local v2           #photo:Landroid/view/View;
    :cond_2
    iput-boolean v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mIsLandscape:Z

    .line 236
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->start()V

    .line 237
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getSelected()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dreams/phototable/PhotoTable;->dropOnTable(Landroid/view/View;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->clearSelection()V

    .line 209
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 211
    :goto_1
    return v0

    .line 205
    :cond_1
    iget-boolean v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mTapToExit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mDream:Landroid/service/dreams/DreamService;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mDream:Landroid/service/dreams/DreamService;

    invoke-virtual {v0}, Landroid/service/dreams/DreamService;->finish()V

    goto :goto_0

    .line 211
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public removeTasks()V
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mFinished:Z

    .line 501
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mLauncher:Lcom/android/dreams/phototable/PhotoTable$Launcher;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 502
    return-void
.end method

.method public scheduleNext(I)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mLauncher:Lcom/android/dreams/phototable/PhotoTable$Launcher;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 486
    iget-boolean v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mFinished:Z

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mLauncher:Lcom/android/dreams/phototable/PhotoTable$Launcher;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 490
    :cond_0
    return-void
.end method

.method public setDream(Landroid/service/dreams/DreamService;)V
    .locals 0
    .parameter "dream"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTable;->mDream:Landroid/service/dreams/DreamService;

    .line 128
    return-void
.end method

.method public setSelection(Landroid/view/View;)V
    .locals 2
    .parameter "selected"

    .prologue
    .line 143
    sget-boolean v0, Lcom/android/dreams/phototable/PhotoTable;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelected:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelected:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/dreams/phototable/PhotoTable;->dropOnTable(Landroid/view/View;)V

    .line 147
    :cond_1
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelected:Landroid/view/View;

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelectedTime:J

    .line 149
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->pickUp(Landroid/view/View;)V

    .line 151
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mStarted:Z

    if-nez v0, :cond_0

    .line 476
    const-string v0, "kick it"

    invoke-static {v0}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;)V

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mStarted:Z

    .line 478
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mDropPeriod:I

    invoke-virtual {p0, v0}, Lcom/android/dreams/phototable/PhotoTable;->scheduleNext(I)V

    .line 479
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->launch()V

    .line 481
    :cond_0
    return-void
.end method
