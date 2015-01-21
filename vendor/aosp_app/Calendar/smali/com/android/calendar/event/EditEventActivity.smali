.class public Lcom/android/calendar/event/EditEventActivity;
.super Lcom/android/calendar/AbstractCalendarActivity;
.source "EditEventActivity.java"


# static fields
.field private static final BUNDLE_KEY_EVENT_ID:Ljava/lang/String; = "key_event_id"

.field static final DATE_TIME_IDENTIFIER:Ljava/lang/String; = "date_time_identifier"

.field private static final DATE_TIME_TAG:Ljava/lang/String; = "EditEventActivity::date_time_debug_tag"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "EditEventActivity"

.field private static mIsMultipane:Z


# instance fields
.field private mDateTimeIdentifier:I

.field private mEditFragment:Lcom/android/calendar/event/EditEventFragment;

.field private mEventInfo:Lcom/android/calendar/CalendarController$EventInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/calendar/AbstractCalendarActivity;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/event/EditEventActivity;->mDateTimeIdentifier:I

    return-void
.end method

.method private getEventInfoFromIntent(Landroid/os/Bundle;)Lcom/android/calendar/CalendarController$EventInfo;
    .locals 14
    .parameter "icicle"

    .prologue
    const-wide/16 v12, -0x1

    .line 107
    new-instance v8, Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v8}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 108
    .local v8, info:Lcom/android/calendar/CalendarController$EventInfo;
    const-wide/16 v6, -0x1

    .line 109
    .local v6, eventId:J
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 110
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 111
    .local v3, data:Landroid/net/Uri;
    if-eqz v3, :cond_5

    .line 113
    :try_start_0
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 123
    :cond_0
    :goto_0
    const-string v10, "allDay"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 125
    .local v0, allDay:Z
    const-string v10, "beginTime"

    invoke-virtual {v9, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 126
    .local v1, begin:J
    const-string v10, "endTime"

    invoke-virtual {v9, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 127
    .local v4, end:J
    cmp-long v10, v4, v12

    if-eqz v10, :cond_2

    .line 128
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    iput-object v10, v8, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 129
    if-eqz v0, :cond_1

    .line 130
    iget-object v10, v8, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const-string v11, "UTC"

    iput-object v11, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 132
    :cond_1
    iget-object v10, v8, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v10, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 134
    :cond_2
    cmp-long v10, v1, v12

    if-eqz v10, :cond_4

    .line 135
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    iput-object v10, v8, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 136
    if-eqz v0, :cond_3

    .line 137
    iget-object v10, v8, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const-string v11, "UTC"

    iput-object v11, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 139
    :cond_3
    iget-object v10, v8, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v10, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 141
    :cond_4
    iput-wide v6, v8, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    .line 143
    if-eqz v0, :cond_6

    .line 144
    const-wide/16 v10, 0x10

    iput-wide v10, v8, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    .line 148
    :goto_1
    return-object v8

    .line 119
    .end local v0           #allDay:Z
    .end local v1           #begin:J
    .end local v4           #end:J
    :cond_5
    if-eqz p1, :cond_0

    const-string v10, "key_event_id"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 120
    const-string v10, "key_event_id"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    .line 146
    .restart local v0       #allDay:Z
    .restart local v1       #begin:J
    .restart local v4       #end:J
    :cond_6
    const-wide/16 v10, 0x0

    iput-wide v10, v8, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    goto :goto_1

    .line 114
    .end local v0           #allDay:Z
    .end local v1           #begin:J
    .end local v4           #end:J
    :catch_0
    move-exception v10

    goto :goto_0
.end method


# virtual methods
.method public getDateTimeOnDateSetListener()Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 3

    .prologue
    .line 182
    const-string v1, "EditEventActivity::date_time_debug_tag"

    const-string v2, "getDateTimeOnDateSetListener()"

    invoke-static {v1, v2}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v1}, Lcom/android/calendar/event/EditEventFragment;->getEditEventView()Lcom/android/calendar/event/EditEventView;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/event/EditEventActivity;->mDateTimeIdentifier:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/EditEventView;->getDateTimeView(I)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v1}, Lcom/android/calendar/event/EditEventFragment;->getEditEventView()Lcom/android/calendar/event/EditEventView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/EditEventView;->getOnDateSetListener(Landroid/view/View;)Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v1

    .line 191
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDateTimeOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;
    .locals 2

    .prologue
    .line 221
    const-string v0, "EditEventActivity::date_time_debug_tag"

    const-string v1, "getDateTimeOnDismissListener()"

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment;->getEditEventView()Lcom/android/calendar/event/EditEventView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventView;->getDateTimeOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeOnTimeSetListener()Landroid/app/TimePickerDialog$OnTimeSetListener;
    .locals 3

    .prologue
    .line 195
    const-string v1, "EditEventActivity::date_time_debug_tag"

    const-string v2, "getDateTimeOnTimeSetListener()"

    invoke-static {v1, v2}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v1}, Lcom/android/calendar/event/EditEventFragment;->getEditEventView()Lcom/android/calendar/event/EditEventView;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/event/EditEventActivity;->mDateTimeIdentifier:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/EditEventView;->getDateTimeView(I)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v1}, Lcom/android/calendar/event/EditEventFragment;->getEditEventView()Lcom/android/calendar/event/EditEventView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/EditEventView;->getDateTimeOnTimeSetListener(Landroid/view/View;)Landroid/app/TimePickerDialog$OnTimeSetListener;

    move-result-object v1

    .line 205
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAnyDialogShown()Z
    .locals 2

    .prologue
    .line 209
    const-string v0, "EditEventActivity::date_time_debug_tag"

    const-string v1, "isAnyDialogShown()"

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment;->getEditEventView()Lcom/android/calendar/event/EditEventView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventView;->isAnyDialogShown()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const-wide/16 v8, -0x1

    const v7, 0x7f1000c1

    const/4 v6, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v2, 0x7f040039

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 61
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EditEventActivity;->getEventInfoFromIntent(Landroid/os/Bundle;)Lcom/android/calendar/CalendarController$EventInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/EditEventActivity;->mEventInfo:Lcom/android/calendar/CalendarController$EventInfo;

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/event/EditEventFragment;

    iput-object v2, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    .line 65
    const v2, 0x7f090007

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v2

    sput-boolean v2, Lcom/android/calendar/event/EditEventActivity;->mIsMultipane:Z

    .line 67
    sget-boolean v2, Lcom/android/calendar/event/EditEventActivity;->mIsMultipane:Z

    if-eqz v2, :cond_4

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v3, 0x8

    const/16 v4, 0xe

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v2, p0, Lcom/android/calendar/event/EditEventActivity;->mEventInfo:Lcom/android/calendar/CalendarController$EventInfo;

    iget-wide v4, v2, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    cmp-long v2, v4, v8

    if-nez v2, :cond_3

    const v2, 0x7f0c0051

    :goto_0
    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 81
    :goto_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    if-nez v2, :cond_1

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/calendar/event/EditEventActivity;->mEventInfo:Lcom/android/calendar/CalendarController$EventInfo;

    iget-wide v2, v2, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 87
    :cond_0
    new-instance v2, Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventActivity;->mEventInfo:Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v2, v3, v6, v1}, Lcom/android/calendar/event/EditEventFragment;-><init>(Lcom/android/calendar/CalendarController$EventInfo;ZLandroid/content/Intent;)V

    iput-object v2, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    .line 89
    iget-object v2, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "editMode"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/calendar/event/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 93
    .local v0, ft:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v0, v7, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 94
    iget-object v2, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 95
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 99
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    if-eqz p1, :cond_2

    .line 100
    const-string v2, "date_time_identifier"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/event/EditEventActivity;->mDateTimeIdentifier:I

    .line 101
    const-string v2, "EditEventActivity::date_time_debug_tag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate(), mDateTimeIdentifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/calendar/event/EditEventActivity;->mDateTimeIdentifier:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_2
    return-void

    .line 72
    :cond_3
    const v2, 0x7f0c0052

    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v3, 0x10

    const/16 v4, 0x1e

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 164
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 166
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 154
    invoke-static {p0}, Lcom/android/calendar/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 155
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 230
    const-string v0, "date_time_identifier"

    iget v1, p0, Lcom/android/calendar/event/EditEventActivity;->mDateTimeIdentifier:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    const-string v0, "EditEventActivity::date_time_debug_tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState(), mDateTimeIdentifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/event/EditEventActivity;->mDateTimeIdentifier:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method setDateTimeViewId(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 176
    const-string v0, "EditEventActivity::date_time_debug_tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDateTimeViewId(), id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iput p1, p0, Lcom/android/calendar/event/EditEventActivity;->mDateTimeIdentifier:I

    .line 179
    return-void
.end method

.method public setDialogShown()V
    .locals 2

    .prologue
    .line 215
    const-string v0, "EditEventActivity::date_time_debug_tag"

    const-string v1, "setDialogShown()"

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment;->getEditEventView()Lcom/android/calendar/event/EditEventView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventView;->setDialogShown()V

    .line 218
    return-void
.end method
