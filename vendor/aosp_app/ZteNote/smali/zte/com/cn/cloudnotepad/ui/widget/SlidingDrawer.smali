.class public Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$DrawerToggler;,
        Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerCloseListener;,
        Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerOpenListener;,
        Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerScrollListener;,
        Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$SlidingHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field private static final MSG_ANIMATE:I = 0x3e8

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_HORIZONTAL_LEFT_TO_RIGHT:I = 0x2

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field public static final ORIENTATION_VERTICAL_TOP_TO_BOTTOM:I = 0x3

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private mMaximumAcceleration:I

.field private mMaximumMajorVelocity:I

.field private mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerScrollListener;

.field private mPreX:F

.field private mReversal:Z

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTouchSlop:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 191
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContext:Landroid/content/Context;

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 202
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 110
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 128
    new-instance v6, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$SlidingHandler;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$SlidingHandler;-><init>(Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$SlidingHandler;)V

    iput-object v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    .line 145
    const/4 v6, 0x0

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mPreX:F

    .line 203
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 204
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTouchSlop:I

    .line 205
    sget-object v6, Lzte/com/cn/cloudnotepad/R$styleable;->SlidingDrawer:[I

    const/4 v7, 0x0

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 207
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v6, 0x6

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 208
    .local v5, orientation:I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVertical:Z

    .line 209
    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 210
    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    const/4 v6, 0x0

    .line 209
    :goto_1
    iput-boolean v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    .line 211
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    .line 212
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    .line 213
    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAllowSingleTap:Z

    .line 214
    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimateOnClick:Z

    .line 216
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 217
    .local v4, handleId:I
    if-nez v4, :cond_2

    .line 218
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 208
    .end local v4           #handleId:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 210
    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    .line 222
    .restart local v4       #handleId:I
    :cond_2
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 223
    .local v2, contentId:I
    if-nez v2, :cond_3

    .line 224
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The content attribute is required and must refer to a valid child."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 228
    :cond_3
    if-ne v4, v2, :cond_4

    .line 229
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The content and handle attributes must refer to different children."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 233
    :cond_4
    iput v4, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleId:I

    .line 234
    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContentId:I

    .line 236
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v3, v6, Landroid/util/DisplayMetrics;->density:F

    .line 237
    .local v3, density:F
    const/high16 v6, 0x40c0

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTapThreshold:I

    .line 238
    const/high16 v6, 0x42c8

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumTapVelocity:I

    .line 239
    const/high16 v6, 0x4316

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    .line 240
    const/high16 v6, 0x4348

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    .line 241
    const/high16 v6, 0x44fa

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumAcceleration:I

    .line 242
    const/high16 v6, 0x447a

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVelocityUnits:I

    .line 244
    iget-boolean v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-eqz v6, :cond_5

    .line 245
    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v6, v6

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumAcceleration:I

    .line 246
    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v6, v6

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    .line 247
    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    neg-int v6, v6

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    .line 250
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 256
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;)Z
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;)Z
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$2(Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 831
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->doAnimation()V

    return-void
.end method

.method static synthetic access$3(Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addTracking(FFLandroid/view/MotionEvent;)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "event"

    .prologue
    .line 441
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->prepareContent()V

    .line 443
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mOnDrawerScrollListener:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mOnDrawerScrollListener:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v2}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 446
    :cond_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->animateToggle()V

    .line 447
    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_1

    .line 448
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 449
    .local v1, top:I
    float-to-int v2, p2

    sub-int/2addr v2, v1

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTouchDelta:I

    .line 450
    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->prepareTracking(I)V

    .line 456
    .end local v1           #top:I
    :goto_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 457
    return-void

    .line 452
    :cond_1
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 453
    .local v0, left:I
    float-to-int v2, p1

    sub-int/2addr v2, v0

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTouchDelta:I

    .line 454
    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->prepareTracking(I)V

    goto :goto_0
.end method

.method private animateClose(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->prepareTracking(I)V

    .line 560
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->performFling(IFZ)V

    .line 561
    return-void
.end method

.method private animateOpen(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 564
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->prepareTracking(I)V

    .line 565
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->performFling(IFZ)V

    .line 566
    return-void
.end method

.method private closeDrawer()V
    .locals 2

    .prologue
    .line 987
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->moveHandle(I)V

    .line 988
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 991
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_1

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    .line 996
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mOnDrawerCloseListener:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mOnDrawerCloseListener:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x10

    const/16 v4, 0x3e8

    const/4 v3, 0x0

    .line 832
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 833
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->incrementAnimation()V

    .line 834
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-eqz v0, :cond_4

    .line 835
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 836
    iput-boolean v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimating:Z

    .line 837
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->closeDrawer()V

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getHeight()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_3

    .line 839
    iput-boolean v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimating:Z

    .line 840
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->openDrawer()V

    goto :goto_0

    .line 838
    :cond_2
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_1

    .line 842
    :cond_3
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->moveHandle(I)V

    .line 843
    iget-wide v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mCurrentAnimationTime:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 844
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 845
    iget-wide v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 844
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 848
    :cond_4
    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getHeight()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_6

    .line 849
    iput-boolean v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimating:Z

    .line 850
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->closeDrawer()V

    goto :goto_0

    .line 848
    :cond_5
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_2

    .line 851
    :cond_6
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 852
    iput-boolean v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimating:Z

    .line 853
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->openDrawer()V

    goto :goto_0

    .line 855
    :cond_7
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->moveHandle(I)V

    .line 856
    iget-wide v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mCurrentAnimationTime:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 857
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 858
    iget-wide v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 857
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private incrementAnimation()V
    .locals 8

    .prologue
    .line 866
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 867
    .local v1, now:J
    iget-wide v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v4, v6, v7

    .line 868
    .local v4, t:F
    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimationPosition:F

    .line 869
    .local v3, position:F
    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 870
    .local v5, v:F
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 871
    .local v0, a:F
    mul-float v6, v5, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimationPosition:F

    .line 872
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 873
    iput-wide v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 874
    return-void
.end method

.method private moveHandle(I)V
    .locals 12
    .parameter "position"

    .prologue
    const/4 v11, 0x0

    const/16 v9, -0x2711

    const/16 v8, -0x2712

    .line 686
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 688
    .local v3, handle:Landroid/view/View;
    iget-boolean v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_6

    .line 689
    if-ne p1, v9, :cond_1

    .line 690
    iget-boolean v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-eqz v7, :cond_0

    .line 691
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 695
    :goto_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->invalidate()V

    .line 765
    :goto_1
    return-void

    .line 693
    :cond_0
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 696
    :cond_1
    if-ne p1, v8, :cond_3

    .line 697
    iget-boolean v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-eqz v7, :cond_2

    .line 698
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 703
    :goto_2
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->invalidate()V

    goto :goto_1

    .line 700
    :cond_2
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    .line 701
    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    .line 700
    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_2

    .line 705
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    .line 706
    .local v6, top:I
    sub-int v1, p1, v6

    .line 707
    .local v1, deltaY:I
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_5

    .line 708
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v6

    .line 712
    :cond_4
    :goto_3
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 714
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 715
    .local v2, frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 717
    .local v5, region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 718
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 720
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 721
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getWidth()I

    move-result v8

    .line 722
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    iget-object v10, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 721
    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 724
    invoke-virtual {p0, v5}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 709
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_5
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    if-le v1, v7, :cond_4

    .line 710
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    goto :goto_3

    .line 727
    .end local v1           #deltaY:I
    .end local v6           #top:I
    :cond_6
    if-ne p1, v9, :cond_8

    .line 728
    iget-boolean v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-eqz v7, :cond_7

    .line 729
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 733
    :goto_4
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_1

    .line 731
    :cond_7
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 734
    :cond_8
    if-ne p1, v8, :cond_a

    .line 735
    iget-boolean v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-eqz v7, :cond_9

    .line 736
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 741
    :goto_5
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_1

    .line 738
    :cond_9
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    .line 739
    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    .line 738
    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_5

    .line 743
    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 744
    .local v4, left:I
    sub-int v0, p1, v4

    .line 745
    .local v0, deltaX:I
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_c

    .line 746
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    sub-int v0, v7, v4

    .line 750
    :cond_b
    :goto_6
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 752
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 753
    .restart local v2       #frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 755
    .restart local v5       #region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 756
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 758
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 759
    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    .line 760
    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getHeight()I

    move-result v9

    .line 759
    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 762
    invoke-virtual {p0, v5}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 747
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_c
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    if-le v0, v7, :cond_b

    .line 748
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    goto :goto_6
.end method

.method private openDrawer()V
    .locals 2

    .prologue
    .line 1002
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->moveHandle(I)V

    .line 1003
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1005
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 1009
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    .line 1011
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mOnDrawerOpenListener:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mOnDrawerOpenListener:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_0
.end method

.method private performFling(IFZ)V
    .locals 6
    .parameter "position"
    .parameter "velocity"
    .parameter "always"

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 569
    int-to-float v2, p1

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimationPosition:F

    .line 570
    iput p2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 571
    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_9

    .line 573
    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-eqz v2, :cond_5

    .line 574
    if-nez p3, :cond_0

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_0

    .line 575
    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getBottom()I

    move-result v2

    :goto_0
    add-int/2addr v3, v2

    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleHeight:I

    :goto_1
    sub-int v2, v3, v2

    sub-int/2addr v2, p1

    if-le p1, v2, :cond_4

    .line 576
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_4

    .line 579
    :cond_0
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 580
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 581
    iput v4, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 647
    :cond_1
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 648
    .local v0, now:J
    iput-wide v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 649
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 650
    const/4 v2, 0x1

    iput-boolean v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimating:Z

    .line 651
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 652
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 653
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->stopTracking()V

    .line 654
    return-void

    .line 575
    .end local v0           #now:J
    :cond_2
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getRight()I

    move-result v2

    goto :goto_0

    :cond_3
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleWidth:I

    goto :goto_1

    .line 585
    :cond_4
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 586
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 587
    iput v4, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_2

    .line 591
    :cond_5
    if-nez p3, :cond_6

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_6

    .line 592
    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleHeight:I

    :goto_3
    add-int/2addr v2, v3

    if-le p1, v2, :cond_8

    .line 593
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_8

    .line 596
    :cond_6
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 597
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 598
    iput v4, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_2

    .line 592
    :cond_7
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleWidth:I

    goto :goto_3

    .line 602
    :cond_8
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 603
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 604
    iput v4, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_2

    .line 610
    :cond_9
    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-eqz v2, :cond_d

    .line 611
    if-nez p3, :cond_c

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_a

    .line 612
    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getHeight()I

    move-result v2

    :goto_4
    div-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_c

    .line 613
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_c

    .line 615
    :cond_a
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 616
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 617
    iput v4, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_2

    .line 612
    :cond_b
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_4

    .line 622
    :cond_c
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 623
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 624
    iput v4, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_2

    .line 628
    :cond_d
    if-nez p3, :cond_10

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_e

    .line 629
    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getHeight()I

    move-result v2

    :goto_5
    div-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_10

    .line 630
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_10

    .line 632
    :cond_e
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 633
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 634
    iput v4, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_2

    .line 629
    :cond_f
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_5

    .line 639
    :cond_10
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 640
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 641
    iput v4, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_2
.end method

.method private performTouchEventUpOrCancel()V
    .locals 15

    .prologue
    .line 461
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 462
    .local v7, velocityTracker:Landroid/view/VelocityTracker;
    iget v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v7, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 464
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    .line 465
    .local v10, yVelocity:F
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    .line 468
    .local v9, xVelocity:F
    iget-boolean v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVertical:Z

    .line 469
    .local v8, vertical:Z
    if-eqz v8, :cond_8

    .line 470
    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_7

    const/4 v3, 0x1

    .line 471
    .local v3, negative:Z
    :goto_0
    const/4 v11, 0x0

    cmpg-float v11, v9, v11

    if-gez v11, :cond_0

    .line 472
    neg-float v9, v9

    .line 474
    :cond_0
    iget-boolean v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-nez v11, :cond_1

    iget v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v11, v11

    cmpl-float v11, v9, v11

    if-gtz v11, :cond_2

    :cond_1
    iget-boolean v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-eqz v11, :cond_3

    iget v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v11, v11

    cmpg-float v11, v9, v11

    if-gez v11, :cond_3

    .line 475
    :cond_2
    iget v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v11

    .line 487
    :cond_3
    :goto_1
    float-to-double v11, v9

    float-to-double v13, v10

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    double-to-float v6, v11

    .line 488
    .local v6, velocity:F
    if-eqz v3, :cond_4

    .line 489
    neg-float v6, v6

    .line 492
    :cond_4
    iget-object v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v5

    .line 493
    .local v5, top:I
    iget-object v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 494
    .local v2, left:I
    iget-object v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v4

    .line 495
    .local v4, right:I
    iget-object v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v0

    .line 496
    .local v0, bottom:I
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget v12, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_21

    .line 498
    iget-boolean v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-eqz v11, :cond_12

    .line 499
    if-eqz v8, :cond_e

    iget-boolean v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v11, :cond_5

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getBottom()I

    move-result v11

    sub-int/2addr v11, v0

    iget v12, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTapThreshold:I

    iget v13, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    add-int/2addr v12, v13

    if-lt v11, v12, :cond_d

    .line 500
    :cond_5
    iget-boolean v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-nez v11, :cond_6

    iget v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    iget v12, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleHeight:I

    add-int/2addr v11, v12

    iget v12, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v11, v12

    if-lt v5, v11, :cond_d

    :cond_6
    const/4 v1, 0x0

    .line 511
    .local v1, cancel:Z
    :goto_2
    if-eqz v1, :cond_1f

    .line 512
    iget-boolean v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAllowSingleTap:Z

    if-eqz v11, :cond_1d

    .line 513
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->playSoundEffect(I)V

    .line 515
    iget-boolean v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v11, :cond_1b

    .line 516
    if-eqz v8, :cond_1a

    .end local v5           #top:I
    :goto_3
    invoke-direct {p0, v5}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->animateClose(I)V

    .line 531
    .end local v1           #cancel:Z
    :goto_4
    return-void

    .line 470
    .end local v0           #bottom:I
    .end local v2           #left:I
    .end local v3           #negative:Z
    .end local v4           #right:I
    .end local v6           #velocity:F
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 478
    :cond_8
    const/4 v11, 0x0

    cmpg-float v11, v9, v11

    if-gez v11, :cond_c

    const/4 v3, 0x1

    .line 479
    .restart local v3       #negative:Z
    :goto_5
    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_9

    .line 480
    neg-float v10, v10

    .line 482
    :cond_9
    iget-boolean v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-nez v11, :cond_a

    iget v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v11, v11

    cmpl-float v11, v9, v11

    if-gtz v11, :cond_b

    :cond_a
    iget-boolean v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-eqz v11, :cond_3

    iget v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v11, v11

    cmpg-float v11, v9, v11

    if-gez v11, :cond_3

    .line 483
    :cond_b
    iget v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v10, v11

    goto/16 :goto_1

    .line 478
    .end local v3           #negative:Z
    :cond_c
    const/4 v3, 0x0

    goto :goto_5

    .line 500
    .restart local v0       #bottom:I
    .restart local v2       #left:I
    .restart local v3       #negative:Z
    .restart local v4       #right:I
    .restart local v5       #top:I
    .restart local v6       #velocity:F
    :cond_d
    const/4 v1, 0x1

    goto :goto_2

    .line 501
    :cond_e
    iget-boolean v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v11, :cond_f

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getRight()I

    move-result v11

    sub-int/2addr v11, v4

    iget v12, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTapThreshold:I

    iget v13, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    add-int/2addr v12, v13

    if-lt v11, v12, :cond_11

    .line 502
    :cond_f
    iget-boolean v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-nez v11, :cond_10

    iget v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    iget v12, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleWidth:I

    add-int/2addr v11, v12

    iget v12, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTapThreshold:I

    add-int/2addr v11, v12

    if-gt v2, v11, :cond_11

    :cond_10
    const/4 v1, 0x0

    goto :goto_2

    :cond_11
    const/4 v1, 0x1

    goto :goto_2

    .line 504
    :cond_12
    if-eqz v8, :cond_16

    iget-boolean v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v11, :cond_13

    iget v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTapThreshold:I

    iget v12, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v12

    if-lt v5, v11, :cond_15

    .line 505
    :cond_13
    iget-boolean v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-nez v11, :cond_14

    iget v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getBottom()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getTop()I

    move-result v12

    sub-int/2addr v11, v12

    .line 506
    iget v12, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v11, v12

    iget v12, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v11, v12

    if-gt v5, v11, :cond_15

    :cond_14
    const/4 v1, 0x0

    .line 504
    .restart local v1       #cancel:Z
    :goto_6
    goto/16 :goto_2

    .line 506
    .end local v1           #cancel:Z
    :cond_15
    const/4 v1, 0x1

    goto :goto_6

    .line 507
    :cond_16
    iget-boolean v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v11, :cond_17

    iget v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTapThreshold:I

    iget v12, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v12

    if-lt v2, v11, :cond_19

    .line 508
    :cond_17
    iget-boolean v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-nez v11, :cond_18

    iget v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    .line 509
    iget v12, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v11, v12

    iget v12, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v11, v12

    if-gt v2, v11, :cond_19

    :cond_18
    const/4 v1, 0x0

    goto :goto_6

    :cond_19
    const/4 v1, 0x1

    goto :goto_6

    .restart local v1       #cancel:Z
    :cond_1a
    move v5, v2

    .line 516
    goto/16 :goto_3

    .line 518
    :cond_1b
    if-eqz v8, :cond_1c

    .end local v5           #top:I
    :goto_7
    invoke-direct {p0, v5}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->animateOpen(I)V

    goto/16 :goto_4

    .restart local v5       #top:I
    :cond_1c
    move v5, v2

    goto :goto_7

    .line 521
    :cond_1d
    if-eqz v8, :cond_1e

    .end local v5           #top:I
    :goto_8
    const/4 v11, 0x0

    invoke-direct {p0, v5, v6, v11}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_4

    .restart local v5       #top:I
    :cond_1e
    move v5, v2

    goto :goto_8

    .line 525
    :cond_1f
    if-eqz v8, :cond_20

    .end local v5           #top:I
    :goto_9
    const/4 v11, 0x0

    invoke-direct {p0, v5, v6, v11}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_4

    .restart local v5       #top:I
    :cond_20
    move v5, v2

    goto :goto_9

    .line 528
    .end local v1           #cancel:Z
    :cond_21
    if-eqz v8, :cond_22

    .end local v5           #top:I
    :goto_a
    const/4 v11, 0x0

    invoke-direct {p0, v5, v6, v11}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_4

    .restart local v5       #top:I
    :cond_22
    move v5, v2

    goto :goto_a
.end method

.method private prepareContent()V
    .locals 10

    .prologue
    const/high16 v8, 0x4000

    const/4 v9, 0x0

    .line 768
    iget-boolean v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_0

    .line 815
    :goto_0
    return-void

    .line 774
    :cond_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 775
    .local v2, content:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 776
    iget-boolean v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_4

    .line 777
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleHeight:I

    .line 778
    .local v0, childHeight:I
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    sub-int v3, v5, v6

    .line 779
    .local v3, height:I
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 780
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 779
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 781
    iget-boolean v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-eqz v5, :cond_3

    .line 782
    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 783
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 782
    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 808
    .end local v0           #childHeight:I
    .end local v3           #height:I
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 810
    :try_start_0
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :cond_2
    :goto_2
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 785
    .restart local v0       #childHeight:I
    .restart local v3       #height:I
    :cond_3
    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 786
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 785
    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 790
    .end local v0           #childHeight:I
    .end local v3           #height:I
    :cond_4
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 791
    .local v1, childWidth:I
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    sub-int v4, v5, v6

    .line 792
    .local v4, width:I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 793
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 792
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 794
    iget-boolean v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-eqz v5, :cond_5

    .line 795
    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    .line 796
    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 797
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 795
    invoke-virtual {v2, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 799
    :cond_5
    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    .line 800
    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 801
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 799
    invoke-virtual {v2, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 811
    .end local v1           #childWidth:I
    .end local v4           #width:I
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private prepareTracking(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/16 v7, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 657
    iput-boolean v4, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTracking:Z

    .line 658
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 659
    iget-boolean v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_0

    move v2, v3

    .line 660
    .local v2, opening:Z
    :goto_0
    if-eqz v2, :cond_3

    .line 661
    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 662
    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 663
    iget-boolean v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-eqz v3, :cond_1

    .line 664
    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    int-to-float v3, v3

    iput v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimationPosition:F

    .line 669
    :goto_1
    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->moveHandle(I)V

    .line 670
    iput-boolean v4, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimating:Z

    .line 671
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 672
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 673
    .local v0, now:J
    iput-wide v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 674
    const-wide/16 v5, 0x10

    add-long/2addr v5, v0

    iput-wide v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 675
    iput-boolean v4, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimating:Z

    .line 683
    .end local v0           #now:J
    :goto_2
    return-void

    .end local v2           #opening:Z
    :cond_0
    move v2, v4

    .line 659
    goto :goto_0

    .line 666
    .restart local v2       #opening:Z
    :cond_1
    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    .line 667
    iget-boolean v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getHeight()I

    move-result v3

    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_3
    add-int/2addr v3, v5

    int-to-float v3, v3

    .line 666
    iput v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimationPosition:F

    goto :goto_1

    .line 667
    :cond_2
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getWidth()I

    move-result v3

    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_3

    .line 677
    :cond_3
    iget-boolean v4, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_4

    .line 678
    iput-boolean v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimating:Z

    .line 679
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 681
    :cond_4
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->moveHandle(I)V

    goto :goto_2
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 818
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 819
    iput-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTracking:Z

    .line 821
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mOnDrawerScrollListener:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mOnDrawerScrollListener:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 825
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 829
    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    .prologue
    .line 950
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->prepareContent()V

    .line 951
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mOnDrawerScrollListener:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 952
    .local v0, scrollListener:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 953
    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 955
    :cond_0
    iget-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->animateClose(I)V

    .line 957
    if-eqz v0, :cond_1

    .line 958
    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 960
    :cond_1
    return-void

    .line 955
    :cond_2
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    .prologue
    .line 972
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->prepareContent()V

    .line 973
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mOnDrawerScrollListener:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 974
    .local v0, scrollListener:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 975
    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 977
    :cond_0
    iget-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->animateOpen(I)V

    .line 979
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    .line 981
    if-eqz v0, :cond_1

    .line 982
    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 984
    :cond_1
    return-void

    .line 977
    :cond_2
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    .prologue
    .line 905
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 906
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->animateOpen()V

    .line 910
    :goto_0
    return-void

    .line 908
    :cond_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 935
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->closeDrawer()V

    .line 936
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->invalidate()V

    .line 937
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->requestLayout()V

    .line 938
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 305
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getDrawingTime()J

    move-result-wide v1

    .line 306
    .local v1, drawingTime:J
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 307
    .local v3, handle:Landroid/view/View;
    iget-boolean v4, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVertical:Z

    .line 309
    .local v4, isVertical:Z
    invoke-virtual {p0, p1, v3, v1, v2}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 310
    iget-boolean v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTracking:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v6, :cond_b

    .line 311
    :cond_0
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 312
    .local v0, cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 313
    if-eqz v4, :cond_3

    .line 314
    iget-boolean v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleHeight:I

    add-int/2addr v5, v6

    :goto_0
    int-to-float v5, v5

    invoke-virtual {p1, v0, v8, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 332
    :goto_1
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->invalidate()V

    .line 336
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_1
    :goto_2
    return-void

    .line 314
    .restart local v0       #cache:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    goto :goto_0

    .line 316
    :cond_3
    iget-boolean v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    :goto_3
    int-to-float v5, v5

    invoke-virtual {p1, v0, v5, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    goto :goto_3

    .line 319
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 320
    iget-boolean v6, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-eqz v6, :cond_8

    .line 321
    if-eqz v4, :cond_7

    move v6, v5

    :goto_4
    int-to-float v6, v6

    .line 322
    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v5, v7

    :cond_6
    int-to-float v5, v5

    .line 321
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 329
    :goto_5
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 330
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 321
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    goto :goto_4

    .line 324
    :cond_8
    if-eqz v4, :cond_a

    move v6, v5

    :goto_6
    int-to-float v6, v6

    .line 325
    if-eqz v4, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    :cond_9
    int-to-float v5, v5

    .line 324
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5

    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    goto :goto_6

    .line 333
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_b
    iget-boolean v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_1

    .line 334
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_2
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 1099
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 1090
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 1081
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mLocked:Z

    .line 1082
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 260
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 261
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$DrawerToggler;-><init>(Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$DrawerToggler;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 268
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 392
    iget-boolean v9, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v7

    .line 396
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 397
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 398
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 399
    .local v6, y:F
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 400
    .local v3, frame:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 401
    .local v2, contentframe:Landroid/graphics/Rect;
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 402
    .local v4, handle:Landroid/view/View;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 403
    .local v1, content:Landroid/view/View;
    invoke-virtual {v4, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 404
    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 406
    iget-boolean v9, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTracking:Z

    if-nez v9, :cond_2

    float-to-int v9, v5

    float-to-int v10, v6

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-nez v9, :cond_2

    .line 407
    float-to-int v9, v5

    float-to-int v10, v6

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->isOpened()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 411
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 436
    :cond_3
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 413
    :pswitch_1
    iput v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mPreX:F

    goto :goto_1

    .line 417
    :pswitch_2
    float-to-int v9, v5

    float-to-int v10, v6

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 418
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mPreX:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    iget v10, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 419
    iput-boolean v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTracking:Z

    .line 420
    invoke-direct {p0, v5, v6, p1}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->addTracking(FFLandroid/view/MotionEvent;)V

    move v7, v8

    .line 421
    goto :goto_0

    .line 423
    :cond_4
    iput-boolean v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTracking:Z

    goto :goto_0

    .line 425
    :cond_5
    float-to-int v9, v5

    float-to-int v10, v6

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 426
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mPreX:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    iget v10, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTouchSlop:I

    neg-int v10, v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_6

    .line 427
    iput-boolean v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTracking:Z

    .line 428
    invoke-direct {p0, v5, v6, p1}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->addTracking(FFLandroid/view/MotionEvent;)V

    move v7, v8

    .line 429
    goto/16 :goto_0

    .line 431
    :cond_6
    iput-boolean v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTracking:Z

    goto/16 :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 340
    iget-boolean v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_0

    .line 388
    :goto_0
    return-void

    .line 344
    :cond_0
    sub-int v7, p4, p2

    .line 345
    .local v7, width:I
    sub-int v6, p5, p3

    .line 347
    .local v6, height:I
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 349
    .local v5, handle:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 350
    .local v3, childWidth:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 355
    .local v0, childHeight:I
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 357
    .local v4, content:Landroid/view/View;
    iget-boolean v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_4

    .line 358
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 359
    .local v1, childLeft:I
    iget-boolean v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-eqz v8, :cond_2

    .line 360
    iget-boolean v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_1

    sub-int v8, v6, v0

    iget v9, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    sub-int v2, v8, v9

    .line 361
    .local v2, childTop:I
    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 362
    iget v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    .line 361
    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 385
    :goto_2
    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 386
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleHeight:I

    .line 387
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 360
    .end local v2           #childTop:I
    :cond_1
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    goto :goto_1

    .line 364
    :cond_2
    iget-boolean v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_3

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    .line 365
    .restart local v2       #childTop:I
    :goto_3
    const/4 v8, 0x0

    iget v9, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 366
    iget v11, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    .line 365
    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 364
    .end local v2           #childTop:I
    :cond_3
    sub-int v8, v6, v0

    iget v9, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    add-int v2, v8, v9

    goto :goto_3

    .line 371
    .end local v1           #childLeft:I
    :cond_4
    sub-int v8, v6, v0

    div-int/lit8 v2, v8, 0x2

    .line 372
    .restart local v2       #childTop:I
    iget-boolean v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mReversal:Z

    if-eqz v8, :cond_6

    .line 373
    iget-boolean v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_5

    sub-int v8, v7, v3

    iget v9, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    sub-int v1, v8, v9

    .line 374
    .restart local v1       #childLeft:I
    :goto_4
    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    const/4 v9, 0x0

    iget v10, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    .line 375
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 374
    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 373
    .end local v1           #childLeft:I
    :cond_5
    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    goto :goto_4

    .line 377
    :cond_6
    iget-boolean v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_7

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    .line 378
    .restart local v1       #childLeft:I
    :goto_5
    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v3

    const/4 v9, 0x0

    .line 379
    iget v10, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v10, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    .line 380
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 378
    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 377
    .end local v1           #childLeft:I
    :cond_7
    sub-int v8, v7, v3

    iget v9, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mBottomOffset:I

    add-int v1, v8, v9

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 277
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 278
    .local v5, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 280
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 281
    .local v2, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 283
    .local v3, heightSpecSize:I
    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 284
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 287
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 288
    .local v0, handle:Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 290
    iget-boolean v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_2

    .line 291
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v8

    .line 292
    .local v1, height:I
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 293
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 292
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 300
    .end local v1           #height:I
    :goto_0
    invoke-virtual {p0, v6, v3}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->setMeasuredDimension(II)V

    .line 301
    return-void

    .line 295
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTopOffset:I

    sub-int v4, v7, v8

    .line 296
    .local v4, width:I
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 297
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 296
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 535
    iget-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mLocked:Z

    if-eqz v1, :cond_0

    move v1, v2

    .line 555
    :goto_0
    return v1

    .line 539
    :cond_0
    iget-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTracking:Z

    if-eqz v1, :cond_1

    .line 540
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 541
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 542
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 555
    .end local v0           #action:I
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTracking:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimating:Z

    if-nez v1, :cond_3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 544
    .restart local v0       #action:I
    :pswitch_0
    iget-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    :goto_2
    float-to-int v1, v1

    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mTouchDelta:I

    sub-int/2addr v1, v3

    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->moveHandle(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    goto :goto_2

    .line 549
    :pswitch_1
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->performTouchEventUpOrCancel()V

    goto :goto_1

    .end local v0           #action:I
    :cond_3
    move v1, v2

    .line 555
    goto :goto_0

    .line 542
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 1

    .prologue
    .line 920
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->openDrawer()V

    .line 921
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->invalidate()V

    .line 922
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->requestLayout()V

    .line 924
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    .line 925
    return-void
.end method

.method public setOnDrawerCloseListener(Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .parameter "onDrawerCloseListener"

    .prologue
    .line 1031
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mOnDrawerCloseListener:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerCloseListener;

    .line 1032
    return-void
.end method

.method public setOnDrawerOpenListener(Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .parameter "onDrawerOpenListener"

    .prologue
    .line 1022
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mOnDrawerOpenListener:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerOpenListener;

    .line 1023
    return-void
.end method

.method public setOnDrawerScrollListener(Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .parameter "onDrawerScrollListener"

    .prologue
    .line 1043
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mOnDrawerScrollListener:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 1044
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 886
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 887
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->openDrawer()V

    .line 891
    :goto_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->invalidate()V

    .line 892
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->requestLayout()V

    .line 893
    return-void

    .line 889
    :cond_0
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 1072
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mLocked:Z

    .line 1073
    return-void
.end method
