.class public Lcom/android/email/view/NonLockingScrollView;
.super Landroid/widget/ScrollView;
.source "NonLockingScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/view/NonLockingScrollView$OnOverScrollListener;
    }
.end annotation


# static fields
.field private static final INTERCEPT_MAX_VELOCITY:I = 0x7d0

.field private static final MAX_VELOCITY_RATE:F = 1.2f

.field private static final OVERSCROLLED_MSG:I = 0xc8

.field private static final TIME_ELAPSED:J = 0x1f4L

.field private static final VELOCITY_SCALE:I = 0x5

.field private static final sHitFrame:Landroid/graphics/Rect;


# instance fields
.field private mBottomHeight:I

.field private final mChildrenNeedingAllTouches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContentLen:I

.field private mElapsedOverScrolled:J

.field private mHandler:Landroid/os/Handler;

.field private mInCustomDrag:Z

.field private mInterceptXMotion:Z

.field private mIsScrollFreeze:Z

.field private mMaximumVelocity:F

.field private mMsg:Landroid/os/Message;

.field private mOnOverScrollListener:Lcom/android/email/view/NonLockingScrollView$OnOverScrollListener;

.field private mToggleLoading:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 334
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/email/view/NonLockingScrollView;->sHitFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 51
    iput v2, p0, Lcom/android/email/view/NonLockingScrollView;->mContentLen:I

    .line 52
    iput v2, p0, Lcom/android/email/view/NonLockingScrollView;->mViewHeight:I

    .line 53
    iput v2, p0, Lcom/android/email/view/NonLockingScrollView;->mBottomHeight:I

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/view/NonLockingScrollView;->mElapsedOverScrolled:J

    .line 56
    iput-boolean v2, p0, Lcom/android/email/view/NonLockingScrollView;->mToggleLoading:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/view/NonLockingScrollView;->mMsg:Landroid/os/Message;

    .line 100
    new-instance v0, Lcom/android/email/view/NonLockingScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/email/view/NonLockingScrollView$1;-><init>(Lcom/android/email/view/NonLockingScrollView;)V

    iput-object v0, p0, Lcom/android/email/view/NonLockingScrollView;->mHandler:Landroid/os/Handler;

    .line 152
    iput-boolean v2, p0, Lcom/android/email/view/NonLockingScrollView;->mInCustomDrag:Z

    .line 158
    iput-boolean v2, p0, Lcom/android/email/view/NonLockingScrollView;->mInterceptXMotion:Z

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/view/NonLockingScrollView;->mChildrenNeedingAllTouches:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput v3, p0, Lcom/android/email/view/NonLockingScrollView;->mContentLen:I

    .line 52
    iput v3, p0, Lcom/android/email/view/NonLockingScrollView;->mViewHeight:I

    .line 53
    iput v3, p0, Lcom/android/email/view/NonLockingScrollView;->mBottomHeight:I

    .line 54
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/email/view/NonLockingScrollView;->mElapsedOverScrolled:J

    .line 56
    iput-boolean v3, p0, Lcom/android/email/view/NonLockingScrollView;->mToggleLoading:Z

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/view/NonLockingScrollView;->mMsg:Landroid/os/Message;

    .line 100
    new-instance v1, Lcom/android/email/view/NonLockingScrollView$1;

    invoke-direct {v1, p0}, Lcom/android/email/view/NonLockingScrollView$1;-><init>(Lcom/android/email/view/NonLockingScrollView;)V

    iput-object v1, p0, Lcom/android/email/view/NonLockingScrollView;->mHandler:Landroid/os/Handler;

    .line 152
    iput-boolean v3, p0, Lcom/android/email/view/NonLockingScrollView;->mInCustomDrag:Z

    .line 158
    iput-boolean v3, p0, Lcom/android/email/view/NonLockingScrollView;->mInterceptXMotion:Z

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/email/view/NonLockingScrollView;->mChildrenNeedingAllTouches:Ljava/util/ArrayList;

    .line 73
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 74
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/email/view/NonLockingScrollView;->mMaximumVelocity:F

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput v2, p0, Lcom/android/email/view/NonLockingScrollView;->mContentLen:I

    .line 52
    iput v2, p0, Lcom/android/email/view/NonLockingScrollView;->mViewHeight:I

    .line 53
    iput v2, p0, Lcom/android/email/view/NonLockingScrollView;->mBottomHeight:I

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/view/NonLockingScrollView;->mElapsedOverScrolled:J

    .line 56
    iput-boolean v2, p0, Lcom/android/email/view/NonLockingScrollView;->mToggleLoading:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/view/NonLockingScrollView;->mMsg:Landroid/os/Message;

    .line 100
    new-instance v0, Lcom/android/email/view/NonLockingScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/email/view/NonLockingScrollView$1;-><init>(Lcom/android/email/view/NonLockingScrollView;)V

    iput-object v0, p0, Lcom/android/email/view/NonLockingScrollView;->mHandler:Landroid/os/Handler;

    .line 152
    iput-boolean v2, p0, Lcom/android/email/view/NonLockingScrollView;->mInCustomDrag:Z

    .line 158
    iput-boolean v2, p0, Lcom/android/email/view/NonLockingScrollView;->mInterceptXMotion:Z

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/view/NonLockingScrollView;->mChildrenNeedingAllTouches:Ljava/util/ArrayList;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/view/NonLockingScrollView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/android/email/view/NonLockingScrollView;->mElapsedOverScrolled:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/email/view/NonLockingScrollView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/android/email/view/NonLockingScrollView;->mElapsedOverScrolled:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/email/view/NonLockingScrollView;)Lcom/android/email/view/NonLockingScrollView$OnOverScrollListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/email/view/NonLockingScrollView;->mOnOverScrollListener:Lcom/android/email/view/NonLockingScrollView$OnOverScrollListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/email/view/NonLockingScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/email/view/NonLockingScrollView;->mToggleLoading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/email/view/NonLockingScrollView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/email/view/NonLockingScrollView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private canViewReceivePointerEvents(Landroid/view/View;)Z
    .locals 1
    .parameter "child"

    .prologue
    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private excludeChildrenFromInterceptions(Landroid/view/View;)V
    .locals 5
    .parameter "node"

    .prologue
    .line 322
    instance-of v4, p1, Landroid/webkit/WebView;

    if-eqz v4, :cond_1

    .line 323
    iget-object v4, p0, Lcom/android/email/view/NonLockingScrollView;->mChildrenNeedingAllTouches:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_0
    return-void

    .line 324
    :cond_1
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 325
    check-cast v3, Landroid/view/ViewGroup;

    .line 326
    .local v3, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 327
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 328
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 329
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/email/view/NonLockingScrollView;->excludeChildrenFromInterceptions(Landroid/view/View;)V

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/email/view/NonLockingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 172
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/view/NonLockingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 174
    :cond_0
    return-void
