.class public Lcom/android/calendar/month/MonthByWeekFragment;
.super Lcom/android/calendar/month/SimpleDayPickerFragment;
.source "MonthByWeekFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/month/SimpleDayPickerFragment;",
        "Lcom/android/calendar/CalendarController$EventHandler;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# static fields
.field private static final INSTANCES_SORT_ORDER:Ljava/lang/String; = "startDay,startMinute,title"

.field private static final LOADER_DELAY:I = 0xc8

.field private static final LOADER_THROTTLE_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "MonthFragment"

.field private static final WEEKS_BUFFER:I = 0x1

.field private static final WHERE_CALENDARS_VISIBLE:Ljava/lang/String; = "visible=1"

.field protected static mShowDetailsInMonth:Z


# instance fields
.field private final mCalendarsObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mDesiredDay:Landroid/text/format/Time;

.field private mEventUri:Landroid/net/Uri;

.field private mEventsLoadingDelay:I

.field protected mFirstLoadedJulianDay:I

.field protected mHideDeclined:Z

.field private mIsAccountChanged:Z

.field private mIsDetached:Z

.field protected mIsMiniMonth:Z

.field protected mLastLoadedJulianDay:I

.field private mLoader:Landroid/content/CursorLoader;

.field mLoadingRunnable:Ljava/lang/Runnable;

.field protected mMinimumTwoMonthFlingVelocity:F

.field private volatile mShouldLoad:Z

.field private mShowCalendarControls:Z

.field private final mTZUpdater:Ljava/lang/Runnable;

.field private final mUpdateLoader:Ljava/lang/Runnable;

