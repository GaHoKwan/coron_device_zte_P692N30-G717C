.class public Lcom/mediatek/schpwronoff/SetAlarm;
.super Landroid/preference/PreferenceActivity;
.source "SetAlarm.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# static fields
.field private static final MENU_REVET:I = 0x1

.field private static final MENU_SAVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SetAlarm"


# instance fields
.field private mEnabled:Z

.field private mHour:I

.field private mId:I

.field private mMinutes:I

.field private mPrevTitle:Ljava/lang/String;

.field private mRepeatPref:Lcom/mediatek/schpwronoff/RepeatPreference;

.field private mTestAlarmItem:Landroid/view/MenuItem;

.field private mTimePref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static formatToast(Landroid/content/Context;IILcom/mediatek/schpwronoff/Alarm$DaysOfWeek;I)Ljava/lang/String;
    .locals 30
    .parameter "context"
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"
    .parameter "id"

    .prologue
    .line 183
    invoke-static/range {p1 .. p3}, Lcom/mediatek/schpwronoff/Alarms;->calculateAlarm(IILcom/mediatek/schpwronoff/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 184
    .local v3, alarm:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v9, v3, v26

    .line 186
    .local v9, delta:J
    const/16 v20, 0x3e8

    .line 187
    .local v20, millisUnit:I
    const/16 v25, 0x3c

    .line 188
    .local v25, timeUnit:I
    const/16 v5, 0x18

    .line 190
    .local v5, dayOfHoursUnit:I
    const-wide/32 v26, 0x36ee80

    div-long v17, v9, v26

    .line 191
    .local v17, hours:J
    const-wide/32 v26, 0xea60

    div-long v26, v9, v26

    const-wide/16 v28, 0x3c

    rem-long v22, v26, v28

    .line 192
    .local v22, minutes:J
    const-wide/16 v26, 0x18

    div-long v7, v17, v26

    .line 193
    .local v7, days:J
    const-wide/16 v26, 0x18

    rem-long v17, v17, v26

    .line 195
    const-wide/16 v26, 0x0

    cmp-long v26, v7, v26

    if-nez v26, :cond_1

    const-string v6, ""

    .line 198
    .local v6, daySeq:Ljava/lang/String;
    :goto_0
    const-wide/16 v26, 0x0

    cmp-long v26, v22, v26

    if-nez v26, :cond_3

    const-string v21, ""

    .line 201
    .local v21, minSeq:Ljava/lang/String;
    :goto_1
    const-wide/16 v26, 0x0

    cmp-long v26, v17, v26

    if-nez v26, :cond_5

    const-string v16, ""

    .line 204
    .local v16, hourSeq:Ljava/lang/String;
    :goto_2
    const-wide/16 v26, 0x0

    cmp-long v26, v7, v26

    if-lez v26, :cond_7

    const/4 v11, 0x1

    .line 205
    .local v11, dispDays:Z
    :goto_3
    const-wide/16 v26, 0x0

    cmp-long v26, v17, v26

    if-lez v26, :cond_8

    const/4 v12, 0x1

    .line 206
    .local v12, dispHour:Z
    :goto_4
    const-wide/16 v26, 0x0

    cmp-long v26, v22, v26

    if-lez v26, :cond_9

    const/4 v13, 0x1

    .line 208
    .local v13, dispMinute:Z
    :goto_5
    const/4 v14, 0x4

    .line 209
    .local v14, dispMinutesOffset:I
    const/16 v24, 0x8

    .line 211
    .local v24, pwrOnOFFStringOffset:I
    if-eqz v11, :cond_a

    const/16 v26, 0x1

    move/from16 v27, v26

    :goto_6
    if-eqz v12, :cond_b

    const/16 v26, 0x2

    :goto_7
    or-int v27, v27, v26

    if-eqz v13, :cond_c

    const/16 v26, 0x4

    :goto_8
    or-int v19, v27, v26

    .line 213
    .local v19, index:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const/high16 v27, 0x7f08

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 214
    .local v15, formats:[Ljava/lang/String;
    const/16 v26, 0x2

    move/from16 v0, p4

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 215
    add-int/lit8 v19, v19, 0x8

    .line 217
    :cond_0
    aget-object v26, v15, v19

    const/16 v27, 0x3

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v6, v27, v28

    const/16 v28, 0x1

    aput-object v16, v27, v28

    const/16 v28, 0x2

    aput-object v21, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    return-object v26

    .line 195
    .end local v6           #daySeq:Ljava/lang/String;
    .end local v11           #dispDays:Z
    .end local v12           #dispHour:Z
    .end local v13           #dispMinute:Z
    .end local v14           #dispMinutesOffset:I
    .end local v15           #formats:[Ljava/lang/String;
    .end local v16           #hourSeq:Ljava/lang/String;
    .end local v19           #index:I
    .end local v21           #minSeq:Ljava/lang/String;
    .end local v24           #pwrOnOFFStringOffset:I
    :cond_1
    const-wide/16 v26, 0x1

    cmp-long v26, v7, v26

    if-nez v26, :cond_2

    const v26, 0x7f070008

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    const v26, 0x7f070009

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 198
    .restart local v6       #daySeq:Ljava/lang/String;
    :cond_3
    const-wide/16 v26, 0x1

    cmp-long v26, v22, v26

    if-nez v26, :cond_4

    const v26, 0x7f07000c

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1

    :cond_4
    const v26, 0x7f07000d

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1

    .line 201
    .restart local v21       #minSeq:Ljava/lang/String;
    :cond_5
    const-wide/16 v26, 0x1

    cmp-long v26, v17, v26

    if-nez v26, :cond_6

    const v26, 0x7f07000a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    :cond_6
    const v26, 0x7f07000b

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 204
    .restart local v16       #hourSeq:Ljava/lang/String;
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 205
    .restart local v11       #dispDays:Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 206
    .restart local v12       #dispHour:Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 211
    .restart local v13       #dispMinute:Z
    .restart local v14       #dispMinutesOffset:I
    .restart local v24       #pwrOnOFFStringOffset:I
    :cond_a
    const/16 v26, 0x0

    move/from16 v27, v26

    goto/16 :goto_6

    :cond_b
    const/16 v26, 0x0

    goto/16 :goto_7

    :cond_c
    const/16 v26, 0x0

    goto/16 :goto_8
.end method

.method static popAlarmSetToast(Landroid/content/Context;IILcom/mediatek/schpwronoff/Alarm$DaysOfWeek;I)V
    .locals 4
    .parameter "context"
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"
    .parameter "mId"

    .prologue
    .line 174
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/schpwronoff/SetAlarm;->formatToast(Landroid/content/Context;IILcom/mediatek/schpwronoff/Alarm$DaysOfWeek;I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, toastText:Ljava/lang/String;
    const-string v1, "SetAlarm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toast text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 177
    return-void
.end method

.method private saveAlarm()V
    .locals 10

    .prologue
    .line 161
    const-string v9, "silent"

    .line 162
    .local v9, alert:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mEnabled:Z

    iget-object v1, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mRepeatPref:Lcom/mediatek/schpwronoff/RepeatPreference;

    iget-boolean v1, v1, Lcom/mediatek/schpwronoff/RepeatPreference;->mIsPressedPositive:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mEnabled:Z

    .line 163
    iget v1, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mId:I

    iget-boolean v2, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mEnabled:Z

    iget v3, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mHour:I

    iget v4, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mMinutes:I

    iget-object v0, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mRepeatPref:Lcom/mediatek/schpwronoff/RepeatPreference;

    invoke-virtual {v0}, Lcom/mediatek/schpwronoff/RepeatPreference;->getDaysOfWeek()Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, ""

    const-string v8, "silent"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/mediatek/schpwronoff/Alarms;->setAlarm(Landroid/content/Context;IZIILcom/mediatek/schpwronoff/Alarm$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-boolean v0, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mHour:I

    iget v2, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mMinutes:I

    iget-object v3, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mRepeatPref:Lcom/mediatek/schpwronoff/RepeatPreference;

    invoke-virtual {v3}, Lcom/mediatek/schpwronoff/RepeatPreference;->getDaysOfWeek()Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mId:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mediatek/schpwronoff/SetAlarm;->popAlarmSetToast(Landroid/content/Context;IILcom/mediatek/schpwronoff/Alarm$DaysOfWeek;I)V

    .line 168
    :cond_0
    return-void
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 156
    const-string v0, "SetAlarm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mTimePref:Landroid/preference/Preference;

    iget v1, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mHour:I

    iget v2, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mMinutes:I

    iget-object v3, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mRepeatPref:Lcom/mediatek/schpwronoff/RepeatPreference;

    invoke-virtual {v3}, Lcom/mediatek/schpwronoff/RepeatPreference;->getDaysOfWeek()Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/mediatek/schpwronoff/Alarms;->formatTime(Landroid/content/Context;IILcom/mediatek/schpwronoff/Alarm$DaysOfWeek;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const/high16 v2, 0x7f05

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 83
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 84
    .local v1, view:Landroid/preference/PreferenceScreen;
    const-string v2, "time"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mTimePref:Landroid/preference/Preference;

    .line 85
    const-string v2, "setRepeat"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/schpwronoff/RepeatPreference;

    iput-object v2, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mRepeatPref:Lcom/mediatek/schpwronoff/RepeatPreference;

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "alarm_id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mId:I

    .line 88
    const-string v2, "SetAlarm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate bundle extra is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mPrevTitle:Ljava/lang/String;

    .line 91
    iget v2, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 92
    const v2, 0x7f070004

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 96
    :goto_0
    const-string v2, "SetAlarm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In SetAlarm, alarm id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mId:I

    invoke-static {v2, v3}, Lcom/mediatek/schpwronoff/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/mediatek/schpwronoff/Alarm;

    move-result-object v0

    .line 100
    .local v0, alarm:Lcom/mediatek/schpwronoff/Alarm;
    if-eqz v0, :cond_0

    .line 101
    iget-boolean v2, v0, Lcom/mediatek/schpwronoff/Alarm;->mEnabled:Z

    iput-boolean v2, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mEnabled:Z

    .line 102
    iget v2, v0, Lcom/mediatek/schpwronoff/Alarm;->mHour:I

    iput v2, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mHour:I

    .line 103
    iget v2, v0, Lcom/mediatek/schpwronoff/Alarm;->mMinutes:I

    iput v2, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mMinutes:I

    .line 104
    iget-object v2, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mRepeatPref:Lcom/mediatek/schpwronoff/RepeatPreference;

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mRepeatPref:Lcom/mediatek/schpwronoff/RepeatPreference;

    iget-object v3, v0, Lcom/mediatek/schpwronoff/Alarm;->mDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {v2, v3}, Lcom/mediatek/schpwronoff/RepeatPreference;->setDaysOfWeek(Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;)V

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/schpwronoff/SetAlarm;->updateTime()V

    .line 110
    return-void

    .line 94
    .end local v0           #alarm:Lcom/mediatek/schpwronoff/Alarm;
    :cond_1
    const v2, 0x7f070005

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 123
    const v0, 0x7f070012

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 125
    const/4 v0, 0x2

    const v1, 0x7f070011

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 131
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 133
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 136
    :pswitch_1
    const-string v1, "SetAlarm"

    const-string v2, "option save menu"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/mediatek/schpwronoff/SetAlarm;->saveAlarm()V

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 115
    new-instance v0, Landroid/app/TimePickerDialog;

    iget v3, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mHour:I

    iget v4, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mMinutes:I

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 118
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 148
    iput p2, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mHour:I

    .line 149
    iput p3, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mMinutes:I

    .line 150
    invoke-direct {p0}, Lcom/mediatek/schpwronoff/SetAlarm;->updateTime()V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/schpwronoff/SetAlarm;->mEnabled:Z

    .line 153
    return-void
.end method