.end method

.method private isEventOverChild(Landroid/view/MotionEvent;Ljava/util/ArrayList;)Z
    .locals 8
    .parameter "ev"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 336
    .local p2, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 337
    .local v0, actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    add-float v3, v5, v6

    .line 338
    .local v3, x:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    add-float v4, v5, v6

    .line 340
    .local v4, y:F
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 341
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/email/view/NonLockingScrollView;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 344
    sget-object v5, Lcom/android/email/view/NonLockingScrollView;->sHitFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 347
    sget-object v5, Lcom/android/email/view/NonLockingScrollView;->sHitFrame:Landroid/graphics/Rect;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 348
    const/4 v5, 0x1

    .line 351
    .end local v1           #child:Landroid/view/View;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private needInterceptXMotion(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-le v4, v8, :cond_0

    .line 243
    iput-boolean v7, p0, Lcom/android/email/view/NonLockingScrollView;->mInterceptXMotion:Z

    .line 267
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v4, p0, Lcom/android/email/view/NonLockingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget v6, p0, Lcom/android/email/view/NonLockingScrollView;->mMaximumVelocity:F

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 248
    iget-object v4, p0, Lcom/android/email/view/NonLockingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    .line 250
    .local v2, scrollVelocityY:F
    iget-object v4, p0, Lcom/android/email/view/NonLockingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    .line 253
    .local v1, scrollVelocityX:F
    iget v4, p0, Lcom/android/email/view/NonLockingScrollView;->mMaximumVelocity:F

    const/high16 v5, 0x40a0

    div-float v3, v4, v5

    .line 254
    .local v3, threshold:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_1

    .line 257
    iput-boolean v7, p0, Lcom/android/email/view/NonLockingScrollView;->mInterceptXMotion:Z

    goto :goto_0

    .line 261
    :cond_1
    div-float v0, v2, v1

    .line 262
    .local v0, rate:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3f99999a

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 263
    iput-boolean v8, p0, Lcom/android/email/view/NonLockingScrollView;->mInterceptXMotion:Z

    goto :goto_0

    .line 265
    :cond_2
    iput-boolean v7, p0, Lcom/android/email/view/NonLockingScrollView;->mInterceptXMotion:Z

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/email/view/NonLockingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/email/view/NonLockingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/view/NonLockingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method public getToggleLoading()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/email/view/NonLockingScrollView;->mToggleLoading:Z

    return v0
.end method