.field private mUserScrolled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/month/MonthByWeekFragment;->mShowDetailsInMonth:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/month/MonthByWeekFragment;-><init>(JZ)V

    .line 301
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 2
    .parameter "initialTime"
    .parameter "isMiniMonth"

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/month/SimpleDayPickerFragment;-><init>(J)V

    .line 89
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShouldLoad:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUserScrolled:Z

    .line 98
    new-instance v0, Lcom/android/calendar/month/MonthByWeekFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/MonthByWeekFragment$1;-><init>(Lcom/android/calendar/month/MonthByWeekFragment;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 116
    new-instance v0, Lcom/android/calendar/month/MonthByWeekFragment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/MonthByWeekFragment$2;-><init>(Lcom/android/calendar/month/MonthByWeekFragment;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    .line 139
    new-instance v0, Lcom/android/calendar/month/MonthByWeekFragment$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/MonthByWeekFragment$3;-><init>(Lcom/android/calendar/month/MonthByWeekFragment;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoadingRunnable:Ljava/lang/Runnable;

    .line 513
    iput-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsAccountChanged:Z

    .line 518
    new-instance v0, Lcom/android/calendar/month/MonthByWeekFragment$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/month/MonthByWeekFragment$5;-><init>(Lcom/android/calendar/month/MonthByWeekFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mCalendarsObserver:Landroid/database/ContentObserver;

    .line 305
    iput-boolean p3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    .line 306
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/month/MonthByWeekFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTZUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/month/MonthByWeekFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShouldLoad:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/month/MonthByWeekFragment;)Landroid/content/CursorLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/month/MonthByWeekFragment;Landroid/content/CursorLoader;)Landroid/content/CursorLoader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/calendar/month/MonthByWeekFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->stopLoader()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/month/MonthByWeekFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/month/MonthByWeekFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/calendar/month/MonthByWeekFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/month/MonthByWeekFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsDetached:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/calendar/month/MonthByWeekFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsAccountChanged:Z

    return p1
.end method

.method private stopLoader()V
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    monitor-enter v1

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/Loader;->stopLoading()V

    .line 207
    const-string v0, "MonthFragment"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "MonthFragment"

    const-string v2, "Stopped loader from loading"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    monitor-exit v1

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateLoadedDays()V
    .locals 8

    .prologue
    .line 179
    iget-object v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 180
    .local v4, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 181
    .local v5, size:I
    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .line 190
    :goto_0
    return-void

    .line 184
    :cond_0
    add-int/lit8 v6, v5, -0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 185
    .local v0, first:J
    add-int/lit8 v6, v5, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 186
    .local v2, last:J
    iget-object v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v6, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 187
    iget-object v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    iget-wide v6, v6, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    iput v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    .line 188
    iget-object v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v6, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 189
    iget-object v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    iget-wide v6, v6, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    iput v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLastLoadedJulianDay:I

    goto :goto_0
.end method

.method private updateUri()Landroid/net/Uri;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 157
    iget-object v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/month/SimpleWeekView;

    .line 158
    .local v1, child:Lcom/android/calendar/month/SimpleWeekView;
    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1}, Lcom/android/calendar/month/SimpleWeekView;->getFirstJulianDay()I

    move-result v4

    .line 160
    .local v4, julianDay:I
    iput v4, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    .line 163
    .end local v4           #julianDay:I
    :cond_0
    iget-object v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 164
    iget-object v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 165
    .local v5, start:J
    iget v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    iget v8, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    add-int/lit8 v8, v8, 0x2

    mul-int/lit8 v8, v8, 0x7

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLastLoadedJulianDay:I

    .line 167
    iget-object v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLastLoadedJulianDay:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 168
    iget-object v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 171
    .local v2, end:J
    sget-object v7, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 172
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 173
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 174
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public doResumeUpdates()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 349
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    .line 350
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mShowWeekNumber:Z

    .line 351
    iget-boolean v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHideDeclined:Z

    .line 352
    .local v6, prevHideDeclined:Z
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getHideDeclinedEvents(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHideDeclined:Z

    .line 353
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHideDeclined:Z

    if-eq v6, v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateWhere()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getDaysPerWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDaysPerWeek:I

    .line 357
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->updateHeader()V

    .line 358
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 359
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 360
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTodayUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 362
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsAccountChanged:Z

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 364
    iput-boolean v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsAccountChanged:Z

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    move-object v0, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/month/SimpleDayPickerFragment;->goTo(JZZZ)Z

    .line 368
    return-void
.end method

.method public eventsChanged()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    .line 404
    :cond_0
    return-void
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 408
    const-wide/16 v0, 0xa0

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 11
    .parameter "event"

    .prologue
    .line 413
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x20

    cmp-long v0, v0, v4

    if-nez v0, :cond_5

    .line 414
    const/4 v3, 0x1

    .line 415
    .local v3, animate:Z
    iget v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDaysPerWeek:I

    iget v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-object v4, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    iget-wide v4, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    iget-wide v9, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v9, v10}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDaysPerWeek:I

    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    mul-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 419
    const/4 v3, 0x0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 422
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 424
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    .line 426
    .local v6, animateSelectedDay:Z
    :goto_0
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    const/4 v7, 0x1

    .line 427
    .local v7, animateToday:Z
    :goto_1
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/month/SimpleDayPickerFragment;->goTo(JZZZ)Z

    move-result v8

    .line 429
    .local v8, delayAnimation:Z
    if-eqz v6, :cond_1

    .line 431
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    check-cast v0, Lcom/android/calendar/month/MonthByWeekAdapter;

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/month/MonthByWeekAdapter;->setRealSelectedDay(Landroid/text/format/Time;)V

    .line 435
    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/calendar/month/MonthByWeekFragment$4;

    invoke-direct {v4, p0}, Lcom/android/calendar/month/MonthByWeekFragment$4;-><init>(Lcom/android/calendar/month/MonthByWeekFragment;)V

    if-eqz v8, :cond_4

    const-wide/16 v0, 0x1f4

    :goto_2
    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 447
    .end local v3           #animate:Z
    .end local v6           #animateSelectedDay:Z
    .end local v7           #animateToday:Z
    .end local v8           #delayAnimation:Z
    :cond_1
    :goto_3
    return-void

    .line 424
    .restart local v3       #animate:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 426
    .restart local v6       #animateSelectedDay:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 435
    .restart local v7       #animateToday:Z
    .restart local v8       #delayAnimation:Z
    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_2

    .line 444
    .end local v3           #animate:Z
    .end local v6           #animateSelectedDay:Z
    .end local v7           #animateToday:Z
    .end local v8           #delayAnimation:Z
    :cond_5
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x80

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->eventsChanged()V

    goto :goto_3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/android/calendar/month/SimpleDayPickerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 284
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 285
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 291
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShowCalendarControls:Z

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoadingRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventsLoadingDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setListView(Landroid/widget/ListView;)V

    .line 297
    return-void

    .line 294
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/CursorLoader;

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/android/calendar/month/SimpleDayPickerFragment;->onAttach(Landroid/app/Activity;)V

    .line 217
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 218
    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 221
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsDetached:Z

    .line 223
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 224
    .local v1, viewConfig:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mMinimumTwoMonthFlingVelocity:F

    .line 225
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 226
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v2, 0x7f09

    invoke-static {p1, v2}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShowCalendarControls:Z

    .line 229
    iget-boolean v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShowCalendarControls:Z

    if-eqz v2, :cond_1

    .line 230
    const v2, 0x7f0b000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventsLoadingDelay:I

    .line 232
    :cond_1
    const v2, 0x7f090002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/calendar/month/MonthByWeekFragment;->mShowDetailsInMonth:Z

    .line 233
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 533
    invoke-super {p0, p1}, Lcom/android/calendar/month/SimpleDayPickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 534
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 535
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mCalendarsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 537
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 325
    iget-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-eqz v1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-object v0

    .line 329
    :cond_1
    iget-object v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    monitor-enter v7

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    iget-wide v5, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    iget v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    mul-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    .line 333
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    .line 334
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateWhere()Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, where:Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/calendar/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "startDay,startMinute,title"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .local v0, loader:Landroid/content/CursorLoader;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 340
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    const-string v1, "MonthFragment"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    const-string v1, "MonthFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning new loader with uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    .end local v0           #loader:Landroid/content/CursorLoader;
    .end local v4           #where:Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-eqz v1, :cond_0

    .line 273
    const v1, 0x7f04002f

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 277
    .local v0, v:Landroid/view/View;
    :goto_0
    const v1, 0x7f1000a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 278
    return-object v0

    .line 275
    .end local v0           #v:Landroid/view/View;
    :cond_0
    const v1, 0x7f04002b

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mCalendarsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 541
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 542
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsDetached:Z

    .line 238
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 239
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShowCalendarControls:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 244
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 8
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v4, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    monitor-enter v4

    .line 373
    :try_start_0
    const-string v3, "MonthFragment"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    const-string v3, "MonthFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cursor entries for uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/content/CursorLoader;

    move-object v1, v0

    .line 377
    .local v1, cLoader:Landroid/content/CursorLoader;
    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    if-nez v3, :cond_1

    .line 378
    invoke-virtual {v1}, Landroid/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    .line 379
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateLoadedDays()V

    .line 381
    :cond_1
    invoke-virtual {v1}, Landroid/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 384
    monitor-exit v4

    .line 392
    :goto_0
    return-void

    .line 386
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    iget v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLastLoadedJulianDay:I

    invoke-static {v2, p2, v3, v5, v6}, Lcom/android/calendar/Event;->buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V

    .line 389
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    check-cast v3, Lcom/android/calendar/month/MonthByWeekAdapter;

    iget v5, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    iget v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLastLoadedJulianDay:I

    iget v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v5, v6, v2}, Lcom/android/calendar/month/MonthByWeekAdapter;->setEvents(IILjava/util/ArrayList;)V

    .line 391
    monitor-exit v4

    goto :goto_0

    .end local v1           #cLoader:Landroid/content/CursorLoader;
    .end local v2           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/month/MonthByWeekFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 6
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v5, 0x1

    .line 485
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    monitor-enter v1

    .line 486
    if-eqz p2, :cond_1

    .line 487
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShouldLoad:Z

    .line 488
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->stopLoader()V

    .line 489
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 495
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    if-ne p2, v5, :cond_0

    .line 497
    iput-boolean v5, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUserScrolled:Z

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScrollStateChangedRunnable:Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 501
    return-void

    .line 491
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShouldLoad:Z

    .line 493
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 506
    const/4 v0, 0x0

    return v0
