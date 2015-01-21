.class public Lcom/android/deskclock/DigitalClock;
.super Landroid/widget/LinearLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/DigitalClock$FormatChangeObserver;,
        Lcom/android/deskclock/DigitalClock$AmPm;
    }
.end annotation


# static fields
.field private static final HOURS:Ljava/lang/String; = "h"

.field private static final HOURS_24:Ljava/lang/String; = "kk"

.field private static final MINUTES:Ljava/lang/String; = ":mm"

.field private static sRobotoThin:Landroid/graphics/Typeface;


# instance fields
.field private mAmPm:Lcom/android/deskclock/DigitalClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHoursFormat:Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mTimeDisplayHours:Landroid/widget/TextView;

.field private mTimeDisplayMinutes:Landroid/widget/TextView;

.field private mTimeZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/DigitalClock;->mLive:Z

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/android/deskclock/DigitalClock$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/DigitalClock$1;-><init>(Lcom/android/deskclock/DigitalClock;)V

    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    sget-object v0, Lcom/android/deskclock/DigitalClock;->sRobotoThin:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Thin.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/DigitalClock;->sRobotoThin:Landroid/graphics/Typeface;

    .line 120
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/DigitalClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/deskclock/DigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/deskclock/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/deskclock/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/deskclock/DigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/DigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/deskclock/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/deskclock/DigitalClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk"

    :goto_0
    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mHoursFormat:Ljava/lang/String;

    .line 218
    iget-object v1, p0, Lcom/android/deskclock/DigitalClock;->mAmPm:Lcom/android/deskclock/DigitalClock$AmPm;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/deskclock/DigitalClock$AmPm;->setShowAmPm(Z)V

    .line 219
    return-void

    .line 217
    :cond_0
    const-string v0, "h"

    goto :goto_0

    .line 218
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateTime()V
    .locals 6

    .prologue
    .line 191
    iget-boolean v3, p0, Lcom/android/deskclock/DigitalClock;->mLive:Z

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 194
    :cond_0
    iget-object v3, p0, Lcom/android/deskclock/DigitalClock;->mTimeZoneId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 195
    iget-object v3, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/android/deskclock/DigitalClock;->mTimeZoneId:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 198
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v0, fullTimeStr:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/deskclock/DigitalClock;->mHoursFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 200
    .local v2, newTime:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/deskclock/DigitalClock;->mTimeDisplayHours:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 202
    const-string v3, ":mm"

    iget-object v4, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v3, p0, Lcom/android/deskclock/DigitalClock;->mTimeDisplayMinutes:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v3, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x1

    .line 207
    .local v1, isMorning:Z
    :goto_0
    iget-object v3, p0, Lcom/android/deskclock/DigitalClock;->mAmPm:Lcom/android/deskclock/DigitalClock$AmPm;

    invoke-virtual {v3, v1}, Lcom/android/deskclock/DigitalClock$AmPm;->setIsMorning(Z)V

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/deskclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 209
    iget-object v3, p0, Lcom/android/deskclock/DigitalClock;->mAmPm:Lcom/android/deskclock/DigitalClock$AmPm;

    invoke-virtual {v3}, Lcom/android/deskclock/DigitalClock$AmPm;->getAmPmText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 213
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 214
    return-void

    .line 206
    .end local v1           #isMorning:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 137
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 139
    sget-boolean v1, Lcom/android/deskclock/Log;->LOGV:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-boolean v1, p0, Lcom/android/deskclock/DigitalClock;->mAttached:Z

    if-eqz v1, :cond_1

    .line 159
    :goto_0
    return-void

    .line 142
    :cond_1
    iput-boolean v4, p0, Lcom/android/deskclock/DigitalClock;->mAttached:Z

    .line 144
    iget-boolean v1, p0, Lcom/android/deskclock/DigitalClock;->mLive:Z

    if-eqz v1, :cond_2

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    new-instance v1, Lcom/android/deskclock/DigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/deskclock/DigitalClock$FormatChangeObserver;-><init>(Lcom/android/deskclock/DigitalClock;)V

    iput-object v1, p0, Lcom/android/deskclock/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/deskclock/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 158
    invoke-direct {p0}, Lcom/android/deskclock/DigitalClock;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 165
    iget-boolean v0, p0, Lcom/android/deskclock/DigitalClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/DigitalClock;->mAttached:Z

    .line 168
    iget-boolean v0, p0, Lcom/android/deskclock/DigitalClock;->mLive:Z

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 171
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 126
    const v0, 0x7f0e0009

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mTimeDisplayHours:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0e000a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mTimeDisplayMinutes:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/android/deskclock/DigitalClock;->mTimeDisplayMinutes:Landroid/widget/TextView;

    sget-object v1, Lcom/android/deskclock/DigitalClock;->sRobotoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    new-instance v0, Lcom/android/deskclock/DigitalClock$AmPm;

    invoke-direct {v0, p0}, Lcom/android/deskclock/DigitalClock$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mAmPm:Lcom/android/deskclock/DigitalClock$AmPm;

    .line 130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 132
    invoke-direct {p0}, Lcom/android/deskclock/DigitalClock;->setDateFormat()V

    .line 133
    return-void
.end method

.method setLive(Z)V
    .locals 0
    .parameter "live"

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/android/deskclock/DigitalClock;->mLive:Z

    .line 223
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/deskclock/DigitalClock;->mTimeZoneId:Ljava/lang/String;

    .line 227
    invoke-direct {p0}, Lcom/android/deskclock/DigitalClock;->updateTime()V

    .line 228
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 183
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 184
    .local v0, c:Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 185
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 186
    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 187
    invoke-direct {p0}, Lcom/android/deskclock/DigitalClock;->updateTime()V

    .line 188
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 178
    invoke-direct {p0}, Lcom/android/deskclock/DigitalClock;->updateTime()V

    .line 179
    return-void
.end method
