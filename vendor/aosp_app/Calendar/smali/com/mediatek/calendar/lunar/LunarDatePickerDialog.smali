.class public Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;
.super Landroid/app/AlertDialog;
.source "LunarDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/mediatek/calendar/lunar/LunarDatePicker$OnDateChangedListener;


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lcom/mediatek/calendar/lunar/LunarDatePicker;

.field private mTitleNeedsUpdate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 6
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/4 v5, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 31
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mTitleNeedsUpdate:Z

    .line 67
    iput-object p3, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 69
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 70
    .local v2, themeContext:Landroid/content/Context;
    const/4 v3, -0x1

    const v4, 0x7f0c0012

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 71
    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 73
    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 75
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f04001c

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 77
    .local v1, linearLayout:Landroid/widget/LinearLayout;
    new-instance v3, Lcom/mediatek/calendar/lunar/LunarDatePicker;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mediatek/calendar/lunar/LunarDatePicker;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mDatePicker:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    .line 78
    iget-object v3, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mDatePicker:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    invoke-virtual {v3, v5}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->setCalendarViewShown(Z)V

    .line 79
    iget-object v3, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mDatePicker:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 82
    iget-object v3, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mDatePicker:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    invoke-virtual {v3, p4, p5, p6, p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->init(IIILcom/mediatek/calendar/lunar/LunarDatePicker$OnDateChangedListener;)V

    .line 83
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->updateTitle()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 47
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 48
    return-void
.end method

.method private tryNotifyDateSet()V
    .locals 5

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mDatePicker:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 121
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mDatePicker:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    invoke-virtual {v2}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mDatePicker:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    invoke-virtual {v3}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mDatePicker:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    invoke-virtual {v4}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    .line 124
    :cond_0
    return-void
.end method

.method private updateTitle()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mDatePicker:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    invoke-virtual {v0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getCalendarViewShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mDatePicker:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    invoke-virtual {v0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getDateString()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mTitleNeedsUpdate:Z

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mTitleNeedsUpdate:Z

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mTitleNeedsUpdate:Z

    .line 140
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_0
.end method


# virtual methods
.method public getDatePicker()Lcom/mediatek/calendar/lunar/LunarDatePicker;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mDatePicker:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->tryNotifyDateSet()V

    .line 88
    return-void
.end method

.method public onDateChanged(Lcom/mediatek/calendar/lunar/LunarDatePicker;III)V
    .locals 1
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mDatePicker:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    invoke-virtual {v0, p2, p3, p4, p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->init(IIILcom/mediatek/calendar/lunar/LunarDatePicker$OnDateChangedListener;)V

    .line 92
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->updateTitle()V

    .line 93
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 157
    const-string v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 158
    .local v2, year:I
    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 159
    .local v1, month:I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 160
    .local v0, day:I
    iget-object v3, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mDatePicker:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->init(IIILcom/mediatek/calendar/lunar/LunarDatePicker$OnDateChangedListener;)V

    .line 161
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 148
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mDatePicker:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    invoke-virtual {v2}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    const-string v1, "month"

    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mDatePicker:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    invoke-virtual {v2}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    const-string v1, "day"

    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mDatePicker:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    invoke-virtual {v2}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 131
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePickerDialog;->mDatePicker:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->updateDate(III)V

    .line 116
    return-void
.end method
