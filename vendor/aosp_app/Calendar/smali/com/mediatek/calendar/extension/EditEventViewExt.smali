.class public Lcom/mediatek/calendar/extension/EditEventViewExt;
.super Ljava/lang/Object;
.source "EditEventViewExt.java"

# interfaces
.implements Lcom/mediatek/calendar/extension/IEditEventViewExt;


# static fields
.field private static final DATE_TIME_TAG:Ljava/lang/String; = "EditEventViewExt::date_time_debug_tag"

.field private static final EDIT_EVENT_DATE_DIALOG_FRAG:Ljava/lang/String; = "edit_event_date_dialog_frag"

.field private static final EDIT_EVENT_LUNAR_DATE_DIALOG_FRAG:Ljava/lang/String; = "edit_event_lunar_date_dialog_frag"

.field private static final TAG:Ljava/lang/String; = "EditEventViewExt"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEditEventView:Lcom/mediatek/calendar/extension/IEditEventView;

.field private mIsUseLunarDatePicker:Z

.field private mLunarUtil:Lcom/mediatek/calendar/lunar/LunarUtil;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/mediatek/calendar/extension/IEditEventView;)V
    .locals 1
    .parameter "activity"
    .parameter "editEventView"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mActivity:Landroid/app/Activity;

    .line 43
    invoke-static {p1}, Lcom/mediatek/calendar/lunar/LunarUtil;->getInstance(Landroid/content/Context;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mLunarUtil:Lcom/mediatek/calendar/lunar/LunarUtil;

    .line 44
    iput-object p2, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mEditEventView:Lcom/mediatek/calendar/extension/IEditEventView;

    .line 45
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/calendar/extension/EditEventViewExt;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mIsUseLunarDatePicker:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/calendar/extension/EditEventViewExt;)Lcom/mediatek/calendar/extension/IEditEventView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mEditEventView:Lcom/mediatek/calendar/extension/IEditEventView;

    return-object v0
.end method

.method private isLunarDataPickerClicked()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v2, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mActivity:Landroid/app/Activity;

    const v3, 0x7f100052

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 186
    .local v0, radioGroup:Landroid/widget/RadioGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    :cond_0
    const-string v2, "EditEventViewExt"

    const-string v3, "RadioGroup is null, or is invisible, means not clicked"

    invoke-static {v2, v3}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const v3, 0x7f100054

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setAttendeesGroupVisibility(Ljava/lang/String;)V
    .locals 2
    .parameter "accountType"

    .prologue
    .line 198
    iget-object v1, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mEditEventView:Lcom/mediatek/calendar/extension/IEditEventView;

    const-string v0, "LOCAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-interface {v1, v0}, Lcom/mediatek/calendar/extension/IEditEventView;->setAttendeesGroupVisibility(I)V

    .line 201
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDateStringFromMillis(J)Ljava/lang/String;
    .locals 6
    .parameter "millis"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/mediatek/calendar/extension/EditEventViewExt;->isLunarDataPickerClicked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mIsUseLunarDatePicker:Z

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, dateString:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mIsUseLunarDatePicker:Z

    if-eqz v2, :cond_0

    .line 52
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 53
    .local v1, time:Landroid/text/format/Time;
    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 54
    iget-object v2, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mLunarUtil:Lcom/mediatek/calendar/lunar/LunarUtil;

    iget v3, v1, Landroid/text/format/Time;->year:I

    iget v4, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    iget v5, v1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/calendar/lunar/LunarUtil;->getLunarDateString(III)Ljava/lang/String;

    move-result-object v0

    .line 57
    .end local v1           #time:Landroid/text/format/Time;
    :cond_0
    return-object v0
.end method

