.class public Lcom/android/calendar/month/SimpleDayPickerFragment;
.super Landroid/app/ListFragment;
.source "SimpleDayPickerFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;
    }
.end annotation


# static fields
.field public static final DAYS_PER_WEEK:I = 0x7

.field protected static final GOTO_SCROLL_DURATION:I = 0x1f4

.field private static final KEY_CURRENT_TIME:Ljava/lang/String; = "current_time"

.field public static LIST_TOP_OFFSET:I = 0x0

.field protected static final MINI_MONTH_NAME_TEXT_SIZE:I = 0x12

.field protected static final SCROLL_CHANGE_DELAY:I = 0x28

.field protected static final SCROLL_HYST_WEEKS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MonthFragment"

.field private static mScale:F


# instance fields
.field protected BOTTOM_BUFFER:I

.field protected WEEK_MIN_VISIBLE_HEIGHT:I

.field protected mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentMonthDisplayed:I

.field protected mCurrentScrollState:I

.field protected mDayLabels:[Ljava/lang/String;

.field protected mDayNameColor:I

.field protected mDayNamesHeader:Landroid/view/ViewGroup;

.field protected mDaysPerWeek:I

.field protected mFirstDayOfMonth:Landroid/text/format/Time;

.field protected mFirstDayOfWeek:I

.field protected mFirstVisibleDay:Landroid/text/format/Time;

.field protected mFriction:F

.field protected mHandler:Landroid/os/Handler;

.field protected mIsScrollingUp:Z

.field protected mListView:Landroid/widget/ListView;

.field protected mMinimumFlingVelocity:F

.field protected mMonthName:Landroid/widget/TextView;

.field protected mNumWeeks:I

.field protected mObserver:Landroid/database/DataSetObserver;

.field protected mPrevMonthName:Ljava/lang/CharSequence;

.field protected mPreviousScrollPosition:J

.field protected mPreviousScrollState:I

.field protected mSaturdayColor:I

.field protected mScrollStateChangedRunnable:Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;

.field protected mSelectedDay:Landroid/text/format/Time;

.field protected mShowWeekNumber:Z

.field protected mSundayColor:I

.field protected mTempTime:Landroid/text/format/Time;

.field protected mTodayUpdater:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, -0x1

    sput v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->LIST_TOP_OFFSET:I

    .line 102
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    return-void
.end method

.method public constructor <init>(J)V
    .locals 6
    .parameter "initialTime"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 156
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 73
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->WEEK_MIN_VISIBLE_HEIGHT:I

    .line 74
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->BOTTOM_BUFFER:I

    .line 75
    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSaturdayColor:I

    .line 76
    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSundayColor:I

    .line 77
    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNameColor:I

    .line 80
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    .line 81
    iput-boolean v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mShowWeekNumber:Z

    .line 82
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDaysPerWeek:I

    .line 85
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFriction:F

    .line 93
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    .line 100
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    .line 106
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    .line 108
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    .line 118
    iput-boolean v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    .line 120
    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollState:I

    .line 122
    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentScrollState:I

    .line 125
    new-instance v0, Lcom/android/calendar/month/SimpleDayPickerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/SimpleDayPickerFragment$1;-><init>(Lcom/android/calendar/month/SimpleDayPickerFragment;)V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTodayUpdater:Ljava/lang/Runnable;

    .line 146
    new-instance v0, Lcom/android/calendar/month/SimpleDayPickerFragment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/SimpleDayPickerFragment$2;-><init>(Lcom/android/calendar/month/SimpleDayPickerFragment;)V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mObserver:Landroid/database/DataSetObserver;

    .line 583
    new-instance v0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;-><init>(Lcom/android/calendar/month/SimpleDayPickerFragment;)V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScrollStateChangedRunnable:Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;

    move-object v0, p0

    move-wide v1, p1

    move v5, v4

    .line 157
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/month/SimpleDayPickerFragment;->goTo(JZZZ)Z

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mHandler:Landroid/os/Handler;

    .line 159
    return-void
.end method

.method private updateMonthHighlight(Landroid/widget/AbsListView;)V
    .locals 9
    .parameter "view"

    .prologue
    const/16 v8, 0xb

    const/4 v5, 0x0

    .line 507
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/month/SimpleWeekView;

    .line 508
    .local v0, child:Lcom/android/calendar/month/SimpleWeekView;
    if-nez v0, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->WEEK_MIN_VISIBLE_HEIGHT:I

    if-ge v6, v7, :cond_2

    const/4 v4, 0x1

    .line 517
    .local v4, offset:I
    :goto_1
    add-int/lit8 v6, v4, 0x2

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #child:Lcom/android/calendar/month/SimpleWeekView;
    check-cast v0, Lcom/android/calendar/month/SimpleWeekView;

    .line 519
    .restart local v0       #child:Lcom/android/calendar/month/SimpleWeekView;
    if-eqz v0, :cond_0

    .line 525
    iget-boolean v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    if-eqz v6, :cond_3

    .line 526
    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getFirstMonth()I

    move-result v2

    .line 533
    .local v2, month:I
    :goto_2
    iget v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentMonthDisplayed:I

    if-ne v6, v8, :cond_4

    if-nez v2, :cond_4

    .line 534
    const/4 v3, 0x1

    .line 543
    .local v3, monthDiff:I
    :goto_3
    if-eqz v3, :cond_0

    .line 544
    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getFirstJulianDay()I

    move-result v1

    .line 545
    .local v1, julianDay:I
    iget-boolean v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    if-eqz v6, :cond_6

    .line 551
    :goto_4
    iget-object v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v6, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 552
    iget-object v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {p0, v6, v5}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setMonthDisplayed(Landroid/text/format/Time;Z)V

    goto :goto_0

    .end local v1           #julianDay:I
    .end local v2           #month:I
    .end local v3           #monthDiff:I
    .end local v4           #offset:I
    :cond_2
    move v4, v5

    .line 513
    goto :goto_1

    .line 528
    .restart local v4       #offset:I
    :cond_3
    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getLastMonth()I

    move-result v2

    .restart local v2       #month:I
    goto :goto_2

    .line 535
    :cond_4
    iget v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentMonthDisplayed:I

    if-nez v6, :cond_5

    if-ne v2, v8, :cond_5

    .line 536
    const/4 v3, -0x1

    .restart local v3       #monthDiff:I
    goto :goto_3

    .line 538
    .end local v3           #monthDiff:I
    :cond_5
    iget v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentMonthDisplayed:I

    sub-int v3, v2, v6

    .restart local v3       #monthDiff:I
    goto :goto_3

    .line 549
    .restart local v1       #julianDay:I
    :cond_6
    add-int/lit8 v1, v1, 0x7

    goto :goto_4
.end method


# virtual methods
.method protected doResumeUpdates()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 302
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v6

    .line 303
    .local v6, cal:Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    .line 305
    iput-boolean v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mShowWeekNumber:Z

    .line 307
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->updateHeader()V

    .line 308
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/month/SimpleDayPickerFragment;->goTo(JZZZ)Z

    .line 309
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 310
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTodayUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 311
    return-void
.end method

.method public getSelectedTime()J
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public goTo(JZZZ)Z
    .locals 12
    .parameter "time"
    .parameter "animate"
    .parameter "setSelected"
    .parameter "forceScroll"

    .prologue
    .line 379
    const-wide/16 v9, -0x1

    cmp-long v9, p1, v9

    if-nez v9, :cond_0

    .line 380
    const-string v9, "MonthFragment"

    const-string v10, "time is invalid"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v9, 0x0

    .line 466
    :goto_0
    return v9

    .line 385
    :cond_0
    if-eqz p4, :cond_1

    .line 386
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v9, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 387
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 392
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v9

    if-nez v9, :cond_3

    .line 393
    const-string v9, "MonthFragment"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 394
    const-string v9, "MonthFragment"

    const-string v10, "We\'re not visible yet"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 399
    :cond_3
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v9, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 400
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 403
    .local v5, millis:J
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    iget-wide v9, v9, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v9, v10}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    iget v10, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    invoke-static {v9, v10}, Lcom/android/calendar/Utils;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v7

    .line 407
    .local v7, position:I
    const/4 v2, 0x0

    .line 408
    .local v2, i:I
    const/4 v8, 0x0

    .line 411
    .local v8, top:I
    :goto_1
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 412
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_9

    .line 423
    :cond_4
    if-eqz v0, :cond_b

    .line 424
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9, v0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 428
    .local v1, firstPosition:I
    :goto_2
    iget v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    add-int/2addr v9, v1

    add-int/lit8 v4, v9, -0x1

    .line 429
    .local v4, lastPosition:I
    iget v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->BOTTOM_BUFFER:I

    if-le v8, v9, :cond_5

    .line 430
    add-int/lit8 v4, v4, -0x1

    .line 433
    :cond_5
    if-eqz p4, :cond_6

    .line 434
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v10, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v9, v10}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 437
    :cond_6
    const-string v9, "MonthFragment"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 438
    const-string v9, "MonthFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GoTo position "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_7
    if-lt v7, v1, :cond_8

    if-gt v7, v4, :cond_8

    if-eqz p5, :cond_e

    .line 443
    :cond_8
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    iget-object v10, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 444
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    const/4 v10, 0x1

    iput v10, v9, Landroid/text/format/Time;->monthDay:I

    .line 445
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 447
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setMonthDisplayed(Landroid/text/format/Time;Z)V

    .line 449
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    iget-wide v9, v9, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v9, v10}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    iget v10, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    invoke-static {v9, v10}, Lcom/android/calendar/Utils;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v7

    .line 452
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollState:I

    .line 453
    if-eqz p3, :cond_c

    .line 454
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    sget v10, Lcom/android/calendar/month/SimpleDayPickerFragment;->LIST_TOP_OFFSET:I

    const/16 v11, 0x1f4

    invoke-virtual {v9, v7, v10, v11}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    .line 456
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 415
    .end local v1           #firstPosition:I
    .end local v4           #lastPosition:I
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    .line 416
    const-string v9, "MonthFragment"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 417
    const-string v9, "MonthFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "child at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has top "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_a
    if-gez v8, :cond_4

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto/16 :goto_1

    .line 426
    .end local v2           #i:I
    .restart local v3       #i:I
    :cond_b
    const/4 v1, 0x0

    .restart local v1       #firstPosition:I
    goto/16 :goto_2

    .line 458
    .restart local v4       #lastPosition:I
    :cond_c
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    sget v10, Lcom/android/calendar/month/SimpleDayPickerFragment;->LIST_TOP_OFFSET:I

    invoke-virtual {v9, v7, v10}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 460
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/calendar/month/SimpleDayPickerFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 466
    :cond_d
    :goto_3
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 462
    :cond_e
    if-eqz p4, :cond_d

    .line 464
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setMonthDisplayed(Landroid/text/format/Time;Z)V

    goto :goto_3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setUpListView()V

    .line 230
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setUpHeader()V

    .line 232
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1000a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMonthName:Landroid/widget/TextView;

    .line 233
    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/month/SimpleWeekView;

    .line 234
    .local v0, child:Lcom/android/calendar/month/SimpleWeekView;
    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getFirstJulianDay()I

    move-result v1

    .line 238
    .local v1, julianDay:I
    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 240
    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    add-int/lit8 v3, v1, 0x7

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 241
    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setMonthDisplayed(Landroid/text/format/Time;Z)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v4, 0x1

    .line 163
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 164
    iput-object p1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    .line 165
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, tz:Ljava/lang/String;
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 167
    .local v2, viewConfig:Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMinimumFlingVelocity:F

    .line 170
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v3, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 172
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    iput-object v1, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 173
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 174
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    iput-object v1, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 175
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 176
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    iput-object v1, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 179
    .local v0, res:Landroid/content/res/Resources;
    const v3, 0x7f080021

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSaturdayColor:I

    .line 180
    const v3, 0x7f080022

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSundayColor:I

    .line 181
    const v3, 0x7f08001b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNameColor:I

    .line 184
    sget v3, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 185
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    sput v3, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    .line 186
    sget v3, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 187
    iget v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->WEEK_MIN_VISIBLE_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->WEEK_MIN_VISIBLE_HEIGHT:I

    .line 188
    iget v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->BOTTOM_BUFFER:I

    int-to-float v3, v3

    sget v4, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->BOTTOM_BUFFER:I

    .line 189
    sget v3, Lcom/android/calendar/month/SimpleDayPickerFragment;->LIST_TOP_OFFSET:I

    int-to-float v3, v3

    sget v4, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/android/calendar/month/SimpleDayPickerFragment;->LIST_TOP_OFFSET:I

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setUpAdapter()V

    .line 193
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {p0, v3}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 219
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 220
    if-eqz p1, :cond_0

    const-string v0, "current_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "current_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x0

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/month/SimpleDayPickerFragment;->goTo(JZZZ)Z

    .line 223
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 347
    const v1, 0x7f04002f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 349
    .local v0, v:Landroid/view/View;
    const v1, 0x7f1000a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 350
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 287
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 288
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTodayUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 280
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 281
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setUpAdapter()V

    .line 282
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->doResumeUpdates()V

    .line 283
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 293
    const-string v0, "current_time"

    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 294
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v5, 0x0

    .line 476
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/month/SimpleWeekView;

    .line 477
    .local v0, child:Lcom/android/calendar/month/SimpleWeekView;
    if-nez v0, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-long v1, v3

    .line 483
    .local v1, currScroll:J
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getFirstJulianDay()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 486
    iget-wide v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollPosition:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    .line 487
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    .line 494
    :goto_1
    iput-wide v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollPosition:J

    .line 495
    iget v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentScrollState:I

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollState:I

    .line 497
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v3}, Lcom/android/calendar/month/SimpleDayPickerFragment;->updateMonthHighlight(Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 488
    :cond_2
    iget-wide v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollPosition:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 489
    iput-boolean v5, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScrollStateChangedRunnable:Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 581
    return-void
.end method

.method protected setMonthDisplayed(Landroid/text/format/Time;Z)V
    .locals 3
    .parameter "time"
    .parameter "updateHighlight"

    .prologue
    .line 564
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 565
    .local v0, oldMonth:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMonthName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/calendar/Utils;->formatMonthYear(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 567
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMonthName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 570
    :cond_0
    iget v1, p1, Landroid/text/format/Time;->month:I

    iput v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentMonthDisplayed:I

    .line 571
    if-eqz p2, :cond_1

    .line 572
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentMonthDisplayed:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/month/SimpleWeeksAdapter;->updateFocusMonth(I)V

    .line 574
    :cond_1
    return-void
.end method

.method protected setUpAdapter()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v0, weekParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "num_weeks"

    iget v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v3, "week_numbers"

    iget-boolean v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mShowWeekNumber:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "week_start"

    iget v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "selected_day"

    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v3, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    iget-wide v4, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    if-nez v1, :cond_1

    .line 208
    new-instance v1, Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/calendar/month/SimpleWeeksAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    .line 209
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 214
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 215
    return-void

    :cond_0
    move v1, v2

    .line 203
    goto :goto_0

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {v1, v0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->updateParams(Ljava/util/HashMap;)V

    goto :goto_1
.end method

.method protected setUpHeader()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 249
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayLabels:[Ljava/lang/String;

    .line 250
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v4, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayLabels:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x32

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_0
    return-void
.end method

.method protected setUpListView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    .line 264
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 266
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 268
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 270
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 272
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 273
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 275
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    iget v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFriction:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setFriction(F)V

    .line 276
    return-void
.end method

.method protected updateHeader()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 318
    iget-object v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNamesHeader:Landroid/view/ViewGroup;

    const v5, 0x7f1000a8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 319
    .local v1, label:Landroid/widget/TextView;
    iget-boolean v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mShowWeekNumber:Z

    if-eqz v4, :cond_0

    .line 320
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 324
    :goto_0
    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    add-int/lit8 v2, v4, -0x1

    .line 325
    .local v2, offset:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-ge v0, v6, :cond_4

    .line 326
    iget-object v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #label:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 327
    .restart local v1       #label:Landroid/widget/TextView;
    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDaysPerWeek:I

    add-int/lit8 v4, v4, 0x1

    if-ge v0, v4, :cond_3

    .line 328
    add-int v4, v2, v0

    rem-int/lit8 v3, v4, 0x7

    .line 329
    .local v3, position:I
    iget-object v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayLabels:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 331
    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 332
    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSaturdayColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    .end local v3           #position:I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 322
    .end local v0           #i:I
    .end local v2           #offset:I
    :cond_0
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 333
    .restart local v0       #i:I
    .restart local v2       #offset:I
    .restart local v3       #position:I
    :cond_1
    if-nez v3, :cond_2

    .line 334
    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSundayColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 336
    :cond_2
    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNameColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 339
    .end local v3           #position:I
    :cond_3
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 342
    :cond_4
    iget-object v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 343
    return-void
.end method