.method public isScrollFreeze()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/email/view/NonLockingScrollView;->mIsScrollFreeze:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 311
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 312
    invoke-direct {p0, p0}, Lcom/android/email/view/NonLockingScrollView;->excludeChildrenFromInterceptions(Landroid/view/View;)V

    .line 313
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 272
    .local v0, action:I
    if-ne v0, v1, :cond_0

    .line 277
    .local v1, isUp:Z
    :goto_0
    iget-object v2, p0, Lcom/android/email/view/NonLockingScrollView;->mChildrenNeedingAllTouches:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2}, Lcom/android/email/view/NonLockingScrollView;->isEventOverChild(Landroid/view/MotionEvent;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 278
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 282
    :goto_1
    return v2

    .line 272
    .end local v1           #isUp:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 280
    .restart local v1       #isUp:Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/email/view/NonLockingScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 282
    iget-boolean v2, p0, Lcom/android/email/view/NonLockingScrollView;->mInterceptXMotion:Z

    goto :goto_1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 2
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/email/view/NonLockingScrollView;->mContentLen:I

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/email/view/NonLockingScrollView;->mViewHeight:I

    .line 137
    if-eqz p4, :cond_1

    if-gtz p2, :cond_0

    iget v0, p0, Lcom/android/email/view/NonLockingScrollView;->mContentLen:I

    iget v1, p0, Lcom/android/email/view/NonLockingScrollView;->mViewHeight:I

    if-gt v0, v1, :cond_1

    .line 138
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/android/email/view/NonLockingScrollView;->mMsg:Landroid/os/Message;

    .line 139
    iget-object v0, p0, Lcom/android/email/view/NonLockingScrollView;->mMsg:Landroid/os/Message;

    const/16 v1, 0xc8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 140
    iget-object v0, p0, Lcom/android/email/view/NonLockingScrollView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/email/view/NonLockingScrollView;->mMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v10, 0x0

    .line 185
    iput-boolean v10, p0, Lcom/android/email/view/NonLockingScrollView;->mIsScrollFreeze:Z

    .line 186
    invoke-direct {p0}, Lcom/android/email/view/NonLockingScrollView;->initVelocityTrackerIfNotExists()V

    .line 187
    iget-object v11, p0, Lcom/android/email/view/NonLockingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 192
    .local v0, action:I
    const/4 v3, 0x0

    .line 193
    .local v3, isOver:Z
    const/4 v7, 0x0

    .line 194
    .local v7, topY:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 195
    .local v9, y:I
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 196
    .local v4, lLayout:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_2

    .line 197
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 198
    .local v1, count:I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 199
    .local v8, visibleRect:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 200
    .local v5, rigidWebView:Landroid/webkit/WebView;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 201
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 202
    .local v6, tempchild:Landroid/view/View;
    instance-of v11, v6, Landroid/webkit/WebView;

    if-eqz v11, :cond_0

    move-object v5, v6

    .line 203
    check-cast v5, Landroid/webkit/WebView;

    .line 204
    invoke-virtual {v5, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 205
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    .line 200
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v6           #tempchild:Landroid/view/View;
    :cond_1
    if-eqz v5, :cond_2

    .line 210
    if-le v9, v7, :cond_3

    const/4 v3, 0x1

    .line 211
    :goto_1
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v5, v11, v12, v3, v7}, Landroid/webkit/WebView;->setVisibleParameterForEmail(IIZI)V

    .line 218
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v5           #rigidWebView:Landroid/webkit/WebView;
    .end local v8           #visibleRect:Landroid/graphics/Rect;
    :cond_2
    and-int/lit16 v11, v0, 0xff

    packed-switch v11, :pswitch_data_0

    .line 230
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    return v10

    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v5       #rigidWebView:Landroid/webkit/WebView;
    .restart local v8       #visibleRect:Landroid/graphics/Rect;
    :cond_3
    move v3, v10

    .line 210
    goto :goto_1

    .line 220
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v5           #rigidWebView:Landroid/webkit/WebView;
    .end local v8           #visibleRect:Landroid/graphics/Rect;
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/email/view/NonLockingScrollView;->needInterceptXMotion(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 223
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/view/NonLockingScrollView;->recycleVelocityTracker()V

    .line 224
    iput-boolean v10, p0, Lcom/android/email/view/NonLockingScrollView;->mInterceptXMotion:Z

    goto :goto_2

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollFreeze()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/view/NonLockingScrollView;->mIsScrollFreeze:Z

    .line 84
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-boolean v0, p0, Lcom/android/email/view/NonLockingScrollView;->mIsScrollFreeze:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-super {p0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method public setOnOverScrollListener(Lcom/android/email/view/NonLockingScrollView$OnOverScrollListener;)V
    .locals 0
    .parameter "onOverScrollListener"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/email/view/NonLockingScrollView;->mOnOverScrollListener:Lcom/android/email/view/NonLockingScrollView$OnOverScrollListener;

    .line 364
    return-void
.end method