.method public isExtensionEnabled()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public onAccountItemSelected(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 68
    const-string v2, "account_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 69
    .local v1, accountTypeColumn:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, accountType:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/calendar/extension/EditEventViewExt;->setAttendeesGroupVisibility(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mEditEventView:Lcom/mediatek/calendar/extension/IEditEventView;

    invoke-interface {v2}, Lcom/mediatek/calendar/extension/IEditEventView;->getModel()Lcom/android/calendar/CalendarEventModel;

    move-result-object v2

    iput-object v0, v2, Lcom/android/calendar/CalendarEventModel;->mAccountType:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public onDateClicked(Landroid/view/View;Landroid/text/format/Time;)V
    .locals 10
    .parameter "v"
    .parameter "time"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 85
    const/4 v7, 0x0

    .line 86
    .local v7, eea:Lcom/android/calendar/event/EditEventActivity;
    iget-object v0, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/calendar/event/EditEventActivity;

    if-eqz v0, :cond_0

    .line 87
    iget-object v7, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mActivity:Landroid/app/Activity;

    .end local v7           #eea:Lcom/android/calendar/event/EditEventActivity;
    check-cast v7, Lcom/android/calendar/event/EditEventActivity;

    .line 95
    .restart local v7       #eea:Lcom/android/calendar/event/EditEventActivity;
    invoke-virtual {v7}, Lcom/android/calendar/event/EditEventActivity;->isAnyDialogShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v0, "EditEventViewExt::date_time_debug_tag"

    const-string v1, "onDateClicked(), only used by EditEventActivity"

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v7}, Lcom/android/calendar/event/EditEventActivity;->setDialogShown()V

    .line 100
    iget-object v0, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v3

    .line 102
    .local v3, startOfWeek:I
    const/4 v0, 0x6

    if-ne v3, v0, :cond_2

    .line 103
    const/4 v3, 0x7

    .line 110
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/calendar/extension/EditEventViewExt;->isLunarDataPickerClicked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mIsUseLunarDatePicker:Z

    .line 112
    iget-boolean v0, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mIsUseLunarDatePicker:Z

    if-eqz v0, :cond_4

    .line 113
    iget v0, p2, Landroid/text/format/Time;->year:I

    iget v1, p2, Landroid/text/format/Time;->month:I

    iget v2, p2, Landroid/text/format/Time;->monthDay:I

    iget-object v4, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/calendar/EditEventLunarDatePickerDialogFragment;->newInstance(IIIIZZI)Lcom/mediatek/calendar/EditEventLunarDatePickerDialogFragment;

    move-result-object v9

    .line 117
    .local v9, lf:Lcom/mediatek/calendar/EditEventLunarDatePickerDialogFragment;
    iget-object v0, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "edit_event_lunar_date_dialog_frag"

    invoke-virtual {v9, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v9           #lf:Lcom/mediatek/calendar/EditEventLunarDatePickerDialogFragment;
    :cond_2
    if-nez v3, :cond_3

    .line 105
    const/4 v3, 0x1

    goto :goto_1

    .line 107
    :cond_3
    const/4 v3, 0x2

    goto :goto_1

    .line 119
    :cond_4
    iget v0, p2, Landroid/text/format/Time;->year:I

    iget v1, p2, Landroid/text/format/Time;->month:I

    iget v2, p2, Landroid/text/format/Time;->monthDay:I

    iget-object v4, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/calendar/EditEventDatePickerDialogFragment;->newInstance(IIIIZZI)Lcom/mediatek/calendar/EditEventDatePickerDialogFragment;

    move-result-object v8

    .line 123
    .local v8, f:Lcom/mediatek/calendar/EditEventDatePickerDialogFragment;
    iget-object v0, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "edit_event_date_dialog_frag"

    invoke-virtual {v8, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExtUI(Lcom/android/calendar/CalendarEventModel;)V
    .locals 3
    .parameter "model"

    .prologue
    .line 131
    iget-object v1, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mLunarUtil:Lcom/mediatek/calendar/lunar/LunarUtil;

    invoke-virtual {v1}, Lcom/mediatek/calendar/lunar/LunarUtil;->canShowLunarCalendar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-boolean v1, p1, Lcom/android/calendar/CalendarEventModel;->mIsLunar:Z

    iput-boolean v1, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mIsUseLunarDatePicker:Z

    .line 133
    iget-object v2, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mActivity:Landroid/app/Activity;

    iget-boolean v1, p1, Lcom/android/calendar/CalendarEventModel;->mIsLunar:Z

    if-eqz v1, :cond_1

    const v1, 0x7f100054

    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 135
    .local v0, radioBtn:Landroid/widget/RadioButton;
    if-nez v0, :cond_2

    .line 136
    const-string v1, "EditEventViewExt"

    const-string v2, "radio button is null, do nothing here."

    invoke-static {v1, v2}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .end local v0           #radioBtn:Landroid/widget/RadioButton;
    :cond_0
    :goto_1
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mAccountType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/calendar/extension/EditEventViewExt;->setAttendeesGroupVisibility(Ljava/lang/String;)V

    .line 145
    return-void

    .line 133
    :cond_1
    const v1, 0x7f100053

    goto :goto_0

    .line 138
    .restart local v0       #radioBtn:Landroid/widget/RadioButton;
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public updateDatePickerSelection()V
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mActivity:Landroid/app/Activity;

    const v2, 0x7f100052

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 150
    .local v0, radioGroup:Landroid/widget/RadioGroup;
    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mLunarUtil:Lcom/mediatek/calendar/lunar/LunarUtil;

    invoke-virtual {v1}, Lcom/mediatek/calendar/lunar/LunarUtil;->canShowLunarCalendar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v1, p0, Lcom/mediatek/calendar/extension/EditEventViewExt;->mEditEventView:Lcom/mediatek/calendar/extension/IEditEventView;

    invoke-interface {v1}, Lcom/mediatek/calendar/extension/IEditEventView;->resetDateButton()V

    .line 156
    new-instance v1, Lcom/mediatek/calendar/extension/EditEventViewExt$1;

    invoke-direct {v1, p0}, Lcom/mediatek/calendar/extension/EditEventViewExt$1;-><init>(Lcom/mediatek/calendar/extension/EditEventViewExt;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
