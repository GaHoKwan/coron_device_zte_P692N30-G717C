.class public Lcom/android/calendar/month/MonthByWeekAdapter;
.super Lcom/android/calendar/month/SimpleWeeksAdapter;
.source "MonthByWeekAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/month/MonthByWeekAdapter$CalendarGestureListener;
    }
.end annotation


# static fields
.field private static final ANIMATE_TODAY_TIMEOUT:J = 0x3e8L

.field protected static DEFAULT_QUERY_DAYS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MonthByWeek"

.field public static final WEEK_PARAMS_IS_MINI:Ljava/lang/String; = "mini_month"

.field private static mMovedPixelToCancel:F = 0.0f

.field private static mOnDownDelay:I = 0x0

.field private static final mOnTapDelay:I = 0x64

.field private static mTotalClickDelay:I


# instance fields
.field private mAnimateSelectedDay:Z

.field private mAnimateTime:J

.field private mAnimateToday:Z

.field mClickTime:J

.field mClickedView:Lcom/android/calendar/month/MonthWeekEventsView;

.field mClickedXLocation:F

.field protected mController:Lcom/android/calendar/CalendarController;

.field private final mDoClick:Ljava/lang/Runnable;

.field private final mDoSingleTapUp:Ljava/lang/Runnable;

.field protected mEventDayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field protected mFirstJulianDay:I

.field protected mHomeTimeZone:Ljava/lang/String;

.field protected mIsMiniMonth:Z

.field protected mOrientation:I

.field protected mQueryDays:I

.field protected mRealSelectedDay:Landroid/text/format/Time;

.field protected mRealSelectedWeek:I

.field private final mShowAgendaWithMonth:Z

.field mSingleTapUpView:Lcom/android/calendar/month/MonthWeekEventsView;

.field protected mTempTime:Landroid/text/format/Time;

.field protected mToday:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x38

    sput v0, Lcom/android/calendar/month/MonthByWeekAdapter;->DEFAULT_QUERY_DAYS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/month/SimpleWeeksAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 53
    iput-boolean v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    .line 54
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mOrientation:I

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEvents:Ljava/util/ArrayList;

    .line 65
    iput-boolean v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateSelectedDay:Z

    .line 67
    iput-boolean v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateToday:Z

    .line 68
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateTime:J

    .line 423
    new-instance v1, Lcom/android/calendar/month/MonthByWeekAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/month/MonthByWeekAdapter$1;-><init>(Lcom/android/calendar/month/MonthByWeekAdapter;)V

    iput-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mDoClick:Ljava/lang/Runnable;

    .line 440
    new-instance v1, Lcom/android/calendar/month/MonthByWeekAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/month/MonthByWeekAdapter$2;-><init>(Lcom/android/calendar/month/MonthByWeekAdapter;)V

    iput-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mDoSingleTapUp:Ljava/lang/Runnable;

    .line 86
    const-string v1, "mini_month"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "mini_month"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    .line 89
    :cond_0
    const v1, 0x7f090001

    invoke-static {p1, v1}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mShowAgendaWithMonth:Z

    .line 90
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 91
    .local v0, vc:Landroid/view/ViewConfiguration;
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    sput v1, Lcom/android/calendar/month/MonthByWeekAdapter;->mOnDownDelay:I

    .line 92
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/android/calendar/month/MonthByWeekAdapter;->mMovedPixelToCancel:F

    .line 93
    sget v1, Lcom/android/calendar/month/MonthByWeekAdapter;->mOnDownDelay:I

    add-int/lit8 v1, v1, 0x64

    sput v1, Lcom/android/calendar/month/MonthByWeekAdapter;->mTotalClickDelay:I

    .line 95
    return-void

    .end local v0           #vc:Landroid/view/ViewConfiguration;
    :cond_1
    move v1, v3

    .line 87
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/calendar/month/MonthByWeekAdapter;Lcom/android/calendar/month/MonthWeekEventsView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/calendar/month/MonthByWeekAdapter;->clearClickedView(Lcom/android/calendar/month/MonthWeekEventsView;)V

    return-void
