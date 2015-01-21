.class public Lcom/android/deskclock/SetAlarm;
.super Landroid/preference/PreferenceActivity;
.source "SetAlarm.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/deskclock/AlarmTimePickerDialogFragment$AlarmTimePickerDialogHandler;


# static fields
.field private static final KEY_CURRENT_ALARM:Ljava/lang/String; = "currentAlarm"

.field private static final KEY_NEW_REPEAT_TIME:Ljava/lang/String; = "newRepeatTime"

.field private static final KEY_ORIGINAL_ALARM:Ljava/lang/String; = "originalAlarm"

.field private static final KEY_TIME_PICKER_BUNDLE:Ljava/lang/String; = "timePickerBundle"

.field public static final TAG:Ljava/lang/String; = "SetAlarm"

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private mAlarmPref:Lcom/android/deskclock/AlarmPreference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEnabledPref:Landroid/preference/CheckBoxPreference;

.field private mHour:I

.field private mId:I

.field private mLabel:Landroid/widget/EditText;

.field private mMinute:I

.field private mOriginalAlarm:Lcom/android/deskclock/Alarm;

.field private mRepeatPref:Landroid/preference/Preference;

.field private final mSetAlarmObserver:Landroid/database/ContentObserver;

.field private mTimePref:Landroid/preference/Preference;

