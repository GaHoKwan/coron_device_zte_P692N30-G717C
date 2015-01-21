.class public Lcom/android/calendar/month/SimpleWeeksAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleWeeksAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/month/SimpleWeeksAdapter$CalendarGestureListener;
    }
.end annotation


# static fields
.field protected static DEFAULT_DAYS_PER_WEEK:I = 0x0

.field protected static DEFAULT_MONTH_FOCUS:I = 0x0

.field protected static DEFAULT_NUM_WEEKS:I = 0x0

.field protected static DEFAULT_WEEK_HEIGHT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MonthByWeek"

.field protected static WEEK_7_OVERHANG_HEIGHT:I = 0x0

.field protected static final WEEK_COUNT:I = 0xda9

.field public static final WEEK_PARAMS_DAYS_PER_WEEK:Ljava/lang/String; = "days_per_week"

.field public static final WEEK_PARAMS_FOCUS_MONTH:Ljava/lang/String; = "focus_month"

.field public static final WEEK_PARAMS_JULIAN_DAY:Ljava/lang/String; = "selected_day"

.field public static final WEEK_PARAMS_NUM_WEEKS:Ljava/lang/String; = "num_weeks"

.field public static final WEEK_PARAMS_SHOW_WEEK:Ljava/lang/String; = "week_numbers"

.field public static final WEEK_PARAMS_WEEK_START:Ljava/lang/String; = "week_start"

.field protected static mScale:F


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDaysPerWeek:I

.field protected mFirstDayOfWeek:I

.field protected mFocusMonth:I

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field mListView:Landroid/widget/ListView;

.field protected mNumWeeks:I

.field protected mSelectedDay:Landroid/text/format/Time;

.field protected mSelectedWeek:I

