.class public Lcom/android/calendar/month/MonthListView;
.super Landroid/widget/ListView;
.source "MonthListView.java"


# static fields
.field private static FLING_TIME:I = 0x0

.field private static FLING_VELOCITY_DIVIDER:I = 0x0

.field private static MIN_VELOCITY_FOR_FLING:I = 0x0

.field private static MULTIPLE_MONTH_VELOCITY_THRESHOLD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MonthListView"

.field private static mScale:F


# instance fields
.field private mDownActionTime:J

.field private final mFirstViewRect:Landroid/graphics/Rect;

.field mListContext:Landroid/content/Context;

.field protected mTempTime:Landroid/text/format/Time;

.field private final mTimezoneUpdater:Ljava/lang/Runnable;

.field mTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/month/MonthListView;->mScale:F

    .line 42
    const/16 v0, 0x5dc

    sput v0, Lcom/android/calendar/month/MonthListView;->MIN_VELOCITY_FOR_FLING:I

    .line 43
    const/16 v0, 0x7d0

    sput v0, Lcom/android/calendar/month/MonthListView;->MULTIPLE_MONTH_VELOCITY_THRESHOLD:I

    .line 44
    const/16 v0, 0x1f4

    sput v0, Lcom/android/calendar/month/MonthListView;->FLING_VELOCITY_DIVIDER:I

    .line 45
    const/16 v0, 0x3e8

    sput v0, Lcom/android/calendar/month/MonthListView;->FLING_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/MonthListView;->mFirstViewRect:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Lcom/android/calendar/month/MonthListView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/MonthListView$1;-><init>(Lcom/android/calendar/month/MonthListView;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthListView;->mTimezoneUpdater:Ljava/lang/Runnable;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/calendar/month/MonthListView;->init(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/MonthListView;->mFirstViewRect:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Lcom/android/calendar/month/MonthListView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/MonthListView$1;-><init>(Lcom/android/calendar/month/MonthListView;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthListView;->mTimezoneUpdater:Ljava/lang/Runnable;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/calendar/month/MonthListView;->init(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/MonthListView;->mFirstViewRect:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Lcom/android/calendar/month/MonthListView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/MonthListView$1;-><init>(Lcom/android/calendar/month/MonthListView;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthListView;->mTimezoneUpdater:Ljava/lang/Runnable;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/calendar/month/MonthListView;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/month/MonthListView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/calendar/month/MonthListView;->mTimezoneUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method private doFling(F)V
    .locals 21
    .parameter "velocityY"

    .prologue
    .line 135
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/calendar/month/MonthListView;->mDownActionTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 137
    .local v10, cancelEvent:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/calendar/month/MonthListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 142
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lcom/android/calendar/month/MonthListView;->MULTIPLE_MONTH_VELOCITY_THRESHOLD:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 143
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 144
    const/4 v14, 0x1

    .line 161
    .local v14, monthsToJump:I
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/month/MonthListView;->getUpperRightJulianDay()I

    move-result v11

    .line 164
    .local v11, day:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthListView;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v2, v11}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthListView;->mTempTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthListView;->mTempTime:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->month:I

    add-int/2addr v3, v14

    iput v3, v2, Landroid/text/format/Time;->month:I

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthListView;->mTempTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v17

    .line 171
    .local v17, timeInMillis:J
    const-wide/16 v2, 0x0

    cmp-long v2, v17, v2

    if-gez v2, :cond_3

    .line 195
    :goto_1
    return-void

    .line 148
    .end local v11           #day:I
    .end local v14           #monthsToJump:I
    .end local v17           #timeInMillis:J
    :cond_0
    const/4 v14, 0x0

    .restart local v14       #monthsToJump:I
    goto :goto_0

    .line 151
    .end local v14           #monthsToJump:I
    :cond_1
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    .line 152
    sget v2, Lcom/android/calendar/month/MonthListView;->MULTIPLE_MONTH_VELOCITY_THRESHOLD:I

    int-to-float v2, v2

    add-float v2, v2, p1

    sget v3, Lcom/android/calendar/month/MonthListView;->FLING_VELOCITY_DIVIDER:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    rsub-int/lit8 v14, v2, 0x1

    .restart local v14       #monthsToJump:I
    goto :goto_0

    .line 155
    .end local v14           #monthsToJump:I
    :cond_2
    sget v2, Lcom/android/calendar/month/MonthListView;->MULTIPLE_MONTH_VELOCITY_THRESHOLD:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    sget v3, Lcom/android/calendar/month/MonthListView;->FLING_VELOCITY_DIVIDER:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v14, v2

    .restart local v14       #monthsToJump:I
    goto :goto_0

    .line 178
    .restart local v11       #day:I
    .restart local v17       #timeInMillis:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthListView;->mTempTime:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, v17

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    if-lez v14, :cond_4

    const/4 v2, 0x6

    :goto_2
    add-int v16, v3, v2

    .line 184
    .local v16, scrollToDay:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 185
    .local v12, firstView:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 187
    .local v13, firstViewHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthListView;->mFirstViewRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthListView;->mFirstViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthListView;->mFirstViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v19, v2, v3

    .line 189
    .local v19, topViewVisiblePart:I
    sub-int v2, v16, v11

    div-int/lit8 v3, v2, 0x7

    if-gtz v14, :cond_5

    const/4 v2, 0x1

    :goto_3
    sub-int v20, v3, v2

    .line 190
    .local v20, viewsToFling:I
    if-lez v20, :cond_6

    sub-int v2, v13, v19

    sget v3, Lcom/android/calendar/month/SimpleDayPickerFragment;->LIST_TOP_OFFSET:I

    add-int/2addr v2, v3

    neg-int v15, v2

    .line 194
    .local v15, offset:I
    :goto_4
    mul-int v2, v20, v13

    add-int/2addr v2, v15

    sget v3, Lcom/android/calendar/month/MonthListView;->FLING_TIME:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_1

    .line 178
    .end local v12           #firstView:Landroid/view/View;
    .end local v13           #firstViewHeight:I
    .end local v15           #offset:I
    .end local v16           #scrollToDay:I
    .end local v19           #topViewVisiblePart:I
    .end local v20           #viewsToFling:I
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 189
    .restart local v12       #firstView:Landroid/view/View;
    .restart local v13       #firstViewHeight:I
    .restart local v16       #scrollToDay:I
    .restart local v19       #topViewVisiblePart:I
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 190
    .restart local v20       #viewsToFling:I
    :cond_6
    sget v2, Lcom/android/calendar/month/SimpleDayPickerFragment;->LIST_TOP_OFFSET:I

    sub-int v15, v19, v2

    goto :goto_4
.end method

.method private getUpperRightJulianDay()I
    .locals 2

    .prologue
    .line 199
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/month/SimpleWeekView;

    .line 200
    .local v0, child:Lcom/android/calendar/month/SimpleWeekView;
    if-nez v0, :cond_0

    .line 201
    const/4 v1, -0x1

    .line 203
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getFirstJulianDay()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/calendar/month/MonthListView;->mListContext:Landroid/content/Context;

    .line 82
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthListView;->mTracker:Landroid/view/VelocityTracker;

    .line 83
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthListView;->mTimezoneUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthListView;->mTempTime:Landroid/text/format/Time;

    .line 84
    sget v0, Lcom/android/calendar/month/MonthListView;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/calendar/month/MonthListView;->mScale:F

    .line 86
    sget v0, Lcom/android/calendar/month/MonthListView;->mScale:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 87
    sget v0, Lcom/android/calendar/month/MonthListView;->MIN_VELOCITY_FOR_FLING:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/month/MonthListView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/month/MonthListView;->MIN_VELOCITY_FOR_FLING:I

    .line 88
    sget v0, Lcom/android/calendar/month/MonthListView;->MULTIPLE_MONTH_VELOCITY_THRESHOLD:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/month/MonthListView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/month/MonthListView;->MULTIPLE_MONTH_VELOCITY_THRESHOLD:I

    .line 89
    sget v0, Lcom/android/calendar/month/MonthListView;->FLING_VELOCITY_DIVIDER:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/month/MonthListView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/month/MonthListView;->FLING_VELOCITY_DIVIDER:I

    .line 92
    :cond_0
    return-void
.end method

.method private processEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 125
    :pswitch_0
    iget-object v2, p0, Lcom/android/calendar/month/MonthListView;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 128
    :cond_0
    :goto_0
    :pswitch_1
    return v1

    .line 111
    :pswitch_2
    iget-object v2, p0, Lcom/android/calendar/month/MonthListView;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/calendar/month/MonthListView;->mDownActionTime:J

    goto :goto_0

    .line 116
    :pswitch_3
    iget-object v2, p0, Lcom/android/calendar/month/MonthListView;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 117
    iget-object v2, p0, Lcom/android/calendar/month/MonthListView;->mTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 118
    iget-object v2, p0, Lcom/android/calendar/month/MonthListView;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 119
    .local v0, vel:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lcom/android/calendar/month/MonthListView;->MIN_VELOCITY_FOR_FLING:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 120
    invoke-direct {p0, v0}, Lcom/android/calendar/month/MonthListView;->doFling(F)V

    .line 121
    const/4 v1, 0x1

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/calendar/month/MonthListView;->processEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/calendar/month/MonthListView;->processEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
