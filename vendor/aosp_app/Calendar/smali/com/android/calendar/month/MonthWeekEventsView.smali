.class public Lcom/android/calendar/month/MonthWeekEventsView;
.super Lcom/android/calendar/month/SimpleWeekView;
.source "MonthWeekEventsView.java"

# interfaces
.implements Lcom/mediatek/calendar/extension/IMonthViewForExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;,
        Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;,
        Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;
    }
.end annotation


# static fields
.field private static CONFLICT_COLOR:I = 0x0

.field private static DAY_SEPARATOR_INNER_WIDTH:I = 0x0

.field private static DAY_SEPARATOR_OUTER_WIDTH:I = 0x0

.field private static DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I = 0x0

.field private static DAY_SEPARATOR_VERTICAL_LENGTH:I = 0x0

.field private static final DEBUG_LAYOUT:Z = false

.field private static DEFAULT_EDGE_SPACING:I = 0x0

.field private static DNA_ALL_DAY_HEIGHT:I = 0x0

.field private static DNA_ALL_DAY_WIDTH:I = 0x0

.field private static DNA_MARGIN:I = 0x0

.field private static DNA_MIN_SEGMENT_HEIGHT:I = 0x0

.field private static DNA_SIDE_PADDING:I = 0x0

.field private static DNA_WIDTH:I = 0x0

.field private static EVENT_BOTTOM_PADDING:I = 0x0

.field private static EVENT_LINE_PADDING:I = 0x0

.field private static EVENT_RIGHT_PADDING:I = 0x0

.field private static EVENT_SQUARE_BORDER:I = 0x0

.field private static EVENT_SQUARE_WIDTH:I = 0x0

.field private static EVENT_TEXT_COLOR:I = 0x0

.field private static EVENT_X_OFFSET_LANDSCAPE:I = 0x0

.field private static EVENT_Y_OFFSET_LANDSCAPE:I = 0x0

.field private static EVENT_Y_OFFSET_PORTRAIT:I = 0x0

.field private static MIN_WEEK_WIDTH:I = 0x0

.field private static SIDE_PADDING_MONTH_NUMBER:I = 0x0

.field private static SIDE_PADDING_WEEK_NUMBER:I = 0x0

.field private static SPACING_WEEK_NUMBER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MonthView"

.field private static TEXT_SIZE_EVENT:I = 0x0

.field private static TEXT_SIZE_EVENT_TITLE:I = 0x0

.field private static TEXT_SIZE_MONTH_NAME:I = 0x0

.field private static TEXT_SIZE_MONTH_NUMBER:I = 0x0

.field private static TEXT_SIZE_MORE_EVENTS:I = 0x0

.field private static TEXT_SIZE_WEEK_NUM:I = 0x0

.field private static TODAY_HIGHLIGHT_WIDTH:I = 0x0

.field private static TOP_PADDING_MONTH_NUMBER:I = 0x0

.field private static TOP_PADDING_WEEK_NUMBER:I = 0x0

.field public static final VIEW_PARAMS_ANIMATE_SELECTED_DAY:Ljava/lang/String; = "animate_selected_day"

.field public static final VIEW_PARAMS_ANIMATE_TODAY:Ljava/lang/String; = "animate_today"

.field public static final VIEW_PARAMS_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final mClickedAlpha:I = 0x80

.field protected static mFormatter:Ljava/util/Formatter;

.field private static mInitialized:Z

.field private static mShowDetailsInMonth:Z

.field protected static mStringBuilder:Ljava/lang/StringBuilder;


# instance fields
.field private mAnimateSelectedDay:Z

.field private mAnimateSelectedDayAlpha:I

.field private mAnimateToday:Z

.field private mAnimateTodayAlpha:I

.field private final mAnimatorListener:Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;

.field private mCellExt:Lcom/mediatek/calendar/extension/IMonthViewExt;

.field private mClickedDayColor:I

.field private mClickedDayIndex:I

.field protected mDNAAllDayPaint:Landroid/graphics/Paint;

.field protected mDNATimePaint:Landroid/graphics/Paint;

.field protected mDaySeparatorInnerColor:I

.field private mDayXs:[I

.field protected mDeclinedEventPaint:Landroid/text/TextPaint;

.field mDna:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;"
        }
    .end annotation
.end field

.field protected mEventAscentHeight:I

.field protected mEventChipOutlineColor:I

.field protected mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

.field protected mEventExtrasPaint:Landroid/text/TextPaint;

.field protected mEventHeight:I

.field protected mEventOutlines:Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;

.field protected mEventPaint:Landroid/text/TextPaint;

.field protected mEventSquarePaint:Landroid/graphics/Paint;

.field protected mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mExtrasAscentHeight:I

.field protected mExtrasDescent:I

.field protected mExtrasHeight:I

.field protected mFramedEventPaint:Landroid/text/TextPaint;

.field protected mHasToday:Z

.field protected mMonthBGColor:I

.field protected mMonthBGOtherColor:I

.field protected mMonthBGTodayColor:I

.field protected mMonthBusyBitsBgColor:I

.field protected mMonthBusyBitsBusyTimeColor:I

.field protected mMonthBusyBitsConflictTimeColor:I

.field protected mMonthDeclinedEventColor:I

.field protected mMonthDeclinedExtrasColor:I

.field protected mMonthEventColor:I

.field protected mMonthEventExtraColor:I

.field protected mMonthEventExtraOtherColor:I

.field protected mMonthEventOtherColor:I

.field protected mMonthNameColor:I

.field protected mMonthNameOtherColor:I

.field protected mMonthNamePaint:Landroid/graphics/Paint;

.field protected mMonthNumAscentHeight:I

.field protected mMonthNumColor:I

.field protected mMonthNumHeight:I

.field protected mMonthNumOtherColor:I

.field protected mMonthNumTodayColor:I

.field protected mMonthWeekNumColor:I

.field protected mOrientation:I

.field protected mSelectedDayAnimateColor:I

.field private mSelectedDayAnimator:Landroid/animation/ObjectAnimator;

.field protected mSelectedDayIndex:I

.field protected mSelectedDayTime:Landroid/text/format/Time;

.field protected mSolidBackgroundEventPaint:Landroid/text/TextPaint;

.field protected mToday:Landroid/text/format/Time;

.field protected mTodayAnimateColor:I

.field private mTodayAnimator:Landroid/animation/ObjectAnimator;

.field protected mTodayDrawable:Landroid/graphics/drawable/Drawable;