.field protected mShowWeekNumber:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 80
    const/4 v0, 0x6

    sput v0, Lcom/android/calendar/month/SimpleWeeksAdapter;->DEFAULT_NUM_WEEKS:I

    .line 81
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/month/SimpleWeeksAdapter;->DEFAULT_MONTH_FOCUS:I

    .line 82
    sput v1, Lcom/android/calendar/month/SimpleWeeksAdapter;->DEFAULT_DAYS_PER_WEEK:I

    .line 83
    const/16 v0, 0x20

    sput v0, Lcom/android/calendar/month/SimpleWeeksAdapter;->DEFAULT_WEEK_HEIGHT:I

    .line 84
    sput v1, Lcom/android/calendar/month/SimpleWeeksAdapter;->WEEK_7_OVERHANG_HEIGHT:I

    .line 86
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
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
    .line 100
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mShowWeekNumber:Z

    .line 96
    sget v1, Lcom/android/calendar/month/SimpleWeeksAdapter;->DEFAULT_NUM_WEEKS:I

    iput v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mNumWeeks:I

    .line 97
    sget v1, Lcom/android/calendar/month/SimpleWeeksAdapter;->DEFAULT_DAYS_PER_WEEK:I

    iput v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mDaysPerWeek:I

    .line 98
    sget v1, Lcom/android/calendar/month/SimpleWeeksAdapter;->DEFAULT_MONTH_FOCUS:I

    iput v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFocusMonth:I

    .line 101
    iput-object p1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    .line 104
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 105
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFirstDayOfWeek:I

    .line 107
    sget v1, Lcom/android/calendar/month/SimpleWeeksAdapter;->mScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/android/calendar/month/SimpleWeeksAdapter;->mScale:F

    .line 109
    sget v1, Lcom/android/calendar/month/SimpleWeeksAdapter;->mScale:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 110
    sget v1, Lcom/android/calendar/month/SimpleWeeksAdapter;->WEEK_7_OVERHANG_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/SimpleWeeksAdapter;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/SimpleWeeksAdapter;->WEEK_7_OVERHANG_HEIGHT:I

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->init()V

    .line 114
    invoke-virtual {p0, p2}, Lcom/android/calendar/month/SimpleWeeksAdapter;->updateParams(Ljava/util/HashMap;)V

    .line 115
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 192
    const/16 v0, 0xda9

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 202
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedDay()Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    const/4 v6, -0x1

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_2

    move-object v3, p2

    .line 211
    check-cast v3, Lcom/android/calendar/month/SimpleWeekView;

    .line 213
    .local v3, v:Lcom/android/calendar/month/SimpleWeekView;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashMap;

    .line 223
    .restart local v0       #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 226
    .restart local v0       #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 228
    const/4 v2, -0x1

    .line 229
    .local v2, selectedDay:I
    iget v5, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedWeek:I

    if-ne v5, p1, :cond_1

    .line 230
    iget-object v5, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget v2, v5, Landroid/text/format/Time;->weekDay:I

    .line 234
    :cond_1
    const-string v5, "height"

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v6

    sget v7, Lcom/android/calendar/month/SimpleWeeksAdapter;->WEEK_7_OVERHANG_HEIGHT:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mNumWeeks:I

    div-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v5, "selected_day"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v5, "show_wk_num"

    iget-boolean v6, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mShowWeekNumber:Z

    if-eqz v6, :cond_3

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v4, "week_start"

    iget v5, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFirstDayOfWeek:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v4, "num_days"

    iget v5, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mDaysPerWeek:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v4, "week"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v4, "focus_month"

    iget v5, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFocusMonth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v4, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v4, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/android/calendar/month/SimpleWeekView;->setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 245
    return-object v3

    .line 215
    .end local v2           #selectedDay:I
    .end local v3           #v:Lcom/android/calendar/month/SimpleWeekView;
    :cond_2
    new-instance v3, Lcom/android/calendar/month/SimpleWeekView;

    iget-object v5, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/calendar/month/SimpleWeekView;-><init>(Landroid/content/Context;)V

    .line 217
    .restart local v3       #v:Lcom/android/calendar/month/SimpleWeekView;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 219
    .local v1, params:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 221
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0

    .line 237
    .end local v1           #params:Landroid/widget/AbsListView$LayoutParams;
    .restart local v2       #selectedDay:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 121
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/calendar/month/SimpleWeeksAdapter$CalendarGestureListener;

    invoke-direct {v2, p0}, Lcom/android/calendar/month/SimpleWeeksAdapter$CalendarGestureListener;-><init>(Lcom/android/calendar/month/SimpleWeeksAdapter;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    .line 122
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    .line 123
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 124
    return-void
.end method

.method protected onDayTapped(Landroid/text/format/Time;)V
    .locals 1
    .parameter "day"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iput v0, p1, Landroid/text/format/Time;->hour:I

    .line 281
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    iput v0, p1, Landroid/text/format/Time;->minute:I

    .line 282
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    iput v0, p1, Landroid/text/format/Time;->second:I

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 284
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 260
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 261
    check-cast v1, Lcom/android/calendar/month/SimpleWeekView;

    .line 262
    .local v1, view:Lcom/android/calendar/month/SimpleWeekView;
    check-cast p1, Lcom/android/calendar/month/SimpleWeekView;

    .end local p1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/calendar/month/SimpleWeekView;->getDayFromLocation(F)Landroid/text/format/Time;

    move-result-object v0

    .line 263
    .local v0, day:Landroid/text/format/Time;
    const-string v2, "MonthByWeek"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    const-string v2, "MonthByWeek"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touched day at Row="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/calendar/month/SimpleWeekView;->mWeek:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " day="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->onDayTapped(Landroid/text/format/Time;)V

    .line 269
    :cond_1
    const/4 v2, 0x1

    .line 271
    .end local v0           #day:Landroid/text/format/Time;
    .end local v1           #view:Lcom/android/calendar/month/SimpleWeekView;
    :goto_0
    return v2

    .restart local p1
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected refresh()V
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 188
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 0
    .parameter "lv"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mListView:Landroid/widget/ListView;

    .line 302
    return-void
.end method

.method public setSelectedDay(Landroid/text/format/Time;)V
    .locals 4
    .parameter "selectedTime"

    .prologue
    .line 167
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 168
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 169
    .local v0, millis:J
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iget v3, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFirstDayOfWeek:I

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedWeek:I

    .line 171
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 172
    return-void
.end method

.method public updateFocusMonth(I)V
    .locals 0
    .parameter "month"

    .prologue
    .line 254
    iput p1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFocusMonth:I

    .line 255
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 256
    return-void
.end method

.method public updateParams(Ljava/util/HashMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 134
    const-string v1, "MonthByWeek"

    const-string v2, "WeekParameters are null! Cannot update adapter."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    return-void

    .line 137
    :cond_0
    const-string v1, "focus_month"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const-string v1, "focus_month"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFocusMonth:I

    .line 140
    :cond_1
    const-string v1, "focus_month"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    const-string v1, "num_weeks"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mNumWeeks:I

    .line 143
    :cond_2
    const-string v1, "week_numbers"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    const-string v1, "week_numbers"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mShowWeekNumber:Z

    .line 146
    :cond_3
    const-string v1, "week_start"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    const-string v1, "week_start"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFirstDayOfWeek:I

    .line 149
    :cond_4
    const-string v1, "selected_day"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 150
    const-string v1, "selected_day"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 152
    .local v0, julianDay:I
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    invoke-static {v1, v0}, Lcom/android/calendar/Utils;->setJulianDayInGeneral(Landroid/text/format/Time;I)J

    .line 153
    iget v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFirstDayOfWeek:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedWeek:I

    .line 155
    .end local v0           #julianDay:I
    :cond_5
    const-string v1, "days_per_week"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 156
    const-string v1, "days_per_week"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mDaysPerWeek:I

    .line 158
    :cond_6
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->refresh()V

    goto/16 :goto_0

    .line 144
    :cond_7
    const/4 v1, 0x0

    goto :goto_1
.end method
