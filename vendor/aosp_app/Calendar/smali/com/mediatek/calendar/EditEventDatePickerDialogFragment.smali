.class public Lcom/mediatek/calendar/EditEventDatePickerDialogFragment;
.super Landroid/app/DialogFragment;
.source "EditEventDatePickerDialogFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# static fields
.field private static final KEY_CANCEL_ON_TOUCH:Ljava/lang/String; = "cancelOnTouchOutside"

.field private static final KEY_DAY:Ljava/lang/String; = "day"

.field private static final KEY_FIRST_DAY:Ljava/lang/String; = "firstDayOfWeek"

.field private static final KEY_MONTH:Ljava/lang/String; = "month"

.field private static final KEY_SHOW_WEEK:Ljava/lang/String; = "showWeekNumber"

.field private static final KEY_THEME:Ljava/lang/String; = "theme"

.field private static final KEY_YEAR:Ljava/lang/String; = "year"

.field private static final TAG:Ljava/lang/String; = "EditEventDatePickerDialogFragment::date_time_debug_tag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(IIIIZZI)Lcom/mediatek/calendar/EditEventDatePickerDialogFragment;
    .locals 4
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "firstDayOfWeek"
    .parameter "showWeekNumber"
    .parameter "cancelOnTouchOutside"
    .parameter "theme"

    .prologue
    .line 28
    const-string v2, "EditEventDatePickerDialogFragment::date_time_debug_tag"

    const-string v3, "newInstance()"

    invoke-static {v2, v3}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v1, Lcom/mediatek/calendar/EditEventDatePickerDialogFragment;

    invoke-direct {v1}, Lcom/mediatek/calendar/EditEventDatePickerDialogFragment;-><init>()V

    .line 32
    .local v1, f:Lcom/mediatek/calendar/EditEventDatePickerDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, date:Landroid/os/Bundle;
    const-string v2, "year"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    const-string v2, "month"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    const-string v2, "day"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    const-string v2, "firstDayOfWeek"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    const-string v2, "showWeekNumber"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    const-string v2, "cancelOnTouchOutside"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    const-string v2, "theme"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 48
    const-string v1, "EditEventDatePickerDialogFragment::date_time_debug_tag"

    const-string v3, "onCreateDialog()"

    invoke-static {v1, v3}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    .line 52
    .local v8, date:Landroid/os/Bundle;
    const-string v1, "year"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 53
    .local v4, year:I
    const-string v1, "month"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 54
    .local v5, month:I
    const-string v1, "day"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 55
    .local v6, day:I
    const-string v1, "firstDayOfWeek"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 56
    .local v9, firstDayOfWeek:I
    const-string v1, "showWeekNumber"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 57
    .local v10, showWeekNumber:Z
    const-string v1, "cancelOnTouchOutside"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 58
    .local v7, cancelOnTouchOutside:Z
    const-string v1, "theme"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 60
    .local v2, theme:I
    new-instance v0, Lcom/mediatek/calendar/CalendarDatePickerDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/calendar/CalendarDatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 61
    .local v0, dpd:Lcom/mediatek/calendar/CalendarDatePickerDialog;
    invoke-virtual {v0}, Lcom/mediatek/calendar/CalendarDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getCalendarView()Landroid/widget/CalendarView;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/CalendarView;->setShowWeekNumber(Z)V

    .line 62
    invoke-virtual {v0}, Lcom/mediatek/calendar/CalendarDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getCalendarView()Landroid/widget/CalendarView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/CalendarView;->setFirstDayOfWeek(I)V

    .line 63
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 65
    return-object v0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 5
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 71
    .local v0, a:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 73
    .local v1, eea:Lcom/android/calendar/event/EditEventActivity;
    instance-of v3, v0, Lcom/android/calendar/event/EditEventActivity;

    if-eqz v3, :cond_0

    .line 74
    const-string v3, "EditEventDatePickerDialogFragment::date_time_debug_tag"

    const-string v4, "onDateSet(), Bingo!"

    invoke-static {v3, v4}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 76
    check-cast v1, Lcom/android/calendar/event/EditEventActivity;

    .line 77
    invoke-virtual {v1}, Lcom/android/calendar/event/EditEventActivity;->getDateTimeOnDateSetListener()Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v2

    .line 78
    .local v2, l:Landroid/app/DatePickerDialog$OnDateSetListener;
    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v2, p1, p2, p3, p4}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    .line 82
    .end local v2           #l:Landroid/app/DatePickerDialog$OnDateSetListener;
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 89
    .local v0, a:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 91
    .local v1, eea:Lcom/android/calendar/event/EditEventActivity;
    instance-of v2, v0, Lcom/android/calendar/event/EditEventActivity;

    if-eqz v2, :cond_0

    .line 92
    const-string v2, "EditEventDatePickerDialogFragment::date_time_debug_tag"

    const-string v3, "onDismiss(), Bingo!"

    invoke-static {v2, v3}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 94
    check-cast v1, Lcom/android/calendar/event/EditEventActivity;

    .line 95
    invoke-virtual {v1}, Lcom/android/calendar/event/EditEventActivity;->getDateTimeOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 97
    :cond_0
    return-void
.end method
