.class public Lcom/mediatek/calendar/lunar/LunarDatePicker;
.super Landroid/widget/FrameLayout;
.source "LunarDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;,
        Lcom/mediatek/calendar/lunar/LunarDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_DAY:I = 0x1f

.field private static final DEFAULT_END_HOUR:I = 0x17

.field private static final DEFAULT_END_MINUTE:I = 0x3b

.field private static final DEFAULT_END_MONTH:I = 0xb

.field private static final DEFAULT_END_YEAR:I = 0x7f4

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_DAY:I = 0x1

.field private static final DEFAULT_START_HOUR:I = 0x0

.field private static final DEFAULT_START_MINUTE:I = 0x0

.field private static final DEFAULT_START_MONTH:I = 0x0

.field private static final DEFAULT_START_YEAR:I = 0x7b2

.field private static final LUNAR_WORD_RUN:I = 0x1

.field private static final PICKER_CHILD_COUNT:I = 0x1

.field private static final PICKER_CHILD_INPUT_TEXT_INDEX:I

.field private static final TAG:Ljava/lang/String;

.field private static sMaxDate:Ljava/util/Calendar;

.field private static sMinDate:Ljava/util/Calendar;


# instance fields
.field private final mCalendarView:Landroid/widget/CalendarView;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Landroid/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;

.field private final mLunarLeapWordText:Ljava/lang/String;

