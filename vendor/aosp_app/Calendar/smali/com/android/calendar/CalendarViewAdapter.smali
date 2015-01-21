.class public Lcom/android/calendar/CalendarViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarViewAdapter.java"


# static fields
.field public static final AGENDA_BUTTON_INDEX:I = 0x3

.field private static final BUTTON_VIEW_TYPE:I = 0x0

.field public static final DAY_BUTTON_INDEX:I = 0x0

.field public static final MONTH_BUTTON_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MenuSpinnerAdapter"

.field static final VIEW_TYPE_NUM:I = 0x1

.field public static final WEEK_BUTTON_INDEX:I = 0x1


# instance fields
.field private final mButtonNames:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMainView:I

.field private final mFormatter:Ljava/util/Formatter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMidnightHandler:Landroid/os/Handler;

.field private mMilliTime:J

.field private final mShowDate:Z

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mTimeUpdater:Ljava/lang/Runnable;

.field private mTimeZone:Ljava/lang/String;

.field private mTodayJulianDay:J


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 3
    .parameter "context"
    .parameter "viewType"
    .parameter "showDate"

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mMidnightHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcom/android/calendar/CalendarViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarViewAdapter$1;-><init>(Lcom/android/calendar/CalendarViewAdapter;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeUpdater:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mMidnightHandler:Landroid/os/Handler;

    .line 90
    iput p2, p0, Lcom/android/calendar/CalendarViewAdapter;->mCurrentMainView:I

    .line 91
    iput-object p1, p0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    .line 92
    iput-boolean p3, p0, Lcom/android/calendar/CalendarViewAdapter;->mShowDate:Z

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    .line 96
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 98
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    .line 101
    if-eqz p3, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/calendar/CalendarViewAdapter;->refresh(Landroid/content/Context;)V

    .line 104
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/CalendarViewAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildDayOfWeek()Ljava/lang/String;
    .locals 17

    .prologue
    .line 314
    new-instance v12, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v12, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 315
    .local v12, t:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    invoke-virtual {v12, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 316
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-wide v3, v12, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    int-to-long v10, v1

    .line 317
    .local v10, julianDay:J
    const/4 v9, 0x0

    .line 318
    .local v9, dayOfWeek:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 320
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mTodayJulianDay:J

    cmp-long v1, v10, v1

    if-nez v1, :cond_0

    .line 321
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0c008e

    const/4 v1, 0x1

    new-array v15, v1, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 336
    :goto_0
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 324
    :cond_0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mTodayJulianDay:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    cmp-long v1, v10, v1

    if-nez v1, :cond_1

    .line 325
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0c008f

    const/4 v1, 0x1

    new-array v15, v1, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 328
    :cond_1
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mTodayJulianDay:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    cmp-long v1, v10, v1

    if-nez v1, :cond_2

    .line 329
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0c0090

    const/4 v1, 0x1

    new-array v15, v1, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 333
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private buildFullDate()Ljava/lang/String;
    .locals 9

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 347
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    iget-wide v2, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-wide v4, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    const/16 v6, 0x14

    iget-object v7, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 349
    .local v8, date:Ljava/lang/String;
    return-object v8
.end method

.method private buildMonthDate()Ljava/lang/String;
    .locals 9

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 373
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    iget-wide v2, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-wide v4, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    const/16 v6, 0x38

    iget-object v7, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 380
    .local v8, date:Ljava/lang/String;
    return-object v8
.end method

.method private buildMonthDayDate()Ljava/lang/String;
    .locals 9

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 366
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    iget-wide v2, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-wide v4, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    const/16 v6, 0x18

    iget-object v7, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 368
    .local v8, date:Ljava/lang/String;
    return-object v8
.end method

.method private buildMonthYearDate()Ljava/lang/String;
    .locals 9

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 354
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    iget-wide v2, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-wide v4, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    const/16 v6, 0x34

    iget-object v7, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 361
    .local v8, date:Ljava/lang/String;
    return-object v8
.end method

.method private buildWeekDate()Ljava/lang/String;
    .locals 17

    .prologue
    .line 388
    new-instance v13, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v13, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 389
    .local v13, t:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    invoke-virtual {v13, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 393
    const/16 v1, 0x9

    iput v1, v13, Landroid/text/format/Time;->hour:I

    .line 394
    const/4 v1, 0x0

    iput v1, v13, Landroid/text/format/Time;->minute:I

    .line 395
    const/4 v1, 0x0

    iput v1, v13, Landroid/text/format/Time;->second:I

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v12

    .line 398
    .local v12, firstDayOfWeek:I
    iget v10, v13, Landroid/text/format/Time;->weekDay:I

    .line 399
    .local v10, dayOfWeek:I
    sub-int v11, v10, v12

    .line 400
    .local v11, diff:I
    if-eqz v11, :cond_1

    .line 401
    if-gez v11, :cond_0

    .line 402
    add-int/lit8 v11, v11, 0x7

    .line 404
    :cond_0
    iget v1, v13, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v1, v11

    iput v1, v13, Landroid/text/format/Time;->monthDay:I

    .line 405
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 408
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 410
    .local v3, weekStartTime:J
    const-wide/32 v1, 0x240c8400

    add-long/2addr v1, v3

    const-wide/32 v15, 0x5265c00

    sub-long v5, v1, v15

    .line 413
    .local v5, weekEndTime:J
    new-instance v14, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v14, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 414
    .local v14, t1:Landroid/text/format/Time;
    invoke-virtual {v13, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 415
    const/16 v7, 0x18

    .line 416
    .local v7, flags:I
    iget v1, v13, Landroid/text/format/Time;->month:I

    iget v2, v14, Landroid/text/format/Time;->month:I

    if-eq v1, v2, :cond_2

    .line 417
    const/high16 v1, 0x1

    or-int/2addr v7, v1

    .line 420
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    .line 423
    .local v9, date:Ljava/lang/String;
    return-object v9
.end method

.method private buildWeekNum()Ljava/lang/String;
    .locals 6

    .prologue
    .line 427
    iget-wide v1, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/android/calendar/Utils;->getWeekNumberFromTime(JLandroid/content/Context;)I

    move-result v0

    .line 428
    .local v0, week:I
    iget-object v1, p0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0004

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setMidnightHandler()V
    .locals 7

    .prologue
    .line 122
    iget-object v5, p0, Lcom/android/calendar/CalendarViewAdapter;->mMidnightHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 125
    .local v0, now:J
    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 126
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 127
    const v5, 0x15180

    iget v6, v4, Landroid/text/format/Time;->hour:I

    mul-int/lit16 v6, v6, 0xe10

    sub-int/2addr v5, v6

    iget v6, v4, Landroid/text/format/Time;->minute:I

    mul-int/lit8 v6, v6, 0x3c

    sub-int/2addr v5, v6

    iget v6, v4, Landroid/text/format/Time;->second:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v2, v5

    .line 129
    .local v2, runInMillis:J
    iget-object v5, p0, Lcom/android/calendar/CalendarViewAdapter;->mMidnightHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 261
    iget-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040002

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 262
    .local v1, v:Landroid/view/View;
    const v3, 0x7f100006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 263
    .local v2, viewType:Landroid/widget/TextView;
    const v3, 0x7f100007

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 264
    .local v0, date:Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 290
    move-object v1, p2

    .line 293
    :cond_0
    :goto_0
    return-object v1

    .line 266
    :pswitch_0
    iget-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-boolean v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mShowDate:Z

    if-eqz v3, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildMonthDayDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-boolean v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mShowDate:Z

    if-eqz v3, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildWeekDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 278
    :pswitch_2
    iget-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-boolean v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mShowDate:Z

    if-eqz v3, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildMonthDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 284
    :pswitch_3
    iget-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-boolean v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mShowDate:Z

    if-eqz v3, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildMonthDayDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 149
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 155
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    const v7, 0x7f040004

    const v6, 0x7f040003

    const/4 v5, 0x0

    .line 168
    iget-boolean v4, p0, Lcom/android/calendar/CalendarViewAdapter;->mShowDate:Z

    if-eqz v4, :cond_3

    .line 170
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 172
    :cond_0
    iget-object v4, p0, Lcom/android/calendar/CalendarViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v6, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 175
    .local v2, v:Landroid/view/View;
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 179
    :goto_0
    const v4, 0x7f100008

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 180
    .local v3, weekDay:Landroid/widget/TextView;
    const v4, 0x7f100009

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 182
    .local v0, date:Landroid/widget/TextView;
    iget v4, p0, Lcom/android/calendar/CalendarViewAdapter;->mCurrentMainView:I

    packed-switch v4, :pswitch_data_0

    .line 207
    const/4 v2, 0x0

    .line 240
    .end local v0           #date:Landroid/widget/TextView;
    .end local v3           #weekDay:Landroid/widget/TextView;
    :goto_1
    return-object v2

    .line 177
    .end local v2           #v:Landroid/view/View;
    :cond_1
    move-object v2, p2

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0

    .line 184
    .restart local v0       #date:Landroid/widget/TextView;
    .restart local v3       #weekDay:Landroid/widget/TextView;
    :pswitch_0
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 185
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildDayOfWeek()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildFullDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 189
    :pswitch_1
    iget-object v4, p0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 190
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 191
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildWeekNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :goto_2
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildMonthYearDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 193
    :cond_2
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 198
    :pswitch_2
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 199
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildMonthYearDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 202
    :pswitch_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 203
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildDayOfWeek()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildFullDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 211
    .end local v0           #date:Landroid/widget/TextView;
    .end local v2           #v:Landroid/view/View;
    .end local v3           #weekDay:Landroid/widget/TextView;
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v7, :cond_5

    .line 213
    :cond_4
    iget-object v4, p0, Lcom/android/calendar/CalendarViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v7, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 217
    .restart local v2       #v:Landroid/view/View;
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_3
    move-object v1, v2

    .line 221
    check-cast v1, Landroid/widget/TextView;

    .line 222
    .local v1, title:Landroid/widget/TextView;
    iget v4, p0, Lcom/android/calendar/CalendarViewAdapter;->mCurrentMainView:I

    packed-switch v4, :pswitch_data_1

    .line 236
    const/4 v2, 0x0

    goto :goto_1

    .line 219
    .end local v1           #title:Landroid/widget/TextView;
    .end local v2           #v:Landroid/view/View;
    :cond_5
    move-object v2, p2

    .restart local v2       #v:Landroid/view/View;
    goto :goto_3

    .line 224
    .restart local v1       #title:Landroid/widget/TextView;
    :pswitch_4
    iget-object v4, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 227
    :pswitch_5
    iget-object v4, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 230
    :pswitch_6
    iget-object v4, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 233
    :pswitch_7
    iget-object v4, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 222
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mMidnightHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public refresh(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 110
    iget-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    .line 111
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 112
    .local v2, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 113
    .local v0, now:J
    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 114
    iget-wide v3, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mTodayJulianDay:J

    .line 115
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 116
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->setMidnightHandler()V

    .line 117
    return-void
.end method

.method public setMainView(I)V
    .locals 0
    .parameter "viewType"

    .prologue
    .line 299
    iput p1, p0, Lcom/android/calendar/CalendarViewAdapter;->mCurrentMainView:I

    .line 300
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 301
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 306
    iput-wide p1, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    .line 307
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 308
    return-void
.end method