.field private mVibratePref:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/deskclock/SetAlarm;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 176
    new-instance v0, Lcom/android/deskclock/SetAlarm$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/SetAlarm$5;-><init>(Lcom/android/deskclock/SetAlarm;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/deskclock/SetAlarm;->mSetAlarmObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/SetAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->saveAndExit()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/SetAlarm;Lcom/android/deskclock/Alarm;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/deskclock/SetAlarm;->saveAlarm(Lcom/android/deskclock/Alarm;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/SetAlarm;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/SetAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->revert()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/deskclock/SetAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->deleteAlarm()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/deskclock/SetAlarm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/deskclock/SetAlarm;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private buildAlarmFromUi()Lcom/android/deskclock/Alarm;
    .locals 3

    .prologue
    .line 336
    new-instance v0, Lcom/android/deskclock/Alarm;

    invoke-direct {v0}, Lcom/android/deskclock/Alarm;-><init>()V

    .line 337
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    iget v1, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    iput v1, v0, Lcom/android/deskclock/Alarm;->id:I

    .line 338
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/deskclock/Alarm;->enabled:Z

    .line 339
    iget v1, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    iput v1, v0, Lcom/android/deskclock/Alarm;->hour:I

    .line 340
    iget v1, p0, Lcom/android/deskclock/SetAlarm;->mMinute:I

    iput v1, v0, Lcom/android/deskclock/Alarm;->minutes:I

    .line 341
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Landroid/preference/Preference;

    check-cast v1, Lcom/android/deskclock/RepeatPreference;

    invoke-virtual {v1}, Lcom/android/deskclock/RepeatPreference;->getDaysOfWeek()Lcom/android/deskclock/Alarm$DaysOfWeek;

    move-result-object v1

    iput-object v1, v0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    .line 342
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/deskclock/Alarm;->vibrate:Z

    .line 343
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    .line 344
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    invoke-virtual {v1}, Lcom/android/deskclock/AlarmPreference;->getAlert()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildAlarmFromUi alarm alert = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 346
    return-object v0
.end method

.method private deleteAlarm()V
    .locals 3

    .prologue
    .line 350
    iget v0, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 352
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 367
    :goto_0
    return-void

    .line 354
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0012

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0015

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/deskclock/SetAlarm$7;

    invoke-direct {v2, p0}, Lcom/android/deskclock/SetAlarm$7;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method static formatToast(Landroid/content/Context;J)Ljava/lang/String;
    .locals 23
    .parameter "context"
    .parameter "timeInMillis"

    .prologue
    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v6, p1, v19

    .line 388
    .local v6, delta:J
    const-wide/32 v19, 0x36ee80

    div-long v13, v6, v19

    .line 389
    .local v13, hours:J
    const-wide/32 v19, 0xea60

    div-long v19, v6, v19

    const-wide/16 v21, 0x3c

    rem-long v17, v19, v21

    .line 390
    .local v17, minutes:J
    const-wide/16 v19, 0x18

    div-long v4, v13, v19

    .line 391
    .local v4, days:J
    const-wide/16 v19, 0x18

    rem-long v13, v13, v19

    .line 393
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-nez v19, :cond_0

    const-string v3, ""

    .line 397
    .local v3, daySeq:Ljava/lang/String;
    :goto_0
    const-wide/16 v19, 0x0

    cmp-long v19, v17, v19

    if-nez v19, :cond_2

    const-string v16, ""

    .line 401
    .local v16, minSeq:Ljava/lang/String;
    :goto_1
    const-wide/16 v19, 0x0

    cmp-long v19, v13, v19

    if-nez v19, :cond_4

    const-string v12, ""

    .line 405
    .local v12, hourSeq:Ljava/lang/String;
    :goto_2
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-lez v19, :cond_6

    const/4 v8, 0x1

    .line 406
    .local v8, dispDays:Z
    :goto_3
    const-wide/16 v19, 0x0

    cmp-long v19, v13, v19

    if-lez v19, :cond_7

    const/4 v9, 0x1

    .line 407
    .local v9, dispHour:Z
    :goto_4
    const-wide/16 v19, 0x0

    cmp-long v19, v17, v19

    if-lez v19, :cond_8

    const/4 v10, 0x1

    .line 409
    .local v10, dispMinute:Z
    :goto_5
    if-eqz v8, :cond_9

    const/16 v19, 0x1

    move/from16 v20, v19

    :goto_6
    if-eqz v9, :cond_a

    const/16 v19, 0x2

    :goto_7
    or-int v20, v20, v19

    if-eqz v10, :cond_b

    const/16 v19, 0x4

    :goto_8
    or-int v15, v20, v19

    .line 413
    .local v15, index:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a000a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 414
    .local v11, formats:[Ljava/lang/String;
    aget-object v19, v11, v15

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v3, v20, v21

    const/16 v21, 0x1

    aput-object v12, v20, v21

    const/16 v21, 0x2

    aput-object v16, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 393
    .end local v3           #daySeq:Ljava/lang/String;
    .end local v8           #dispDays:Z
    .end local v9           #dispHour:Z
    .end local v10           #dispMinute:Z
    .end local v11           #formats:[Ljava/lang/String;
    .end local v12           #hourSeq:Ljava/lang/String;
    .end local v15           #index:I
    .end local v16           #minSeq:Ljava/lang/String;
    :cond_0
    const-wide/16 v19, 0x1

    cmp-long v19, v4, v19

    if-nez v19, :cond_1

    const v19, 0x7f0d0025

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const v19, 0x7f0d0026

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 397
    .restart local v3       #daySeq:Ljava/lang/String;
    :cond_2
    const-wide/16 v19, 0x1

    cmp-long v19, v17, v19

    if-nez v19, :cond_3

    const v19, 0x7f0d0029

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_3
    const v19, 0x7f0d002a

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 401
    .restart local v16       #minSeq:Ljava/lang/String;
    :cond_4
    const-wide/16 v19, 0x1

    cmp-long v19, v13, v19

    if-nez v19, :cond_5

    const v19, 0x7f0d0027

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    :cond_5
    const v19, 0x7f0d0028

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 405
    .restart local v12       #hourSeq:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 406
    .restart local v8       #dispDays:Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 407
    .restart local v9       #dispHour:Z
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 409
    .restart local v10       #dispMinute:Z
    :cond_9
    const/16 v19, 0x0

    move/from16 v20, v19

    goto/16 :goto_6

    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_7

    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_8
.end method

.method private revert()V
    .locals 3

    .prologue
    .line 309
    iget v0, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    .line 311
    .local v0, newId:I
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    iget v1, v1, Lcom/android/deskclock/Alarm;->id:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 312
    invoke-static {p0, v0}, Lcom/android/deskclock/Alarms;->deleteAlarm(Landroid/content/Context;I)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    invoke-direct {p0, v1}, Lcom/android/deskclock/SetAlarm;->saveAlarm(Lcom/android/deskclock/Alarm;)J

    goto :goto_0
.end method

.method private saveAlarm(Lcom/android/deskclock/Alarm;)J
    .locals 4
    .parameter "alarm"

    .prologue
    .line 319
    if-nez p1, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->buildAlarmFromUi()Lcom/android/deskclock/Alarm;

    move-result-object p1

    .line 324
    :cond_0
    iget v2, p1, Lcom/android/deskclock/Alarm;->id:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 325
    invoke-static {p0, p1}, Lcom/android/deskclock/Alarms;->addAlarm(Landroid/content/Context;Lcom/android/deskclock/Alarm;)J

    move-result-wide v0

    .line 328
    .local v0, time:J
    iget v2, p1, Lcom/android/deskclock/Alarm;->id:I

    iput v2, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    .line 332
    :goto_0
    return-wide v0

    .line 330
    .end local v0           #time:J
    :cond_1
    invoke-static {p0, p1}, Lcom/android/deskclock/Alarms;->setAlarm(Landroid/content/Context;Lcom/android/deskclock/Alarm;)J

    move-result-wide v0

    .restart local v0       #time:J
    goto :goto_0
.end method

.method private saveAndExit()V
    .locals 3

    .prologue
    .line 375
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/deskclock/SetAlarm;->saveAlarm(Lcom/android/deskclock/Alarm;)J

    move-result-wide v0

    .line 376
    .local v0, time:J
    iget-object v2, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    invoke-static {p0, v0, v1}, Lcom/android/deskclock/AlarmUtils;->popAlarmSetToast(Landroid/content/Context;J)V

    .line 379
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 380
    return-void
.end method

.method private showTimePicker()V
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmUtils;->showTimeEditDialog(Landroid/app/FragmentManager;Lcom/android/deskclock/Alarm;)V

    .line 292
    return-void
.end method

.method private updatePrefs(Lcom/android/deskclock/Alarm;)V
    .locals 2
    .parameter "alarm"

    .prologue
    .line 262
    iget v0, p1, Lcom/android/deskclock/Alarm;->id:I

    iput v0, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    .line 263
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p1, Lcom/android/deskclock/Alarm;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget v0, p1, Lcom/android/deskclock/Alarm;->hour:I

    iput v0, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    .line 266
    iget v0, p1, Lcom/android/deskclock/Alarm;->minutes:I

    iput v0, p0, Lcom/android/deskclock/SetAlarm;->mMinute:I

    .line 267
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Landroid/preference/Preference;

    check-cast v0, Lcom/android/deskclock/RepeatPreference;

    iget-object v1, p1, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/RepeatPreference;->setDaysOfWeek(Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 269
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p1, Lcom/android/deskclock/Alarm;->vibrate:Z

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 271
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    iget-object v1, p1, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/AlarmPreference;->setAlert(Landroid/net/Uri;)V

    .line 272
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->updateTime()V

    .line 273
    return-void
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 305
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mTimePref:Landroid/preference/Preference;

    iget v2, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    iget v3, p0, Lcom/android/deskclock/SetAlarm;->mMinute:I

    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Landroid/preference/Preference;

    check-cast v0, Lcom/android/deskclock/RepeatPreference;

    invoke-virtual {v0}, Lcom/android/deskclock/RepeatPreference;->getDaysOfWeek()Lcom/android/deskclock/Alarm$DaysOfWeek;

    move-result-object v0

    invoke-static {p0, v2, v3, v0}, Lcom/android/deskclock/Alarms;->formatTime(Landroid/content/Context;IILcom/android/deskclock/Alarm$DaysOfWeek;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 288
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16
    .parameter "icicle"

    .prologue
    .line 74
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v12, 0x7f04001e

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Activity;->setContentView(I)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f040006

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 80
    .local v7, label:Landroid/widget/EditText;
    const v12, 0x102000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 81
    .local v8, list:Landroid/widget/ListView;
    invoke-virtual {v8, v7}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 85
    const/high16 v12, 0x7f06

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/deskclock/SetAlarm;->mContentResolver:Landroid/content/ContentResolver;

    .line 88
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/SetAlarm;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v13, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/SetAlarm;->mSetAlarmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 92
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/widget/EditText;

    .line 93
    const-string v12, "enabled"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    .line 94
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    const-string v12, "time"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/deskclock/SetAlarm;->mTimePref:Landroid/preference/Preference;

    .line 96
    const-string v12, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/android/deskclock/AlarmPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    .line 97
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    const-string v12, "vibrate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    .line 99
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    const-string v12, "vibrator"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Vibrator;

    .line 101
    .local v11, v:Landroid/os/Vibrator;
    invoke-virtual {v11}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v12

    if-nez v12, :cond_0

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 104
    :cond_0
    const-string v12, "setRepeat"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/android/deskclock/RepeatPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Landroid/preference/Preference;

    .line 105
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 108
    .local v5, i:Landroid/content/Intent;
    const-string v12, "intent.extra.alarm"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/Alarm;

    .line 110
    .local v2, alarm:Lcom/android/deskclock/Alarm;
    if-nez v2, :cond_1

    .line 112
    new-instance v2, Lcom/android/deskclock/Alarm;

    .end local v2           #alarm:Lcom/android/deskclock/Alarm;
    invoke-direct {v2}, Lcom/android/deskclock/Alarm;-><init>()V

    .line 114
    .restart local v2       #alarm:Lcom/android/deskclock/Alarm;
    :cond_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    .line 118
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/deskclock/SetAlarm;->updatePrefs(Lcom/android/deskclock/Alarm;)V

    .line 119
    const-string v12, "SetAlarm"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onCreate: icicle = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",this = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 125
    .local v1, actionBar:Landroid/app/ActionBar;
    if-eqz v1, :cond_2

    .line 126
    const/4 v12, 0x0

    const/16 v13, 0xa

    invoke-virtual {v1, v12, v13}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 128
    const-string v12, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 130
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v12, 0x7f04001f

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 131
    .local v4, customActionBarView:Landroid/view/View;
    const/16 v12, 0x10

    const/16 v13, 0x1a

    invoke-virtual {v1, v12, v13}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 134
    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 135
    const v12, 0x7f0e005d

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 136
    .local v10, saveMenuItem:Landroid/view/View;
    new-instance v12, Lcom/android/deskclock/SetAlarm$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/deskclock/SetAlarm$1;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v10, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    .end local v4           #customActionBarView:Landroid/view/View;
    .end local v6           #inflater:Landroid/view/LayoutInflater;
    .end local v10           #saveMenuItem:Landroid/view/View;
    :goto_0
    return-void

    .line 144
    :cond_2
    const v12, 0x7f0e005c

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 145
    .local v3, b:Landroid/widget/Button;
    new-instance v12, Lcom/android/deskclock/SetAlarm$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/deskclock/SetAlarm$2;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v3, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v12, 0x7f0e005a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 155
    .local v9, revert:Landroid/widget/Button;
    new-instance v12, Lcom/android/deskclock/SetAlarm$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/deskclock/SetAlarm$3;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v9, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v12, 0x7f0e005b

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #b:Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 162
    .restart local v3       #b:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/deskclock/SetAlarm;->mId:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    .line 163
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 164
    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 166
    :cond_3
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 167
    new-instance v12, Lcom/android/deskclock/SetAlarm$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/deskclock/SetAlarm$4;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v3, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public onDialogTimeSet(Lcom/android/deskclock/Alarm;II)V
    .locals 2
    .parameter "alarm"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 297
    iput p2, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    .line 298
    iput p3, p0, Lcom/android/deskclock/SetAlarm;->mMinute:I

    .line 299
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->updateTime()V

    .line 301
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 302
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v1, 0x1

    .line 425
    const/16 v2, 0x19

    if-ne p1, v2, :cond_0

    .line 426
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 427
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 437
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_0
    return v1

    .line 430
    :cond_0
    const/16 v2, 0x18

    if-ne p1, v2, :cond_1

    .line 431
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 432
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v3, v1, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .line 437
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e00af

    if-ne v0, v1, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->deleteAlarm()V

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 419
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 420
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mSetAlarmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 421
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "p"
    .parameter "newValue"

    .prologue
    .line 250
    sget-object v0, Lcom/android/deskclock/SetAlarm;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/deskclock/SetAlarm$6;

    invoke-direct {v1, p0, p1}, Lcom/android/deskclock/SetAlarm$6;-><init>(Lcom/android/deskclock/SetAlarm;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->showTimePicker()V

    .line 282
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 226
    const-string v3, "originalAlarm"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    .line 227
    .local v0, alarmFromBundle:Lcom/android/deskclock/Alarm;
    if-eqz v0, :cond_0

    .line 228
    iput-object v0, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    .line 231
    :cond_0
    const-string v3, "currentAlarm"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0           #alarmFromBundle:Lcom/android/deskclock/Alarm;
    check-cast v0, Lcom/android/deskclock/Alarm;

    .line 232
    .restart local v0       #alarmFromBundle:Lcom/android/deskclock/Alarm;
    if-eqz v0, :cond_1

    .line 233
    invoke-direct {p0, v0}, Lcom/android/deskclock/SetAlarm;->updatePrefs(Lcom/android/deskclock/Alarm;)V

    .line 235
    :cond_1
    const-string v3, "newRepeatTime"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 236
    .local v2, repeatCode:I
    iget-object v3, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Landroid/preference/Preference;

    check-cast v3, Lcom/android/deskclock/RepeatPreference;

    new-instance v4, Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-direct {v4, v2}, Lcom/android/deskclock/Alarm$DaysOfWeek;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/deskclock/RepeatPreference;->setNewDaysOfWeek(Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 238
    const-string v3, "timePickerBundle"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 239
    .local v1, b:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 240
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->showTimePicker()V

    .line 242
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 215
    const-string v0, "originalAlarm"

    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 216
    const-string v0, "currentAlarm"

    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->buildAlarmFromUi()Lcom/android/deskclock/Alarm;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 217
    const-string v1, "newRepeatTime"

    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Landroid/preference/Preference;

    check-cast v0, Lcom/android/deskclock/RepeatPreference;

    invoke-virtual {v0}, Lcom/android/deskclock/RepeatPreference;->getNewDaysOfWeek()Lcom/android/deskclock/Alarm$DaysOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    const-string v0, "SetAlarm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState:mRepeatPref = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",outState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method