.field protected mTodayIndex:I

.field protected mUnsortedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field protected mWeekNumAscentHeight:I

.field protected mWeekNumPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0xc

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 73
    const/16 v0, 0x20

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NUMBER:I

    .line 74
    sput v4, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    .line 75
    const/16 v0, 0xe

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT_TITLE:I

    .line 76
    sput v4, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MORE_EVENTS:I

    .line 77
    const/16 v0, 0xe

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NAME:I

    .line 78
    sput v4, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_WEEK_NUM:I

    .line 80
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    .line 81
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_HEIGHT:I

    .line 82
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MIN_SEGMENT_HEIGHT:I

    .line 83
    sput v5, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_WIDTH:I

    .line 84
    const/16 v0, 0x20

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    .line 85
    const/4 v0, 0x6

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_SIDE_PADDING:I

    .line 86
    const/high16 v0, -0x100

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->CONFLICT_COLOR:I

    .line 87
    const/4 v0, -0x1

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_TEXT_COLOR:I

    .line 89
    sput v2, Lcom/android/calendar/month/MonthWeekEventsView;->DEFAULT_EDGE_SPACING:I

    .line 90
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    .line 91
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    .line 92
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_WEEK_NUMBER:I

    .line 93
    const/16 v0, 0x14

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_WEEK_NUMBER:I

    .line 94
    sput v2, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_OUTER_WIDTH:I

    .line 95
    const/4 v0, 0x1

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    .line 96
    const/16 v0, 0x35

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGTH:I

    .line 97
    const/16 v0, 0x40

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I

    .line 98
    const/16 v0, 0x32

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->MIN_WEEK_WIDTH:I

    .line 100
    const/16 v0, 0x26

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_X_OFFSET_LANDSCAPE:I

    .line 101
    sput v5, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_LANDSCAPE:I

    .line 102
    const/4 v0, 0x7

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_PORTRAIT:I

    .line 103
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    .line 104
    sput v3, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    .line 105
    sput v3, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    .line 106
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_RIGHT_PADDING:I

    .line 107
    const/4 v0, 0x3

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_BOTTOM_PADDING:I

    .line 109
    sput v3, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    .line 111
    const/16 v0, 0x18

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    .line 112
    sput-boolean v2, Lcom/android/calendar/month/MonthWeekEventsView;->mInitialized:Z

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/month/MonthWeekEventsView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 136
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/month/MonthWeekEventsView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/month/MonthWeekEventsView;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 321
    invoke-direct {p0, p1}, Lcom/android/calendar/month/SimpleWeekView;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    .line 118
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayTime:Landroid/text/format/Time;

    .line 120
    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayIndex:I

    .line 122
    iput-boolean v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    .line 123
    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    .line 124
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mOrientation:I

    .line 125
    iput-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    .line 126
    iput-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mUnsortedEvents:Ljava/util/ArrayList;

    .line 127
    iput-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    .line 130
    new-instance v0, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;

    const/16 v1, 0x460

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;-><init>(Lcom/android/calendar/month/MonthWeekEventsView;I)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventOutlines:Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;

    .line 180
    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mClickedDayIndex:I

    .line 184
    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventChipOutlineColor:I

    .line 189
    iput v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateTodayAlpha:I

    .line 190
    iput-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 198
    iput v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateSelectedDayAlpha:I

    .line 200
    iput-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;

    .line 203
    new-instance v0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;-><init>(Lcom/android/calendar/month/MonthWeekEventsView;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimatorListener:Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;

    .line 324
    invoke-static {p1, p0}, Lcom/mediatek/calendar/extension/ExtensionFactory;->getMonthViewPlugin(Landroid/content/Context;Lcom/mediatek/calendar/extension/IMonthViewForExt;)Lcom/mediatek/calendar/extension/IMonthViewExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mCellExt:Lcom/mediatek/calendar/extension/IMonthViewExt;

    .line 326
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/month/MonthWeekEventsView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/calendar/month/MonthWeekEventsView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateToday:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/calendar/month/MonthWeekEventsView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateTodayAlpha:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/calendar/month/MonthWeekEventsView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/calendar/month/MonthWeekEventsView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateSelectedDay:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/calendar/month/MonthWeekEventsView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateSelectedDayAlpha:I

    return p1
.end method

.method private computeDayLeftPosition(I)I
    .locals 5
    .parameter "day"

    .prologue
    .line 707
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    .line 708
    .local v0, effectiveWidth:I
    const/4 v1, 0x0

    .line 709
    .local v1, x:I
    const/4 v2, 0x0

    .line 710
    .local v2, xOffset:I
    iget-boolean v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v3, :cond_0

    .line 711
    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    iget v4, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int v2, v3, v4

    .line 712
    sub-int/2addr v0, v2

    .line 714
    :cond_0
    mul-int v3, p1, v0

    iget v4, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    div-int/2addr v3, v4

    add-int v1, v3, v2

    .line 715
    return v1
.end method

.method private drawClick(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 792
    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mClickedDayIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 793
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 794
    .local v0, alpha:I
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mClickedDayColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 795
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 796
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mClickedDayIndex:I

    invoke-direct {p0, v2}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 797
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mClickedDayIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 798
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 799
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 800
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 801
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 803
    .end local v0           #alpha:I
    :cond_0
    return-void
.end method

.method private updateSelectedDayIndex(I)I
    .locals 3
    .parameter "weekDay"

    .prologue
    .line 633
    if-gez p1, :cond_0

    .line 634
    const/4 v1, -0x1

    .line 642
    :goto_0
    return v1

    .line 636
    :cond_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    .line 637
    .local v0, firstDayOfWeek:I
    sub-int v1, p1, v0

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayIndex:I

    .line 639
    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayIndex:I

    if-gez v1, :cond_1

    .line 640
    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayIndex:I

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayIndex:I

    .line 642
    :cond_1
    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayIndex:I

    goto :goto_0
.end method


# virtual methods
.method protected addChipOutline(Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;III)I
    .locals 3
    .parameter "lines"
    .parameter "count"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 915
    add-int/lit8 v1, p2, 0x10

    invoke-virtual {p1, v1}, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->ensureSize(I)V

    .line 917
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, count:I
    int-to-float v2, p3

    aput v2, v1, p2

    .line 918
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    int-to-float v2, p4

    aput v2, v1, v0

    .line 919
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    aput v2, v1, p2

    .line 920
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    int-to-float v2, p4

    aput v2, v1, v0

    .line 922
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    aput v2, v1, p2

    .line 923
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    int-to-float v2, p4

    aput v2, v1, v0

    .line 924
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    aput v2, v1, p2

    .line 925
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v2, p4

    int-to-float v2, v2

    aput v2, v1, v0

    .line 927
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    int-to-float v2, p3

    aput v2, v1, p2

    .line 928
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    int-to-float v2, p4

    aput v2, v1, v0

    .line 929
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    int-to-float v2, p3

    aput v2, v1, p2

    .line 930
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v2, p4

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    aput v2, v1, v0

    .line 932
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    int-to-float v2, p3

    aput v2, v1, p2

    .line 933
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v2, p4

    int-to-float v2, v2

    aput v2, v1, v0

    .line 934
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    aput v2, v1, p2

    .line 935
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v2, p4

    int-to-float v2, v2

    aput v2, v1, v0

    .line 937
    return p2
.end method

.method public clearClickedDay()V
    .locals 1

    .prologue
    .line 1252
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mClickedDayIndex:I

    .line 1253
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1254
    return-void
.end method

.method public createDna(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, unsortedEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v4, 0x0

    .line 344
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->MIN_WEEK_WIDTH:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 347
    :cond_0
    iput-object p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mUnsortedEvents:Ljava/util/ArrayList;

    .line 348
    iput-object v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    .line 374
    :cond_1
    :goto_0
    return-void

    .line 352
    :cond_2
    iput-object v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mUnsortedEvents:Ljava/util/ArrayList;

    .line 355
    sget-boolean v0, Lcom/android/calendar/month/MonthWeekEventsView;->mShowDetailsInMonth:Z

    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 357
    .local v9, numDays:I
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v8, v0, v1

    .line 358
    .local v8, effectiveWidth:I
    iget-boolean v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v0, :cond_3

    .line 359
    sget v0, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    sub-int/2addr v8, v0

    .line 361
    :cond_3
    div-int v0, v8, v9

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_SIDE_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    .line 362
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 363
    new-array v0, v9, [I

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    .line 364
    const/4 v7, 0x0

    .local v7, day:I
    :goto_1
    if-ge v7, v9, :cond_4

    .line 365
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    invoke-direct {p0, v7}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v1

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_SIDE_PADDING:I

    add-int/2addr v1, v4

    aput v1, v0, v7

    .line 364
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 369
    :cond_4
    sget v0, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    add-int/2addr v0, v1

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_HEIGHT:I

    add-int/2addr v0, v1

    add-int/lit8 v2, v0, 0x1

    .line 370
    .local v2, top:I
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    sub-int v3, v0, v1

    .line 371
    .local v3, bottom:I
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstJulianDay:I

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MIN_SEGMENT_HEIGHT:I

    iget-object v5, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/android/calendar/Utils;->createDNAStrands(ILjava/util/ArrayList;III[ILandroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    goto :goto_0
.end method

.method protected drawBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 756
    const/4 v0, 0x0

    .line 757
    .local v0, i:I
    const/4 v1, 0x0

    .line 758
    .local v1, offset:I
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 759
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 760
    iget-boolean v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v2, :cond_0

    .line 761
    add-int/lit8 v0, v0, 0x1

    .line 762
    add-int/lit8 v1, v1, 0x1

    .line 764
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mOddMonth:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_5

    .line 765
    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mOddMonth:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mOddMonth:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    .line 767
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    sub-int v3, v0, v1

    invoke-direct {p0, v3}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 768
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 769
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBGOtherColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 770
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 782
    :cond_3
    :goto_0
    iget-boolean v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    if-eqz v2, :cond_4

    .line 783
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBGTodayColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 784
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    invoke-direct {p0, v3}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 785
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 786
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 788
    :cond_4
    return-void

    .line 772
    :cond_5
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mOddMonth:[Z

    iget-object v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mOddMonth:[Z

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    aget-boolean v2, v2, v0

    if-nez v2, :cond_3

    .line 773
    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-lt v0, v1, :cond_7

    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mOddMonth:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_6

    .line 775
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 777
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 778
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    sub-int v3, v0, v1

    invoke-direct {p0, v3}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 779
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBGOtherColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 780
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawDNA(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 1108
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/Utils$DNAStrand;

    .line 1109
    .local v9, strand:Lcom/android/calendar/Utils$DNAStrand;
    iget v0, v9, Lcom/android/calendar/Utils$DNAStrand;->color:I

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->CONFLICT_COLOR:I

    if-eq v0, v1, :cond_0

    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    iget v1, v9, Lcom/android/calendar/Utils$DNAStrand;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1114
    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1117
    .end local v9           #strand:Lcom/android/calendar/Utils$DNAStrand;
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->CONFLICT_COLOR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/Utils$DNAStrand;

    .line 1118
    .restart local v9       #strand:Lcom/android/calendar/Utils$DNAStrand;
    if-eqz v9, :cond_2

    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 1119
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    iget v1, v9, Lcom/android/calendar/Utils$DNAStrand;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1120
    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 1122
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    if-nez v0, :cond_4

    .line 1139
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #strand:Lcom/android/calendar/Utils$DNAStrand;
    :cond_3
    return-void

    .line 1125
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #strand:Lcom/android/calendar/Utils$DNAStrand;
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    array-length v8, v0

    .line 1126
    .local v8, numDays:I
    sget v0, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v10, v0, 0x2

    .line 1127
    .local v10, xOffset:I
    if-eqz v9, :cond_3

    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    if-eqz v0, :cond_3

    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    array-length v0, v0

    if-ne v0, v8, :cond_3

    .line 1128
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v8, :cond_3

    .line 1131
    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    aget v0, v0, v6

    if-eqz v0, :cond_5

    .line 1132
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    iget-object v1, v9, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1133
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    aget v0, v0, v6

    add-int/2addr v0, v10

    int-to-float v1, v0

    sget v0, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    aget v0, v0, v6

    add-int/2addr v0, v10

    int-to-float v3, v0

    sget v0, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_HEIGHT:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1128
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method protected drawDaySeparators(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, 0x0

    .line 720
    const/16 v9, 0x20

    new-array v3, v9, [F

    .line 721
    .local v3, lines:[F
    const/16 v0, 0x18

    .line 722
    .local v0, count:I
    const/4 v4, 0x0

    .line 723
    .local v4, wkNumOffset:I
    const/4 v1, 0x0

    .line 724
    .local v1, i:I
    iget-boolean v9, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v9, :cond_0

    .line 726
    sget v9, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    iget v10, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int v6, v9, v10

    .line 727
    .local v6, xOffset:I
    add-int/lit8 v0, v0, 0x4

    .line 728
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    int-to-float v9, v6

    aput v9, v3, v1

    .line 729
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput v11, v3, v2

    .line 730
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    int-to-float v9, v6

    aput v9, v3, v1

    .line 731
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    iget v9, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    int-to-float v9, v9

    aput v9, v3, v2

    .line 732
    add-int/lit8 v4, v4, 0x1

    .line 734
    .end local v6           #xOffset:I
    :cond_0
    add-int/lit8 v0, v0, 0x4

    .line 735
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    aput v11, v3, v1

    .line 736
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput v11, v3, v2

    .line 737
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    iget v9, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    int-to-float v9, v9

    aput v9, v3, v1

    .line 738
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput v11, v3, v2

    .line 739
    const/4 v7, 0x0

    .line 740
    .local v7, y0:I
    iget v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    .local v8, y1:I
    move v2, v1

    .line 742
    .end local v1           #i:I
    .restart local v2       #i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 743
    div-int/lit8 v9, v2, 0x4

    sub-int/2addr v9, v4

    invoke-direct {p0, v9}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v5

    .line 744
    .local v5, x:I
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    int-to-float v9, v5

    aput v9, v3, v2

    .line 745
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    int-to-float v9, v7

    aput v9, v3, v1

    .line 746
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    int-to-float v9, v5

    aput v9, v3, v2

    .line 747
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    int-to-float v9, v8

    aput v9, v3, v1

    goto :goto_0

    .line 749
    .end local v5           #x:I
    :cond_1
    iget-object v9, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDaySeparatorInnerColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 750
    iget-object v9, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget v10, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 751
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v9, v0, v10}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 752
    return-void
.end method

.method protected drawEvent(Landroid/graphics/Canvas;Lcom/android/calendar/Event;IIIZZZ)I
    .locals 26
    .parameter "canvas"
    .parameter "event"
    .parameter "x"
    .parameter "y"
    .parameter "rightEdge"
    .parameter "moreEvents"
    .parameter "showTimes"
    .parameter "doDraw"

    .prologue
    .line 976
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    add-int/lit8 v10, v2, 0x1

    .line 977
    .local v10, BORDER_SPACE:I
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    div-int/lit8 v11, v2, 0x2

    .line 978
    .local v11, STROKE_WIDTH_ADJ:I
    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/android/calendar/Event;->allDay:Z

    .line 979
    .local v12, allDay:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventHeight:I

    move/from16 v16, v0

    .line 980
    .local v16, eventRequiredSpace:I
    if-eqz v12, :cond_2

    .line 982
    mul-int/lit8 v2, v10, 0x2

    add-int v16, v16, v2

    .line 987
    :cond_0
    :goto_0
    sget v18, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_BOTTOM_PADDING:I

    .line 988
    .local v18, reservedSpace:I
    if-eqz p6, :cond_1

    .line 990
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    add-int v16, v16, v2

    .line 995
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mExtrasHeight:I

    add-int v18, v18, v2

    .line 998
    :cond_1
    add-int v2, p4, v16

    add-int v2, v2, v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    if-le v2, v3, :cond_3

    move/from16 v2, p4

    .line 1085
    :goto_1
    return v2

    .line 983
    .end local v18           #reservedSpace:I
    :cond_2
    if-eqz p7, :cond_0

    .line 985
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mExtrasHeight:I

    add-int v16, v16, v2

    goto :goto_0

    .line 1001
    .restart local v18       #reservedSpace:I
    :cond_3
    if-nez p8, :cond_4

    .line 1002
    add-int v2, p4, v16

    goto :goto_1

    .line 1005
    :cond_4
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    const/16 v17, 0x1

    .line 1006
    .local v17, isDeclined:Z
    :goto_2
    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/calendar/Event;->color:I

    .line 1007
    .local v15, color:I
    if-eqz v17, :cond_5

    .line 1008
    invoke-static {v15}, Lcom/android/calendar/Utils;->getDeclinedColorFromColor(I)I

    move-result v15

    .line 1013
    :cond_5
    if-eqz v12, :cond_a

    .line 1017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    move/from16 v0, p3

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 1018
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    sub-int v3, p5, v11

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    add-int v3, p4, v11

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1020
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventHeight:I

    add-int v3, v3, p4

    mul-int/lit8 v4, v10, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v3, v11

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1021
    add-int v23, p3, v10

    .line 1022
    .local v23, textX:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventAscentHeight:I

    add-int v2, v2, p4

    add-int v24, v2, v10

    .line 1023
    .local v24, textY:I
    sub-int v22, p5, v10

    .line 1034
    .local v22, textRightEdge:I
    :goto_3
    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 1035
    .local v14, boxStyle:Landroid/graphics/Paint$Style;
    const/16 v19, 0x0

    .line 1036
    .local v19, solidBackground:Z
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    .line 1037
    sget-object v14, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 1038
    if-eqz v12, :cond_6

    .line 1039
    const/16 v19, 0x1

    .line 1042
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventSquarePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventSquarePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventSquarePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1046
    sub-int v2, v22, v23

    int-to-float v13, v2

    .line 1047
    .local v13, avail:F
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v3, v13, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 1050
    .local v20, text:Ljava/lang/CharSequence;
    if-eqz v19, :cond_b

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mSolidBackgroundEventPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    .line 1064
    .local v21, textPaint:Landroid/graphics/Paint;
    :goto_4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v23

    int-to-float v3, v0

    move/from16 v0, v24

    int-to-float v4, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1065
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventHeight:I

    add-int p4, p4, v2

    .line 1066
    if-eqz v12, :cond_7

    .line 1067
    mul-int/lit8 v2, v10, 0x2

    add-int p4, p4, v2

    .line 1070
    :cond_7
    if-eqz p7, :cond_8

    if-nez v12, :cond_8

    .line 1072
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mExtrasAscentHeight:I

    add-int v24, p4, v2

    .line 1073
    sget-object v2, Lcom/android/calendar/month/MonthWeekEventsView;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1074
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/calendar/month/MonthWeekEventsView;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/calendar/Event;->startMillis:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/calendar/Event;->endMillis:J

    const v8, 0x80001

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-static {v9, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v20

    invoke-static {v0, v2, v13, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 1078
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v23

    int-to-float v4, v0

    move/from16 v0, v24

    int-to-float v5, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1080
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mExtrasHeight:I

    add-int p4, p4, v2

    .line 1083
    :cond_8
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    add-int p4, p4, v2

    move/from16 v2, p4

    .line 1085
    goto/16 :goto_1

    .line 1005
    .end local v13           #avail:F
    .end local v14           #boxStyle:Landroid/graphics/Paint$Style;
    .end local v15           #color:I
    .end local v17           #isDeclined:Z
    .end local v19           #solidBackground:Z
    .end local v20           #text:Ljava/lang/CharSequence;
    .end local v21           #textPaint:Landroid/graphics/Paint;
    .end local v22           #textRightEdge:I
    .end local v23           #textX:I
    .end local v24           #textY:I
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 1025
    .restart local v15       #color:I
    .restart local v17       #isDeclined:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    move/from16 v0, p3

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int v3, v3, p3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventAscentHeight:I

    add-int v3, v3, p4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1029
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int v2, v2, p3

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_RIGHT_PADDING:I

    add-int v23, v2, v3

    .line 1030
    .restart local v23       #textX:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventAscentHeight:I

    add-int v24, p4, v2

    .line 1031
    .restart local v24       #textY:I
    move/from16 v22, p5

    .restart local v22       #textRightEdge:I
    goto/16 :goto_3

    .line 1053
    .restart local v13       #avail:F
    .restart local v14       #boxStyle:Landroid/graphics/Paint$Style;
    .restart local v19       #solidBackground:Z
    .restart local v20       #text:Ljava/lang/CharSequence;
    :cond_b
    if-eqz v17, :cond_c

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    .restart local v21       #textPaint:Landroid/graphics/Paint;
    goto/16 :goto_4

    .line 1056
    .end local v21           #textPaint:Landroid/graphics/Paint;
    :cond_c
    if-eqz v12, :cond_d

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mFramedEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mFramedEventPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    .restart local v21       #textPaint:Landroid/graphics/Paint;
    goto/16 :goto_4

    .line 1062
    .end local v21           #textPaint:Landroid/graphics/Paint;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    .restart local v21       #textPaint:Landroid/graphics/Paint;
    goto/16 :goto_4

    .line 1078
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    goto :goto_5
.end method

.method protected drawEvents(Landroid/graphics/Canvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    if-nez v3, :cond_1

    .line 912
    :cond_0
    return-void

    .line 861
    :cond_1
    const/16 v20, -0x1

    .line 862
    .local v20, day:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    .line 863
    .local v22, eventDay:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    add-int/lit8 v20, v20, 0x1

    .line 864
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 868
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v3

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    add-int/2addr v3, v4

    add-int/lit8 v6, v3, 0x1

    .line 869
    .local v6, xSquare:I
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v8

    .line 871
    .local v8, rightEdge:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 872
    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_PORTRAIT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumHeight:I

    add-int/2addr v3, v4

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    add-int v15, v3, v4

    .line 873
    .local v15, ySquare:I
    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v8, v3

    .line 880
    :goto_1
    const/4 v10, 0x1

    .line 881
    .local v10, showTimes:Z
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 882
    .local v24, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    move v7, v15

    .line 883
    .local v7, yTest:I
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 884
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Event;

    .line 885
    .local v5, event:Lcom/android/calendar/Event;
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/calendar/month/MonthWeekEventsView;->drawEvent(Landroid/graphics/Canvas;Lcom/android/calendar/Event;IIIZZZ)I

    move-result v25

    .line 887
    .local v25, newY:I
    move/from16 v0, v25

    if-ne v0, v7, :cond_6

    .line 888
    const/4 v10, 0x0

    .line 894
    .end local v5           #event:Lcom/android/calendar/Event;
    .end local v25           #newY:I
    :cond_3
    const/16 v21, 0x0

    .line 895
    .local v21, eventCount:I
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 896
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 897
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Event;

    .line 898
    .restart local v5       #event:Lcom/android/calendar/Event;
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const/16 v19, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v5

    move v14, v6

    move/from16 v16, v8

    move/from16 v18, v10

    invoke-virtual/range {v11 .. v19}, Lcom/android/calendar/month/MonthWeekEventsView;->drawEvent(Landroid/graphics/Canvas;Lcom/android/calendar/Event;IIIZZZ)I

    move-result v25

    .line 900
    .restart local v25       #newY:I
    move/from16 v0, v25

    if-ne v0, v15, :cond_7

    .line 907
    .end local v5           #event:Lcom/android/calendar/Event;
    .end local v25           #newY:I
    :cond_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v26, v3, v21

    .line 908
    .local v26, remaining:I
    if-lez v26, :cond_2

    .line 909
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/calendar/month/MonthWeekEventsView;->drawMoreEvents(Landroid/graphics/Canvas;II)V

    goto/16 :goto_0

    .line 875
    .end local v7           #yTest:I
    .end local v10           #showTimes:Z
    .end local v15           #ySquare:I
    .end local v21           #eventCount:I
    .end local v24           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    .end local v26           #remaining:I
    :cond_5
    sget v15, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_LANDSCAPE:I

    .line 876
    .restart local v15       #ySquare:I
    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_X_OFFSET_LANDSCAPE:I

    sub-int/2addr v8, v3

    goto :goto_1

    .line 891
    .restart local v5       #event:Lcom/android/calendar/Event;
    .restart local v7       #yTest:I
    .restart local v10       #showTimes:Z
    .restart local v24       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    .restart local v25       #newY:I
    :cond_6
    move/from16 v7, v25

    .line 892
    goto :goto_2

    .line 903
    .restart local v21       #eventCount:I
    :cond_7
    add-int/lit8 v21, v21, 0x1

    .line 904
    move/from16 v15, v25

    .line 905
    goto :goto_3
.end method

.method protected drawMoreEvents(Landroid/graphics/Canvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "remainingEvents"
    .parameter "x"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1089
    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mExtrasDescent:I

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_BOTTOM_PADDING:I

    add-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 1090
    .local v1, y:I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0005

    invoke-virtual {v2, v3, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1093
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1094
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, p3

    int-to-float v4, v1

    iget-object v5, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1095
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1096
    return-void
.end method

.method protected drawSelectedDay(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x4000

    .line 691
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 692
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 693
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 694
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 695
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayIndex:I

    invoke-direct {p0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 696
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 698
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimateColor:I

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateSelectedDayAlpha:I

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 699
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 700
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 701
    return-void
.end method

.method protected drawToday(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x4000

    .line 677
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 678
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 679
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 680
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 681
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    invoke-direct {p0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 682
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 684
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimateColor:I

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateTodayAlpha:I

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 685
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 686
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 687
    return-void
.end method

.method protected drawWeekNums(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 809
    const/4 v0, 0x0

    .line 810
    .local v0, i:I
    const/4 v4, -0x1

    .line 811
    .local v4, offset:I
    iget v5, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    .line 812
    .local v5, todayIndex:I
    const/4 v6, 0x0

    .line 813
    .local v6, x:I
    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    .line 814
    .local v3, numCount:I
    iget-boolean v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v8, :cond_0

    .line 815
    sget v8, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_WEEK_NUMBER:I

    iget v10, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int v6, v8, v10

    .line 816
    iget v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumAscentHeight:I

    sget v10, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_WEEK_NUMBER:I

    add-int v7, v8, v10

    .line 817
    .local v7, y:I
    iget-object v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v8, v8, v9

    int-to-float v10, v6

    int-to-float v11, v7

    iget-object v12, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 818
    add-int/lit8 v3, v3, 0x1

    .line 819
    add-int/lit8 v0, v0, 0x1

    .line 820
    add-int/lit8 v5, v5, 0x1

    .line 821
    add-int/lit8 v4, v4, 0x1

    .line 825
    .end local v7           #y:I
    :cond_0
    iget v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumAscentHeight:I

    sget v10, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    add-int v7, v8, v10

    .line 827
    .restart local v7       #y:I
    iget-object v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    aget-boolean v2, v8, v0

    .line 828
    .local v2, isFocusMonth:Z
    const/4 v1, 0x0

    .line 829
    .local v1, isBold:Z
    iget-object v10, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_3

    iget v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    :goto_0
    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 830
    :goto_1
    if-ge v0, v3, :cond_7

    .line 831
    iget-boolean v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    if-eqz v8, :cond_5

    if-ne v5, v0, :cond_5

    .line 832
    iget-object v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumTodayColor:I

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 833
    iget-object v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 834
    add-int/lit8 v8, v0, 0x1

    if-ge v8, v3, :cond_1

    .line 837
    iget-object v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    add-int/lit8 v10, v0, 0x1

    aget-boolean v8, v8, v10

    if-nez v8, :cond_4

    const/4 v2, 0x1

    .line 843
    :cond_1
    :goto_2
    sub-int v8, v0, v4

    invoke-direct {p0, v8}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v8

    sget v10, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    sub-int v6, v8, v10

    .line 844
    iget-object v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v8, v8, v0

    int-to-float v10, v6

    int-to-float v11, v7

    iget-object v12, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 847
    iget-object v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mCellExt:Lcom/mediatek/calendar/extension/IMonthViewExt;

    iget-object v10, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-interface {v8, p1, v10, v6, v7}, Lcom/mediatek/calendar/extension/IMonthViewExt;->drawInCell(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V

    .line 850
    if-eqz v1, :cond_2

    .line 851
    iget-object v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 830
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 829
    :cond_3
    iget v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumOtherColor:I

    goto :goto_0

    :cond_4
    move v2, v9

    .line 837
    goto :goto_2

    .line 839
    :cond_5
    iget-object v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    aget-boolean v8, v8, v0

    if-eq v8, v2, :cond_1

    .line 840
    iget-object v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    aget-boolean v2, v8, v0

    .line 841
    iget-object v10, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_6

    iget v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    :goto_3
    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_6
    iget v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumOtherColor:I

    goto :goto_3

    .line 854
    :cond_7
    return-void
.end method

.method public getDayFromLocation(F)Landroid/text/format/Time;
    .locals 4
    .parameter "x"

    .prologue
    .line 1168
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->getDayIndexFromLocation(F)I

    move-result v1

    .line 1169
    .local v1, dayPosition:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 1170
    const/4 v2, 0x0

    .line 1196
    :goto_0
    return-object v2

    .line 1172
    :cond_0
    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstJulianDay:I

    add-int v0, v3, v1

    .line 1174
    .local v0, day:I
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1194
    .local v2, time:Landroid/text/format/Time;
    invoke-static {v2, v0}, Lcom/android/calendar/Utils;->setJulianDayInGeneral(Landroid/text/format/Time;I)J

    goto :goto_0
.end method

.method public getDayIndexFromLocation(F)I
    .locals 4
    .parameter "x"

    .prologue
    .line 1158
    iget-boolean v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int v0, v1, v2

    .line 1159
    .local v0, dayStart:I
    :goto_0
    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    .line 1160
    :cond_0
    const/4 v1, -0x1

    .line 1163
    :goto_1
    return v1

    .line 1158
    .end local v0           #dayStart:I
    :cond_1
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    goto :goto_0

    .line 1163
    .restart local v0       #dayStart:I
    :cond_2
    int-to-float v1, v0

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1
.end method

.method public getTimeFromLocation(II)Landroid/text/format/Time;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1264
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/calendar/month/MonthWeekEventsView;->getDayFromLocation(F)Landroid/text/format/Time;

    move-result-object v0

    return-object v0
.end method

.method protected initView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f00

    const/4 v4, 0x1

    .line 431
    invoke-super {p0}, Lcom/android/calendar/month/SimpleWeekView;->initView()V

    .line 433
    sget-boolean v1, Lcom/android/calendar/month/MonthWeekEventsView;->mInitialized:Z

    if-nez v1, :cond_2

    .line 434
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 435
    .local v0, resources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090002

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/calendar/month/MonthWeekEventsView;->mShowDetailsInMonth:Z

    .line 436
    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT_TITLE:I

    .line 437
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NUMBER:I

    .line 438
    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    .line 439
    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->CONFLICT_COLOR:I

    .line 440
    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_TEXT_COLOR:I

    .line 441
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 442
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    .line 443
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_WEEK_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_WEEK_NUMBER:I

    .line 444
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    .line 445
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_WEEK_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_WEEK_NUMBER:I

    .line 446
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    .line 447
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NUMBER:I

    .line 448
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    .line 449
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT_TITLE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT_TITLE:I

    .line 450
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MORE_EVENTS:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MORE_EVENTS:I

    .line 451
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NAME:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NAME:I

    .line 452
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_WEEK_NUM:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_WEEK_NUM:I

    .line 453
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_OUTER_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_OUTER_WIDTH:I

    .line 454
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    .line 455
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGTH:I

    .line 456
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I

    .line 457
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_X_OFFSET_LANDSCAPE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_X_OFFSET_LANDSCAPE:I

    .line 458
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_LANDSCAPE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_LANDSCAPE:I

    .line 459
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_PORTRAIT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_PORTRAIT:I

    .line 460
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    .line 461
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    .line 462
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    .line 463
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_BOTTOM_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_BOTTOM_PADDING:I

    .line 464
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_RIGHT_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_RIGHT_PADDING:I

    .line 465
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    .line 466
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_WIDTH:I

    .line 467
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_HEIGHT:I

    .line 468
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MIN_SEGMENT_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MIN_SEGMENT_HEIGHT:I

    .line 469
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_SIDE_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_SIDE_PADDING:I

    .line 470
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DEFAULT_EDGE_SPACING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DEFAULT_EDGE_SPACING:I

    .line 471
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    .line 472
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    .line 474
    :cond_0
    sget-boolean v1, Lcom/android/calendar/month/MonthWeekEventsView;->mShowDetailsInMonth:Z

    if-nez v1, :cond_1

    .line 475
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_HEIGHT:I

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    .line 477
    :cond_1
    sput-boolean v4, Lcom/android/calendar/month/MonthWeekEventsView;->mInitialized:Z

    .line 479
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_2
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DEFAULT_EDGE_SPACING:I

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    .line 480
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->loadColors(Landroid/content/Context;)V

    .line 483
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    .line 484
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 485
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 486
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NUMBER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 487
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 488
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 489
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 490
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 492
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumAscentHeight:I

    .line 493
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumHeight:I

    .line 495
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    .line 496
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 497
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 498
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT_TITLE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 499
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 501
    new-instance v1, Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSolidBackgroundEventPaint:Landroid/text/TextPaint;

    .line 502
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSolidBackgroundEventPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_TEXT_COLOR:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 503
    new-instance v1, Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSolidBackgroundEventPaint:Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFramedEventPaint:Landroid/text/TextPaint;

    .line 505
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    .line 506
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 507
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 508
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT_TITLE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 509
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthDeclinedEventColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 511
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventAscentHeight:I

    .line 512
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventHeight:I

    .line 514
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    .line 515
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 516
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 517
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 518
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 519
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventExtraColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 520
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 521
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 522
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mExtrasHeight:I

    .line 523
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mExtrasAscentHeight:I

    .line 524
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mExtrasDescent:I

    .line 526
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    .line 527
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 528
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 529
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 530
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 531
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthDeclinedExtrasColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 532
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 533
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 535
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    .line 536
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 537
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 538
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_WEEK_NUM:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 539
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeekNumColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 540
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 541
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 543
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumAscentHeight:I

    .line 545
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    .line 546
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    .line 547
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBusyBitsBusyTimeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 548
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 549
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 550
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 551
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBusyBitsConflictTimeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 552
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 553
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 554
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 556
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventSquarePaint:Landroid/graphics/Paint;

    .line 557
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventSquarePaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 558
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventSquarePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 572
    return-void
.end method

.method protected loadColors(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x7f080002

    .line 392
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 393
    .local v0, res:Landroid/content/res/Resources;
    const v3, 0x7f08001a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthWeekNumColor:I

    .line 394
    const v3, 0x7f080017

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    .line 395
    const v3, 0x7f080019

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumOtherColor:I

    .line 396
    const v3, 0x7f08001c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumTodayColor:I

    .line 397
    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNameColor:I

    .line 398
    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumOtherColor:I

    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNameOtherColor:I

    .line 399
    const v3, 0x7f08001d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventColor:I

    .line 400
    const v3, 0x7f080031

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthDeclinedEventColor:I

    .line 401
    const v3, 0x7f080039

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthDeclinedExtrasColor:I

    .line 402
    const v3, 0x7f08001e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventExtraColor:I

    .line 403
    const v3, 0x7f08001f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventOtherColor:I

    .line 404
    const v3, 0x7f080020

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventExtraOtherColor:I

    .line 405
    const v3, 0x7f080027

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBGTodayColor:I

    .line 406
    const v3, 0x7f080025

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBGOtherColor:I

    .line 407
    const v3, 0x7f080028

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBGColor:I

    .line 408
    const v3, 0x7f080023

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDaySeparatorInnerColor:I

    .line 410
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calendar/extension/ExtensionFactory;->getCalendarTheme(Landroid/content/Context;)Lcom/mediatek/calendar/extension/ICalendarThemeExt;

    move-result-object v2

    .line 411
    .local v2, themeExt:Lcom/mediatek/calendar/extension/ICalendarThemeExt;
    invoke-interface {v2}, Lcom/mediatek/calendar/extension/ICalendarThemeExt;->isThemeManagerEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    invoke-interface {v2}, Lcom/mediatek/calendar/extension/ICalendarThemeExt;->getThemeColor()I

    move-result v1

    .line 413
    .local v1, themeColor:I
    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimateColor:I

    .line 414
    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimateColor:I

    .line 415
    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mClickedDayColor:I

    .line 422
    .end local v1           #themeColor:I
    :goto_0
    const v3, 0x7f02005e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayDrawable:Landroid/graphics/drawable/Drawable;

    .line 423
    return-void

    .line 417
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimateColor:I

    .line 418
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimateColor:I

    .line 419
    const v3, 0x7f080041

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mClickedDayColor:I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 658
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 659
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawWeekNums(Landroid/graphics/Canvas;)V

    .line 660
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawDaySeparators(Landroid/graphics/Canvas;)V

    .line 662
    iget-boolean v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasSelectedDay:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateSelectedDay:Z

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawSelectedDay(Landroid/graphics/Canvas;)V

    .line 665
    :cond_0
    sget-boolean v0, Lcom/android/calendar/month/MonthWeekEventsView;->mShowDetailsInMonth:Z

    if-eqz v0, :cond_1

    .line 666
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawEvents(Landroid/graphics/Canvas;)V

    .line 673
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawClick(Landroid/graphics/Canvas;)V

    .line 674
    return-void

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mUnsortedEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 669
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mUnsortedEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/calendar/month/MonthWeekEventsView;->createDna(Ljava/util/ArrayList;)V

    .line 671
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawDNA(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 1201
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1204
    .local v1, context:Landroid/content/Context;
    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityManager;

    .line 1206
    .local v8, am:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1207
    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/android/calendar/month/SimpleWeekView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1244
    :goto_0
    return v2

    .line 1209
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_6

    .line 1210
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/month/MonthWeekEventsView;->getDayFromLocation(F)Landroid/text/format/Time;

    move-result-object v14

    .line 1211
    .local v14, hover:Landroid/text/format/Time;
    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleWeekView;->mLastHoverTime:Landroid/text/format/Time;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleWeekView;->mLastHoverTime:Landroid/text/format/Time;

    invoke-static {v14, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v2

    if-eqz v2, :cond_6

    .line 1213
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 1214
    .local v16, millis:Ljava/lang/Long;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0x10

    invoke-static/range {v1 .. v6}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v9

    .line 1216
    .local v9, date:Ljava/lang/String;
    const/16 v2, 0x40

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    .line 1218
    .local v7, accessEvent:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1219
    sget-boolean v2, Lcom/android/calendar/month/MonthWeekEventsView;->mShowDetailsInMonth:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 1220
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int v11, v2, v3

    .line 1221
    .local v11, dayStart:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v3, v11

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    sub-int/2addr v3, v11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v10, v2

    .line 1223
    .local v10, dayPosition:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1224
    .local v13, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v17

    .line 1225
    .local v17, text:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/calendar/Event;

    .line 1226
    .local v12, e:Lcom/android/calendar/Event;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/android/calendar/Event;->getTitleAndLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    const/16 v6, 0x14

    .line 1228
    .local v6, flags:I
    iget-boolean v2, v12, Lcom/android/calendar/Event;->allDay:Z

    if-nez v2, :cond_4

    .line 1229
    or-int/lit8 v6, v6, 0x1

    .line 1230
    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1231
    or-int/lit16 v6, v6, 0x80

    .line 1236
    :cond_3
    :goto_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v12, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v4, v12, Lcom/android/calendar/Event;->endMillis:J

    invoke-static/range {v1 .. v6}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1234
    :cond_4
    or-int/lit16 v6, v6, 0x2000

    goto :goto_2

    .line 1240
    .end local v6           #flags:I
    .end local v10           #dayPosition:I
    .end local v11           #dayStart:I
    .end local v12           #e:Lcom/android/calendar/Event;
    .end local v13           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v17           #text:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1241
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/calendar/month/SimpleWeekView;->mLastHoverTime:Landroid/text/format/Time;

    .line 1244
    .end local v7           #accessEvent:Landroid/view/accessibility/AccessibilityEvent;
    .end local v9           #date:Ljava/lang/String;
    .end local v14           #hover:Landroid/text/format/Time;
    .end local v16           #millis:Ljava/lang/Long;
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public setAnimateSelectedDayAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 647
    iput p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateSelectedDayAlpha:I

    .line 648
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 649
    return-void
.end method

.method public setAnimateTodayAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 652
    iput p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateTodayAlpha:I

    .line 653
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 654
    return-void
.end method

.method public setClickedDay(F)V
    .locals 1
    .parameter "xLocation"

    .prologue
    .line 1248
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->getDayIndexFromLocation(F)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mClickedDayIndex:I

    .line 1249
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1250
    return-void
.end method

.method public setEvents(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, sortedEvents:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/android/calendar/Event;>;>;"
    iput-object p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    .line 378
    if-nez p1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    if-eq v0, v1, :cond_0

    .line 382
    const-string v0, "MonthView"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    const-string v0, "MonthView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Events size must be same as days displayed: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " days="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    goto :goto_0
.end method

.method public setEvents(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, sortedEvents:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/android/calendar/Event;>;>;"
    .local p2, unsortedEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->setEvents(Ljava/util/List;)V

    .line 335
    invoke-virtual {p0, p2}, Lcom/android/calendar/month/MonthWeekEventsView;->createDna(Ljava/util/ArrayList;)V

    .line 336
    return-void
.end method

.method public setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "tz"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 576
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-super {p0, p1, p2}, Lcom/android/calendar/month/SimpleWeekView;->setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 578
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mOrientation:I

    .line 582
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/calendar/month/MonthWeekEventsView;->updateToday(Ljava/lang/String;)Z

    .line 583
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    .line 586
    const-string v0, "selected_day"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    const-string v0, "selected_day"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/month/MonthWeekEventsView;->updateSelectedDayIndex(I)I

    .line 591
    :cond_1
    const-string v0, "animate_selected_day"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasSelectedDay:Z

    if-eqz v0, :cond_3

    .line 592
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimatorListener:Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;

    monitor-enter v1

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 594
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 595
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 597
    :cond_2
    const-string v0, "animateSelectedDayAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateSelectedDayAlpha:I

    const/16 v5, 0x50

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0xff

    aput v4, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;

    .line 599
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 600
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimatorListener:Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;

    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2}, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->setAnimator(Landroid/animation/Animator;)V

    .line 601
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimatorListener:Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->setFadingIn(Z)V

    .line 602
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimatorListener:Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateSelectedDay:Z

    .line 604
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 605
    monitor-exit v1

    .line 607
    :cond_3
    return-void

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected updateSelectionPositions()V
    .locals 4

    .prologue
    .line 1143
    iget-boolean v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasSelectedDay:Z

    if-eqz v2, :cond_1

    .line 1144
    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedDay:I

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeekStart:I

    sub-int v1, v2, v3

    .line 1145
    .local v1, selectedPosition:I
    if-gez v1, :cond_0

    .line 1146
    add-int/lit8 v1, v1, 0x7

    .line 1148
    :cond_0
    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 1149
    .local v0, effectiveWidth:I
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    sub-int/2addr v0, v2

    .line 1150
    mul-int v2, v1, v0

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    div-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedLeft:I

    .line 1151
    add-int/lit8 v2, v1, 0x1

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    div-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedRight:I

    .line 1152
    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedLeft:I

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedLeft:I

    .line 1153
    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedRight:I

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedRight:I

    .line 1155
    .end local v0           #effectiveWidth:I
    .end local v1           #selectedPosition:I
    :cond_1
    return-void
.end method

.method public updateToday(Ljava/lang/String;)Z
    .locals 7
    .parameter "tz"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 613
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    iput-object p1, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 614
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 615
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 616
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    invoke-virtual {v1, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    iget-wide v3, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 617
    .local v0, julianToday:I
    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstJulianDay:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstJulianDay:I

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 618
    iput-boolean v6, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    .line 619
    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstJulianDay:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    .line 624
    :goto_0
    iget-boolean v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    return v1

    .line 621
    :cond_0
    iput-boolean v5, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    .line 622
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    goto :goto_0
.end method