.field private final mLunarMonthNumberTextArray:[Ljava/lang/String;

.field private final mLunarMonthTextArray:[Ljava/lang/String;

.field private final mMonthSpinner:Landroid/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lcom/mediatek/calendar/lunar/LunarDatePicker$OnDateChangedListener;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private final mYearSpinner:Landroid/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 42
    const-class v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->TAG:Ljava/lang/String;

    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMinDate:Ljava/util/Calendar;

    .line 99
    sget-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMinDate:Ljava/util/Calendar;

    const/16 v1, 0x7b2

    const/4 v3, 0x1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    .line 105
    sget-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    const/16 v1, 0x7f4

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0x17

    const/16 v5, 0x3b

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 150
    const v0, 0x7f010006

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 13
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 154
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDateFormat:Ljava/text/DateFormat;

    .line 79
    const/16 v0, 0xc

    iput v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mNumberOfMonths:I

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mIsEnabled:Z

    .line 156
    invoke-static {p1}, Lcom/mediatek/calendar/lunar/LunarUtil;->getInstance(Landroid/content/Context;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 158
    .local v10, res:Landroid/content/res/Resources;
    const v0, 0x7f070018

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunarMonthTextArray:[Ljava/lang/String;

    .line 159
    const v0, 0x7f070017

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunarMonthNumberTextArray:[Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mediatek/calendar/lunar/LunarUtil;->getSpecialWord(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunarLeapWordText:Ljava/lang/String;

    .line 165
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 193
    const/4 v11, 0x1

    .line 194
    .local v11, spinnersShown:Z
    const/4 v6, 0x1

    .line 195
    .local v6, calendarViewShown:Z
    const/16 v12, 0x7b2

    .line 196
    .local v12, startYear:I
    const/16 v1, 0x7f4

    .line 197
    .local v1, endYear:I
    const v8, 0x7f04001b

    .line 200
    .local v8, layoutResourceId:I
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 202
    .local v7, inflater:Landroid/view/LayoutInflater;
    const/4 v0, 0x1

    invoke-virtual {v7, v8, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 204
    new-instance v9, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;

    invoke-direct {v9, p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;-><init>(Lcom/mediatek/calendar/lunar/LunarDatePicker;)V

    .line 304
    .local v9, onChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;
    const v0, 0x7f10003c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 307
    const v0, 0x7f10003f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CalendarView;

    iput-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    .line 308
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    new-instance v2, Lcom/mediatek/calendar/lunar/LunarDatePicker$2;

    invoke-direct {v2, p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker$2;-><init>(Lcom/mediatek/calendar/lunar/LunarDatePicker;)V

    invoke-virtual {v0, v2}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    .line 319
    const v0, 0x7f10000e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 323
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 324
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v9}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 326
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 328
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p0, v0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getNumberPickerInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 329
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 330
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 338
    :goto_0
    const v0, 0x7f10003d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 339
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 340
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mNumberOfMonths:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 341
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunarMonthTextArray:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 343
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v9}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 345
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 347
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p0, v0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getNumberPickerInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 348
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 349
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 356
    :goto_1
    const v0, 0x7f10003e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 357
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 358
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v9}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 360
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 362
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p0, v0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getNumberPickerInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 363
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 364
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 373
    :goto_2
    if-nez v11, :cond_3

    if-nez v6, :cond_3

    .line 374
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->setSpinnersShown(Z)V

    .line 381
    :goto_3
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 382
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v12, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 383
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->setMinDate(J)V

    .line 386
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 387
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0x17

    const/16 v5, 0x3b

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 388
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->setMaxDate(J)V

    .line 391
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 392
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->init(IIILcom/mediatek/calendar/lunar/LunarDatePicker$OnDateChangedListener;)V

    .line 396
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->reorderSpinners()V

    .line 406
    return-void

    .line 333
    :cond_0
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 334
    sget-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->TAG:Ljava/lang/String;

    const-string v2, "mDaySpinner.getChildCount() != 3,It isn\'t init ok."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 352
    :cond_1
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 353
    sget-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->TAG:Ljava/lang/String;

    const-string v2, "mMonthSpinner.getChildCount() != 3,It isn\'t init ok."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 367
    :cond_2
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 368
    sget-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->TAG:Ljava/lang/String;

    const-string v2, "mYearSpinner.getChildCount() != 3,It isn\'t init ok."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 376
    :cond_3
    invoke-virtual {p0, v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->setSpinnersShown(Z)V

    .line 377
    invoke-virtual {p0, v6}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->setCalendarViewShown(Z)V

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/mediatek/calendar/lunar/LunarDatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/calendar/lunar/LunarDatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/calendar/lunar/LunarDatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/calendar/lunar/LunarDatePicker;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Lcom/mediatek/calendar/lunar/LunarUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/calendar/lunar/LunarDatePicker;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->setDate(III)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/calendar/lunar/LunarDatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->updateSpinners()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .parameter "oldCalendar"
    .parameter "locale"

    .prologue
    .line 626
    if-nez p1, :cond_0

    .line 627
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 632
    :goto_0
    return-object v2

    .line 629
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 630
    .local v0, currentTimeMillis:J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 631
    .local v2, newCalendar:Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private isNewDate(III)Z
    .locals 3
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    const/4 v0, 0x1

    .line 730
    iget-object v1, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 932
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 933
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mOnDateChangedListener:Lcom/mediatek/calendar/lunar/LunarDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mOnDateChangedListener:Lcom/mediatek/calendar/lunar/LunarDatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/mediatek/calendar/lunar/LunarDatePicker$OnDateChangedListener;->onDateChanged(Lcom/mediatek/calendar/lunar/LunarDatePicker;III)V

    .line 937
    :cond_0
    return-void
.end method

.method private reorderSpinners()V
    .locals 5

    .prologue
    .line 642
    iget-object v3, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 643
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .line 644
    .local v1, order:[C
    array-length v2, v1

    .line 645
    .local v2, spinnerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 646
    aget-char v3, v1, v0

    sparse-switch v3, :sswitch_data_0

    .line 660
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 648
    :sswitch_0
    iget-object v3, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 649
    iget-object v3, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 645
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    :sswitch_1
    iget-object v3, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 653
    iget-object v3, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_1

    .line 656
    :sswitch_2
    iget-object v3, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 657
    iget-object v3, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_1

    .line 663
    :cond_0
    return-void

    .line 646
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    :goto_0
    return-void

    .line 599
    :cond_0
    iput-object p1, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 601
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    .line 602
    sget-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMinDate:Ljava/util/Calendar;

    .line 603
    sget-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    .line 604
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private setDate(III)V
    .locals 3
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 737
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    sget-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->TAG:Ljava/lang/String;

    const-string v1, "befor min date, set current to min date."

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    sget-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->TAG:Ljava/lang/String;

    const-string v1, "after max date, set current to max date."

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .locals 4
    .parameter "spinner"
    .parameter "spinnerCount"
    .parameter "spinnerIndex"

    .prologue
    .line 952
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 953
    const/4 v0, 0x5

    .line 959
    .local v0, imeOptions:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 960
    sget-object v2, Lcom/mediatek/calendar/lunar/LunarDatePicker;->TAG:Ljava/lang/String;

    const-string v3, "spinner.getChildCount() != 3,It isn\'t init ok.return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :goto_1
    return-void

    .line 955
    .end local v0           #imeOptions:I
    :cond_0
    const/4 v0, 0x6

    .restart local v0       #imeOptions:I
    goto :goto_0

    .line 964
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 965
    .local v1, input:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_1
.end method

.method private updateCalendarView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 904
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/CalendarView;->setDate(JZZ)V

    .line 905
    return-void
.end method

.method private updateInputState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1017
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1018
    .local v0, context:Landroid/content/Context;
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1020
    .local v1, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 1021
    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1022
    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 1023
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1024
    :cond_1
    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1025
    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 1026
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 1027
    :cond_2
    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1028
    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 1029
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 31

    .prologue
    .line 747
    const/4 v10, 0x0

    .line 748
    .local v10, isLeapYear:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 749
    .local v8, gregorianYear:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v28

    add-int/lit8 v7, v28, 0x1

    .line 750
    .local v7, gregorianMonth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v28, v0

    const/16 v29, 0x5

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 751
    .local v6, gregorianDay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8, v7, v6}, Lcom/mediatek/calendar/lunar/LunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v12

    .line 752
    .local v12, lunarDate:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v29, v12, v29

    invoke-virtual/range {v28 .. v29}, Lcom/mediatek/calendar/lunar/LunarUtil;->leapMonth(I)I

    move-result v11

    .line 753
    .local v11, leapMonth:I
    const/16 v28, 0x1

    aget v25, v12, v28

    .line 754
    .local v25, monthIndexDisplay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/mediatek/calendar/lunar/LunarUtil;->getLunarDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v13

    .line 756
    .local v13, lunarDateString:Ljava/lang/String;
    if-nez v11, :cond_2

    .line 757
    add-int/lit8 v25, v25, -0x1

    .line 764
    :cond_0
    :goto_0
    if-eqz v11, :cond_4

    .line 765
    const/16 v28, 0xd

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mNumberOfMonths:I

    .line 766
    const/4 v10, 0x1

    .line 771
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v29, v12, v29

    const/16 v30, 0x1

    aget v30, v12, v30

    invoke-virtual/range {v28 .. v30}, Lcom/mediatek/calendar/lunar/LunarUtil;->daysOfALunarMonth(II)I

    move-result v24

    .line 772
    .local v24, monthCountDays:I
    if-eqz v11, :cond_1

    move/from16 v0, v25

    if-ne v0, v11, :cond_1

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v29, v12, v29

    invoke-virtual/range {v28 .. v29}, Lcom/mediatek/calendar/lunar/LunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v24

    .line 777
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v28, v0

    sget-object v29, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    aget v29, v12, v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mNumberOfMonths:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 787
    sget-object v28, Lcom/mediatek/calendar/lunar/LunarDatePicker;->TAG:Ljava/lang/String;

    const-string v29, "set spinners to min date."

    invoke-static/range {v28 .. v29}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mNumberOfMonths:I

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v5, v0, [Ljava/lang/String;

    .line 810
    .local v5, displayedMonths:[Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 811
    const/4 v9, 0x0

    .line 812
    .local v9, i:I
    :goto_3
    if-ge v9, v11, :cond_7

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunarMonthTextArray:[Ljava/lang/String;

    move-object/from16 v28, v0

    aget-object v28, v28, v9

    aput-object v28, v5, v9

    .line 812
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 758
    .end local v5           #displayedMonths:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v24           #monthCountDays:I
    :cond_2
    move/from16 v0, v25

    if-ge v0, v11, :cond_3

    if-eqz v11, :cond_3

    .line 759
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_0

    .line 760
    :cond_3
    move/from16 v0, v25

    if-ne v0, v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunarLeapWordText:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 761
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_0

    .line 768
    :cond_4
    const/16 v28, 0xc

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mNumberOfMonths:I

    goto/16 :goto_1

    .line 788
    .restart local v24       #monthCountDays:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v28, v0

    sget-object v29, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    aget v29, v12, v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 797
    sget-object v28, Lcom/mediatek/calendar/lunar/LunarDatePicker;->TAG:Ljava/lang/String;

    const-string v29, "set spinners to max date."

    invoke-static/range {v28 .. v29}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 799
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mNumberOfMonths:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_2

    .line 815
    .restart local v5       #displayedMonths:[Ljava/lang/String;
    .restart local v9       #i:I
    :cond_7
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunarLeapWordText:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunarMonthNumberTextArray:[Ljava/lang/String;

    move-object/from16 v29, v0

    add-int/lit8 v30, v11, -0x1

    aget-object v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v5, v11

    .line 816
    add-int/lit8 v9, v9, 0x1

    .line 817
    :goto_4
    const/16 v28, 0xd

    move/from16 v0, v28

    if-ge v9, v0, :cond_9

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunarMonthTextArray:[Ljava/lang/String;

    move-object/from16 v28, v0

    add-int/lit8 v29, v9, -0x1

    aget-object v28, v28, v29

    aput-object v28, v5, v9

    .line 817
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 821
    .end local v9           #i:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunarMonthTextArray:[Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v30

    add-int/lit8 v30, v30, 0x1

    invoke-static/range {v28 .. v30}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    .end local v5           #displayedMonths:[Ljava/lang/String;
    check-cast v5, [Ljava/lang/String;

    .line 827
    .restart local v5       #displayedMonths:[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v27

    .line 828
    .local v27, monthMin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v26

    .line 829
    .local v26, monthMax:I
    array-length v0, v5

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_a

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 832
    :cond_a
    array-length v0, v5

    move/from16 v28, v0

    move/from16 v0, v26

    move/from16 v1, v28

    if-lt v0, v1, :cond_b

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    array-length v0, v5

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 836
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v14

    .line 845
    .local v14, max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v19

    .line 846
    .local v19, min:I
    sub-int v28, v14, v19

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    new-array v4, v0, [Ljava/lang/String;

    .line 848
    .local v4, displayedDays:[Ljava/lang/String;
    move/from16 v9, v19

    .restart local v9       #i:I
    :goto_5
    if-gt v9, v14, :cond_c

    .line 849
    sub-int v28, v9, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Lcom/mediatek/calendar/lunar/LunarUtil;->getLunarDayString(I)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v4, v28

    .line 848
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 854
    :cond_c
    array-length v0, v4

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-lt v0, v1, :cond_d

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 857
    :cond_d
    array-length v0, v4

    move/from16 v28, v0

    move/from16 v0, v28

    if-lt v14, v0, :cond_e

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    array-length v0, v4

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 861
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v28, v0

    sget-object v29, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v28, v0

    sget-object v29, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 869
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 878
    :goto_6
    sget-object v28, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMinDate:Ljava/util/Calendar;

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v22

    .line 879
    .local v22, minGregorianYear:I
    sget-object v28, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMinDate:Ljava/util/Calendar;

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v28

    add-int/lit8 v21, v28, 0x1

    .line 880
    .local v21, minGregorianMonth:I
    sget-object v28, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMinDate:Ljava/util/Calendar;

    const/16 v29, 0x5

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 881
    .local v20, minGregorianDay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v22

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/calendar/lunar/LunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v23

    .line 884
    .local v23, minLunarDate:[I
    sget-object v28, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 885
    .local v17, maxGregorianYear:I
    sget-object v28, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v28

    add-int/lit8 v16, v28, 0x1

    .line 886
    .local v16, maxGregorianMonth:I
    sget-object v28, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    const/16 v29, 0x5

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 887
    .local v15, maxGregorianDay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/calendar/lunar/LunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v18

    .line 890
    .local v18, maxLunarDate:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v29, v23, v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v29, v18, v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v29, v12, v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    aget v29, v12, v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 898
    return-void

    .line 872
    .end local v15           #maxGregorianDay:I
    .end local v16           #maxGregorianMonth:I
    .end local v17           #maxGregorianYear:I
    .end local v18           #maxLunarDate:[I
    .end local v20           #minGregorianDay:I
    .end local v21           #minGregorianMonth:I
    .end local v22           #minGregorianYear:I
    .end local v23           #minLunarDate:[I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_6
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 506
    invoke-virtual {p0, p1}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 507
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 689
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 690
    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0
.end method

.method public getDateString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;

    iget-object v1, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/mediatek/calendar/lunar/LunarUtil;->getLunarDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getNumberPickerInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "numberPicker"

    .prologue
    .line 1093
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/mediatek/calendar/lunar/LunarDatePicker$OnDateChangedListener;)V
    .locals 0
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "onDateChangedListener"

    .prologue
    .line 723
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->setDate(III)V

    .line 724
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->updateSpinners()V

    .line 725
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->updateCalendarView()V

    .line 726
    iput-object p4, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mOnDateChangedListener:Lcom/mediatek/calendar/lunar/LunarDatePicker$OnDateChangedListener;

    .line 727
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 535
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 536
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 537
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 523
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 524
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 525
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 529
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 530
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 531
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 512
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 514
    const/16 v0, 0x14

    .line 516
    .local v0, flags:I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 v5, 0x14

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, selectedDateUtterance:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 701
    move-object v0, p1

    check-cast v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;

    .line 702
    .local v0, ss:Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 703
    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;->mYear:I
    invoke-static {v0}, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;->access$1300(Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;)I

    move-result v1

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;->mMonth:I
    invoke-static {v0}, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;->access$1400(Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;)I

    move-result v2

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;->mDay:I
    invoke-static {v0}, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;->access$1500(Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->setDate(III)V

    .line 704
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->updateSpinners()V

    .line 705
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->updateCalendarView()V

    .line 706
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 694
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 695
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;

    invoke-virtual {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/mediatek/calendar/lunar/LunarDatePicker$1;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 2
    .parameter "shown"

    .prologue
    .line 566
    iget-object v1, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 567
    return-void

    .line 566
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 497
    :goto_0
    return-void

    .line 491
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 492
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 493
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 494
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 495
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    .line 496
    iput-boolean p1, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mIsEnabled:Z

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 5
    .parameter "maxDate"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 470
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 471
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 473
    sget-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxDate failed!:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_0
    return-void

    .line 477
    :cond_0
    sget-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 478
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    .line 479
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 481
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->updateCalendarView()V

    .line 483
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5
    .parameter "minDate"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 431
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 432
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 434
    sget-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMinDate failed!:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_0
    return-void

    .line 438
    :cond_0
    sget-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 439
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    .line 440
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/mediatek/calendar/lunar/LunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 442
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->updateCalendarView()V

    .line 444
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .parameter "shown"

    .prologue
    .line 585
    iget-object v1, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 586
    return-void

    .line 585
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateDate(III)V
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    .line 676
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    :goto_0
    return-void

    .line 679
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->setDate(III)V

    .line 680
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->updateSpinners()V

    .line 681
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->updateCalendarView()V

    .line 682
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->notifyDateChanged()V

    goto :goto_0
.end method