.end method

.method private clearClickedView(Lcom/android/calendar/month/MonthWeekEventsView;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mDoClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 415
    monitor-enter p1

    .line 416
    :try_start_0
    invoke-virtual {p1}, Lcom/android/calendar/month/MonthWeekEventsView;->clearClickedDay()V

    .line 417
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mClickedView:Lcom/android/calendar/month/MonthWeekEventsView;

    .line 419
    return-void

    .line 417
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isHasSelectedDay(Landroid/text/format/Time;I)Z
    .locals 7
    .parameter "t"
    .parameter "expectWeek"

    .prologue
    const/4 v2, 0x0

    .line 480
    invoke-virtual {p1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-wide v5, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 481
    .local v0, julianDay:I
    iget-object v3, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v3

    invoke-static {v0, v3}, Landroid/text/format/Time;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v1

    .line 482
    .local v1, week:I
    if-ne p2, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private sendEventsToView(Lcom/android/calendar/month/MonthWeekEventsView;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x0

    .line 295
    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 296
    const-string v3, "MonthByWeek"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    const-string v3, "MonthByWeek"

    const-string v4, "No events loaded, did not pass any events to view."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    invoke-virtual {p1, v6, v6}, Lcom/android/calendar/month/MonthWeekEventsView;->setEvents(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 314
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/month/SimpleWeekView;->getFirstJulianDay()I

    move-result v2

    .line 303
    .local v2, viewJulianDay:I
    iget v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    sub-int v1, v2, v3

    .line 304
    .local v1, start:I
    iget v3, p1, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    add-int v0, v1, v3

    .line 305
    .local v0, end:I
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v0, v3, :cond_4

    .line 306
    :cond_2
    const-string v3, "MonthByWeek"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 307
    const-string v3, "MonthByWeek"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Week is outside range of loaded events. viewStart: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " eventsStart: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_3
    invoke-virtual {p1, v6, v6}, Lcom/android/calendar/month/MonthWeekEventsView;->setEvents(Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 313
    :cond_4
    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Lcom/android/calendar/month/MonthWeekEventsView;->setEvents(Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private updateTimeZones()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 127
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mToday:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mToday:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 129
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mTempTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 130
    return-void
.end method


# virtual methods
.method public animateSelectedDay()V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateSelectedDay:Z

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateTime:J

    .line 101
    return-void
.end method

.method public animateToday()V
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateToday:Z

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateTime:J

    .line 106
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 200
    iget-boolean v9, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    if-eqz v9, :cond_0

    .line 201
    invoke-super/range {p0 .. p3}, Lcom/android/calendar/month/SimpleWeeksAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 291
    :goto_0
    return-object v8

    .line 204
    :cond_0
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v5, v9, v10}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 206
    .local v5, params:Landroid/widget/AbsListView$LayoutParams;
    const/4 v2, 0x0

    .line 207
    .local v2, drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 209
    .local v4, isAnimatingToday:Z
    const/4 v3, 0x0

    .line 211
    .local v3, isAnimatingSelectedDay:Z
    if-eqz p2, :cond_8

    move-object v8, p2

    .line 212
    check-cast v8, Lcom/android/calendar/month/MonthWeekEventsView;

    .line 216
    .local v8, v:Lcom/android/calendar/month/MonthWeekEventsView;
    iget-boolean v9, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateSelectedDay:Z

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mRealSelectedDay:Landroid/text/format/Time;

    invoke-direct {p0, v9, p1}, Lcom/android/calendar/month/MonthByWeekAdapter;->isHasSelectedDay(Landroid/text/format/Time;I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 221
    .local v0, currentTime:J
    iget-wide v9, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateTime:J

    sub-long v9, v0, v9

    const-wide/16 v11, 0x3e8

    cmp-long v9, v9, v11

    if-lez v9, :cond_6

    .line 223
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateSelectedDay:Z

    .line 224
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateToday:Z

    .line 225
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateTime:J

    .line 241
    .end local v0           #currentTime:J
    :goto_1
    if-nez v2, :cond_1

    .line 242
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 244
    .restart local v2       #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 246
    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setClickable(Z)V

    .line 248
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekAdapter;->setRealSelectedWeek()V

    .line 252
    const/4 v6, -0x1

    .line 253
    .local v6, realSelectedWeekDay:I
    iget v9, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mRealSelectedWeek:I

    if-ne v9, p1, :cond_2

    .line 254
    iget-object v9, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mRealSelectedDay:Landroid/text/format/Time;

    iget v6, v9, Landroid/text/format/Time;->weekDay:I

    .line 258
    :cond_2
    const/4 v7, -0x1

    .line 259
    .local v7, selectedDay:I
    iget v9, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedWeek:I

    if-ne v9, p1, :cond_3

    .line 260
    iget-object v9, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget v7, v9, Landroid/text/format/Time;->weekDay:I

    .line 263
    :cond_3
    const-string v9, "height"

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTop()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mNumWeeks:I

    div-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v9, "selected_day"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v10, "show_wk_num"

    iget-boolean v9, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mShowWeekNumber:Z

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    :goto_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v9, "week_start"

    iget v10, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFirstDayOfWeek:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v9, "num_days"

    iget v10, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mDaysPerWeek:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v9, "week"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v9, "focus_month"

    iget v10, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFocusMonth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v9, "orientation"

    iget v10, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mOrientation:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    if-eqz v4, :cond_4

    .line 275
    const-string v9, "animate_today"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateToday:Z

    .line 280
    :cond_4
    if-eqz v3, :cond_5

    .line 281
    const-string v9, "animate_selected_day"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateSelectedDay:Z

    .line 287
    :cond_5
    iget-object v9, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v9, v9, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/calendar/month/MonthWeekEventsView;->updateToday(Ljava/lang/String;)Z

    .line 289
    iget-object v9, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v9, v9, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v8, v2, v9}, Lcom/android/calendar/month/MonthWeekEventsView;->setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0, v8}, Lcom/android/calendar/month/MonthByWeekAdapter;->sendEventsToView(Lcom/android/calendar/month/MonthWeekEventsView;)V

    goto/16 :goto_0

    .line 228
    .end local v6           #realSelectedWeekDay:I
    .end local v7           #selectedDay:I
    .restart local v0       #currentTime:J
    :cond_6
    const/4 v3, 0x1

    .line 230
    const/4 v4, 0x1

    .line 233
    new-instance v8, Lcom/android/calendar/month/MonthWeekEventsView;

    .end local v8           #v:Lcom/android/calendar/month/MonthWeekEventsView;
    iget-object v9, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/calendar/month/MonthWeekEventsView;-><init>(Landroid/content/Context;)V

    .restart local v8       #v:Lcom/android/calendar/month/MonthWeekEventsView;
    goto/16 :goto_1

    .line 236
    .end local v0           #currentTime:J
    :cond_7
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    check-cast v2, Ljava/util/HashMap;

    .restart local v2       #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto/16 :goto_1

    .line 239
    .end local v8           #v:Lcom/android/calendar/month/MonthWeekEventsView;
    :cond_8
    new-instance v8, Lcom/android/calendar/month/MonthWeekEventsView;

    iget-object v9, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/calendar/month/MonthWeekEventsView;-><init>(Landroid/content/Context;)V

    .restart local v8       #v:Lcom/android/calendar/month/MonthWeekEventsView;
    goto/16 :goto_1

    .line 267
    .restart local v6       #realSelectedWeekDay:I
    .restart local v7       #selectedDay:I
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_2
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->init()V

    .line 111
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mController:Lcom/android/calendar/CalendarController;

    .line 112
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 115
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mRealSelectedDay:Landroid/text/format/Time;

    .line 116
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mRealSelectedDay:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 117
    iget v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedWeek:I

    iput v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mRealSelectedWeek:I

    .line 119
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mToday:Landroid/text/format/Time;

    .line 120
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mToday:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 121
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mTempTime:Landroid/text/format/Time;

    .line 122
    return-void
.end method

.method protected onDayTapped(Landroid/text/format/Time;)V
    .locals 14
    .parameter "day"

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, 0x20

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 328
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    iput-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 329
    new-instance v13, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v13, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 330
    .local v13, currTime:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 331
    iget v0, v13, Landroid/text/format/Time;->hour:I

    iput v0, p1, Landroid/text/format/Time;->hour:I

    .line 332
    iget v0, v13, Landroid/text/format/Time;->minute:I

    iput v0, p1, Landroid/text/format/Time;->minute:I

    .line 333
    iput-boolean v8, p1, Landroid/text/format/Time;->allDay:Z

    .line 334
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 335
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mShowAgendaWithMonth:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mController:Lcom/android/calendar/CalendarController;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    const-wide/16 v9, 0x1

    move-object v4, p1

    move-object v5, p1

    move-object v12, v11

    invoke-virtual/range {v0 .. v12}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 353
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    if-nez v0, :cond_3

    .line 344
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mController:Lcom/android/calendar/CalendarController;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    if-eqz v5, :cond_2

    :goto_1
    const-wide/16 v9, 0x5

    move-object v4, p1

    move-object v5, p1

    move-object v12, v11

    invoke-virtual/range {v0 .. v12}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_2
    move v8, v4

    goto :goto_1

    .line 348
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mController:Lcom/android/calendar/CalendarController;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    if-eqz v5, :cond_4

    :goto_2
    const-wide/16 v9, 0x1

    move-object v4, p1

    move-object v5, p1

    move-object v12, v11

    invoke-virtual/range {v0 .. v12}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_4
    move v8, v4

    goto :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    .line 357
    instance-of v3, p1, Lcom/android/calendar/month/MonthWeekEventsView;

    if-nez v3, :cond_0

    .line 358
    invoke-super {p0, p1, p2}, Lcom/android/calendar/month/SimpleWeeksAdapter;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 399
    .end local p1
    :goto_0
    return v3

    .line 361
    .restart local p1
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 365
    .local v0, action:I
    iget-object v3, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 366
    check-cast p1, Lcom/android/calendar/month/MonthWeekEventsView;

    .end local p1
    iput-object p1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSingleTapUpView:Lcom/android/calendar/month/MonthWeekEventsView;

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mClickTime:J

    sub-long v1, v3, v5

    .line 369
    .local v1, delay:J
    iget-object v5, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mDoSingleTapUp:Ljava/lang/Runnable;

    sget v3, Lcom/android/calendar/month/MonthByWeekAdapter;->mTotalClickDelay:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    const-wide/16 v3, 0x0

    :goto_1
    invoke-virtual {v5, v6, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 371
    const/4 v3, 0x1

    goto :goto_0

    .line 369
    :cond_1
    sget v3, Lcom/android/calendar/month/MonthByWeekAdapter;->mTotalClickDelay:I

    int-to-long v3, v3

    sub-long/2addr v3, v1

    goto :goto_1

    .line 375
    .end local v1           #delay:J
    .restart local p1
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 399
    .end local p1
    :cond_3
    :goto_2
    :pswitch_0
    const/4 v3, 0x0

    goto :goto_0

    .line 377
    .restart local p1
    :pswitch_1
    check-cast p1, Lcom/android/calendar/month/MonthWeekEventsView;

    .end local p1
    iput-object p1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mClickedView:Lcom/android/calendar/month/MonthWeekEventsView;

    .line 378
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mClickedXLocation:F

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mClickTime:J

    .line 380
    iget-object v3, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mDoClick:Ljava/lang/Runnable;

    sget v5, Lcom/android/calendar/month/MonthByWeekAdapter;->mOnDownDelay:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 385
    .restart local p1
    :pswitch_2
    check-cast p1, Lcom/android/calendar/month/MonthWeekEventsView;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/calendar/month/MonthByWeekAdapter;->clearClickedView(Lcom/android/calendar/month/MonthWeekEventsView;)V

    goto :goto_2

    .line 389
    .restart local p1
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mClickedXLocation:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/android/calendar/month/MonthByWeekAdapter;->mMovedPixelToCancel:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 390
    check-cast p1, Lcom/android/calendar/month/MonthWeekEventsView;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/calendar/month/MonthByWeekAdapter;->clearClickedView(Lcom/android/calendar/month/MonthWeekEventsView;)V

    goto :goto_2

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected refresh()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFirstDayOfWeek:I

    .line 319
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mShowWeekNumber:Z

    .line 320
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mOrientation:I

    .line 322
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekAdapter;->updateTimeZones()V

    .line 323
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 324
    return-void
.end method

.method public setEvents(IILjava/util/ArrayList;)V
    .locals 10
    .parameter "firstJulianDay"
    .parameter "numDays"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v9, 0x3

    .line 142
    iget-boolean v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    if-eqz v7, :cond_1

    .line 143
    const-string v7, "MonthByWeek"

    const/4 v8, 0x6

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 144
    const-string v7, "MonthByWeek"

    const-string v8, "Attempted to set events for mini view. Events only supported in full view."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iput-object p3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEvents:Ljava/util/ArrayList;

    .line 150
    iput p1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    .line 151
    iput p2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mQueryDays:I

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v2, eventDayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/calendar/Event;>;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, p2, :cond_2

    .line 156
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 159
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 160
    :cond_3
    const-string v7, "MonthByWeek"

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 161
    const-string v7, "MonthByWeek"

    const-string v8, "No events. Returning early--go schedule something fun."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_4
    iput-object v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekAdapter;->refresh()V

    goto :goto_0

    .line 169
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/Event;

    .line 170
    .local v1, event:Lcom/android/calendar/Event;
    iget v7, v1, Lcom/android/calendar/Event;->startDay:I

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    sub-int v6, v7, v8

    .line 171
    .local v6, startDay:I
    iget v7, v1, Lcom/android/calendar/Event;->endDay:I

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    sub-int/2addr v7, v8

    add-int/lit8 v0, v7, 0x1

    .line 172
    .local v0, endDay:I
    if-lt v6, p2, :cond_7

    if-ltz v0, :cond_6

    .line 173
    :cond_7
    if-gez v6, :cond_8

    .line 174
    const/4 v6, 0x0

    .line 176
    :cond_8
    if-gt v6, p2, :cond_6

    .line 179
    if-ltz v0, :cond_6

    .line 182
    if-le v0, p2, :cond_9

    .line 183
    move v0, p2

    .line 185
    :cond_9
    move v5, v6

    .local v5, j:I
    :goto_2
    if-ge v5, v0, :cond_6

    .line 186
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 190
    .end local v0           #endDay:I
    .end local v1           #event:Lcom/android/calendar/Event;
    .end local v5           #j:I
    .end local v6           #startDay:I
    :cond_a
    const-string v7, "MonthByWeek"

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 191
    const-string v7, "MonthByWeek"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Processed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " events."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_b
    iput-object v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekAdapter;->refresh()V

    goto/16 :goto_0
.end method

.method public setRealSelectedDay(Landroid/text/format/Time;)V
    .locals 1
    .parameter "realSelectedTime"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mRealSelectedDay:Landroid/text/format/Time;

    if-nez v0, :cond_0

    .line 461
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mRealSelectedDay:Landroid/text/format/Time;

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mRealSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 464
    return-void
.end method

.method public setRealSelectedWeek()V
    .locals 4

    .prologue
    .line 468
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mRealSelectedDay:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 469
    .local v0, millis:J
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mRealSelectedDay:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iget v3, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFirstDayOfWeek:I

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mRealSelectedWeek:I

    .line 471
    return-void
.end method

.method public setSelectedDay(Landroid/text/format/Time;)V
    .locals 4
    .parameter "selectedTime"

    .prologue
    .line 134
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 135
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 136
    .local v0, millis:J
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iget v3, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFirstDayOfWeek:I

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedWeek:I

    .line 138
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 139
    return-void
.end method
