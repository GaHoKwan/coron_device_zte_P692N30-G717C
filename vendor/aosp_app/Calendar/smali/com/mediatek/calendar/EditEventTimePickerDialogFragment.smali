.class public Lcom/mediatek/calendar/EditEventTimePickerDialogFragment;
.super Landroid/app/DialogFragment;
.source "EditEventTimePickerDialogFragment.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final KEY_24_FORMAT:Ljava/lang/String; = "24_format"

.field private static final KEY_CANCEL_ON_TOUCH:Ljava/lang/String; = "cancelOnTouchOutside"

.field private static final KEY_THEME:Ljava/lang/String; = "theme"

.field private static final KEY_TIME_HOUR:Ljava/lang/String; = "hour"

.field private static final KEY_TIME_MINUTE:Ljava/lang/String; = "minute"

.field private static final TAG:Ljava/lang/String; = "EditEventTimePickerDialogFragment::date_time_debug_tag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(IIZZI)Lcom/mediatek/calendar/EditEventTimePickerDialogFragment;
    .locals 4
    .parameter "hour"
    .parameter "minute"
    .parameter "is24Format"
    .parameter "cancelOnTouchOutside"
    .parameter "theme"

    .prologue
    .line 27
    const-string v2, "EditEventTimePickerDialogFragment::date_time_debug_tag"

    const-string v3, "newInstance()"

    invoke-static {v2, v3}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/mediatek/calendar/EditEventTimePickerDialogFragment;

    invoke-direct {v0}, Lcom/mediatek/calendar/EditEventTimePickerDialogFragment;-><init>()V

    .line 31
    .local v0, f:Lcom/mediatek/calendar/EditEventTimePickerDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v1, time:Landroid/os/Bundle;
    const-string v2, "hour"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    const-string v2, "minute"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    const-string v2, "24_format"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    const-string v2, "cancelOnTouchOutside"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    const-string v2, "theme"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 45
    const-string v1, "EditEventTimePickerDialogFragment::date_time_debug_tag"

    const-string v3, "onCreateDialog()"

    invoke-static {v1, v3}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    .line 48
    .local v8, time:Landroid/os/Bundle;
    const-string v1, "hour"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 49
    .local v4, hour:I
    const-string v1, "minute"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 50
    .local v5, minute:I
    const-string v1, "24_format"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 51
    .local v6, is24Format:Z
    const-string v1, "cancelOnTouchOutside"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 52
    .local v7, cancel:Z
    const-string v1, "theme"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 54
    .local v2, theme:I
    new-instance v0, Lcom/mediatek/calendar/CalendarTimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/calendar/CalendarTimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 56
    .local v0, tpd:Lcom/mediatek/calendar/CalendarTimePickerDialog;
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 58
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 80
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 81
    .local v0, a:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 83
    .local v1, eea:Lcom/android/calendar/event/EditEventActivity;
    instance-of v2, v0, Lcom/android/calendar/event/EditEventActivity;

    if-eqz v2, :cond_0

    .line 84
    const-string v2, "EditEventTimePickerDialogFragment::date_time_debug_tag"

    const-string v3, "onDismiss(), Bingo!"

    invoke-static {v2, v3}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 86
    check-cast v1, Lcom/android/calendar/event/EditEventActivity;

    .line 87
    invoke-virtual {v1}, Lcom/android/calendar/event/EditEventActivity;->getDateTimeOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 5
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 63
    .local v0, a:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 65
    .local v1, eea:Lcom/android/calendar/event/EditEventActivity;
    instance-of v3, v0, Lcom/android/calendar/event/EditEventActivity;

    if-eqz v3, :cond_0

    .line 66
    const-string v3, "EditEventTimePickerDialogFragment::date_time_debug_tag"

    const-string v4, "onTimeSet(), Bingo!"

    invoke-static {v3, v4}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 68
    check-cast v1, Lcom/android/calendar/event/EditEventActivity;

    .line 69
    invoke-virtual {v1}, Lcom/android/calendar/event/EditEventActivity;->getDateTimeOnTimeSetListener()Landroid/app/TimePickerDialog$OnTimeSetListener;

    move-result-object v2

    .line 70
    .local v2, l:Landroid/app/TimePickerDialog$OnTimeSetListener;
    if-eqz v2, :cond_0

    .line 71
    invoke-interface {v2, p1, p2, p3}, Landroid/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Landroid/widget/TimePicker;II)V

    .line 74
    .end local v2           #l:Landroid/app/TimePickerDialog$OnTimeSetListener;
    :cond_0
    return-void
.end method