.end method

.method protected setMonthDisplayed(Landroid/text/format/Time;Z)V
    .locals 20
    .parameter "time"
    .parameter "updateHighlight"

    .prologue
    .line 451
    invoke-super/range {p0 .. p2}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setMonthDisplayed(Landroid/text/format/Time;Z)V

    .line 452
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-nez v2, :cond_1

    .line 453
    const/16 v19, 0x0

    .line 454
    .local v19, useSelected:Z
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/format/Time;->year:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/format/Time;->month:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    if-ne v2, v3, :cond_2

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 457
    const/16 v19, 0x1

    .line 462
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v1

    .line 463
    .local v1, controller:Lcom/android/calendar/CalendarController;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_3

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    const/16 v3, 0x1e

    iput v3, v2, Landroid/text/format/Time;->minute:I

    .line 468
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v15

    .line 469
    .local v15, newTime:J
    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v2

    cmp-long v2, v15, v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mUserScrolled:Z

    if-eqz v2, :cond_0

    .line 470
    if-eqz v19, :cond_4

    const-wide/16 v17, 0x0

    .line 471
    .local v17, offset:J
    :goto_2
    add-long v2, v15, v17

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 475
    .end local v17           #offset:J
    :cond_0
    const-wide/16 v3, 0x400

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x34

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v14}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 480
    .end local v1           #controller:Lcom/android/calendar/CalendarController;
    .end local v15           #newTime:J
    .end local v19           #useSelected:Z
    :cond_1
    return-void

    .line 459
    .restart local v19       #useSelected:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    goto :goto_0

    .line 466
    .restart local v1       #controller:Lcom/android/calendar/CalendarController;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v3, 0x0

    iput v3, v2, Landroid/text/format/Time;->minute:I

    goto :goto_1

    .line 470
    .restart local v15       #newTime:J
    :cond_4
    const-wide/32 v2, 0x240c8400

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3

    div-long v17, v2, v4

    goto :goto_2
