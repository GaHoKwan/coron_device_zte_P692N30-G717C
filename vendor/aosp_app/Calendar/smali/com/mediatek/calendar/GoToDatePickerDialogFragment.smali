.class public Lcom/mediatek/calendar/GoToDatePickerDialogFragment;
.super Landroid/app/DialogFragment;
.source "GoToDatePickerDialogFragment.java"

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

.field private static final TAG:Ljava/lang/String; = "GoToDatePickerDialogFragment"


# instance fields
.field private final mHomeTimeUpdater:Ljava/lang/Runnable;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 33
    new-instance v0, Lcom/mediatek/calendar/GoToDatePickerDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/mediatek/calendar/GoToDatePickerDialogFragment$1;-><init>(Lcom/mediatek/calendar/GoToDatePickerDialogFragment;)V

    iput-object v0, p0, Lcom/mediatek/calendar/GoToDatePickerDialogFragment;->mHomeTimeUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method public static newInstance(IIIIZZI)Lcom/mediatek/calendar/GoToDatePickerDialogFragment;
    .locals 4
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "firstDayOfWeek"
    .parameter "showWeekNumber"
    .parameter "cancelOnTouchOutside"
    .parameter "theme"

    .prologue
    .line 42
    const-string v2, "GoToDatePickerDialogFragment"

    const-string v3, "newInstance()"

    invoke-static {v2, v3}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/mediatek/calendar/GoToDatePickerDialogFragment;

    invoke-direct {v1}, Lcom/mediatek/calendar/GoToDatePickerDialogFragment;-><init>()V

    .line 46
    .local v1, f:Lcom/mediatek/calendar/GoToDatePickerDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, date:Landroid/os/Bundle;
    const-string v2, "year"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    const-string v2, "month"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    const-string v2, "day"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    const-string v2, "firstDayOfWeek"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    const-string v2, "showWeekNumber"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    const-string v2, "cancelOnTouchOutside"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    const-string v2, "theme"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 62
    const-string v1, "GoToDatePickerDialogFragment"

    const-string v3, "onCreateDialog()"

    invoke-static {v1, v3}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    .line 66
    .local v8, date:Landroid/os/Bundle;
    const-string v1, "year"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 67
    .local v4, year:I
    const-string v1, "month"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 68
    .local v5, month:I
    const-string v1, "day"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 69
    .local v6, day:I
    const-string v1, "firstDayOfWeek"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 70
    .local v9, firstDayOfWeek:I
    const-string v1, "showWeekNumber"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 71
    .local v10, showWeekNumber:Z
    const-string v1, "cancelOnTouchOutside"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 72
    .local v7, cancelOnTouchOutside:Z
    const-string v1, "theme"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 74
    .local v2, theme:I
    new-instance v0, Lcom/mediatek/calendar/CalendarDatePickerDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/calendar/CalendarDatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 76
    .local v0, dpd:Lcom/mediatek/calendar/CalendarDatePickerDialog;
    invoke-virtual {v0}, Lcom/mediatek/calendar/CalendarDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getCalendarView()Landroid/widget/CalendarView;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/CalendarView;->setShowWeekNumber(Z)V

    .line 77
    invoke-virtual {v0}, Lcom/mediatek/calendar/CalendarDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getCalendarView()Landroid/widget/CalendarView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/CalendarView;->setFirstDayOfWeek(I)V

    .line 78
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 80
    return-object v0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 15
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 85
    const-string v1, "GoToDatePickerDialogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calendar/GoToDatePickerDialogFragment;->mHomeTimeUpdater:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/GoToDatePickerDialogFragment;->mTimeZone:Ljava/lang/String;

    .line 88
    const-string v1, "GoToDatePickerDialogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date set, time zone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/calendar/GoToDatePickerDialogFragment;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v5, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/mediatek/calendar/GoToDatePickerDialogFragment;->mTimeZone:Ljava/lang/String;

    invoke-direct {v5, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 91
    .local v5, t:Landroid/text/format/Time;
    move/from16 v0, p2

    iput v0, v5, Landroid/text/format/Time;->year:I

    .line 92
    move/from16 v0, p3

    iput v0, v5, Landroid/text/format/Time;->month:I

    .line 93
    move/from16 v0, p4

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 95
    const-wide/16 v11, 0xa

    .line 97
    .local v11, extras:J
    const/4 v10, 0x0

    .line 98
    .local v10, viewType:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v1

    const-wide/16 v3, 0x20

    const/4 v6, 0x0

    const-wide/16 v8, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v2, p0

    move-object v7, v5

    invoke-virtual/range {v1 .. v14}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 100
    return-void
.end method