.end method

.method protected setUpAdapter()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 248
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    .line 249
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mShowWeekNumber:Z

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 252
    .local v0, weekParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "num_weeks"

    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v4, "week_numbers"

    iget-boolean v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mShowWeekNumber:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v1, "week_start"

    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v1, "mini_month"

    iget-boolean v4, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-eqz v4, :cond_0

    move v3, v2

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
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

    .line 258
    const-string v1, "days_per_week"

    iget v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDaysPerWeek:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    if-nez v1, :cond_2

    .line 260
    new-instance v1, Lcom/android/calendar/month/MonthByWeekAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/calendar/month/MonthByWeekAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    .line 261
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 265
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 266
    return-void

    :cond_1
    move v1, v3

    .line 253
    goto :goto_0

    .line 263
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {v1, v0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->updateParams(Ljava/util/HashMap;)V

    goto :goto_1
.end method

.method protected setUpHeader()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 310
    iget-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-eqz v1, :cond_1

    .line 311
    invoke-super {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setUpHeader()V

    .line 320
    :cond_0
    return-void

    .line 315
    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayLabels:[Ljava/lang/String;

    .line 316
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v4, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayLabels:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x14

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected updateWhere()Ljava/lang/String;
    .locals 3

    .prologue
    .line 194
    const-string v0, "visible=1"

    .line 195
    .local v0, where:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHideDeclined:Z

    if-eqz v1, :cond_0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND selfAttendeeStatus!=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    :cond_0
    return-object v0
.end method
