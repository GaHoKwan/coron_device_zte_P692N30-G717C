.class Lcom/android/calendar/event/EditEventView$DateClickListener;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateClickListener"
.end annotation


# instance fields
.field private mTime:Landroid/text/format/Time;

.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V
    .locals 0
    .parameter
    .parameter "time"

    .prologue
    .line 743
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput-object p2, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->mTime:Landroid/text/format/Time;

    .line 745
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    .line 749
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f100057

    if-ne v1, v2, :cond_0

    .line 750
    const-string v1, "EditEventView::date_time_debug_tag"

    const-string v2, "DateClickListener, mStartDateButton is clicked."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #calls: Lcom/android/calendar/event/EditEventView;->setDateTimeViewId(I)V
    invoke-static {v1, v8}, Lcom/android/calendar/event/EditEventView;->access$900(Lcom/android/calendar/event/EditEventView;I)V

    .line 753
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f10005e

    if-ne v1, v2, :cond_1

    .line 754
    const-string v1, "EditEventView::date_time_debug_tag"

    const-string v2, "DateClickListener, mEndDateButton is clicked."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    const/4 v2, 0x2

    #calls: Lcom/android/calendar/event/EditEventView;->setDateTimeViewId(I)V
    invoke-static {v1, v2}, Lcom/android/calendar/event/EditEventView;->access$900(Lcom/android/calendar/event/EditEventView;I)V

    .line 760
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mExt:Lcom/mediatek/calendar/extension/IEditEventViewExt;
    invoke-static {v1}, Lcom/android/calendar/event/EditEventView;->access$1600(Lcom/android/calendar/event/EditEventView;)Lcom/mediatek/calendar/extension/IEditEventViewExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/calendar/extension/IEditEventViewExt;->isExtensionEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 761
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mExt:Lcom/mediatek/calendar/extension/IEditEventViewExt;
    invoke-static {v1}, Lcom/android/calendar/event/EditEventView;->access$1600(Lcom/android/calendar/event/EditEventView;)Lcom/mediatek/calendar/extension/IEditEventViewExt;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->mTime:Landroid/text/format/Time;

    invoke-interface {v1, p1, v2}, Lcom/mediatek/calendar/extension/IEditEventViewExt;->onDateClicked(Landroid/view/View;Landroid/text/format/Time;)V

    .line 792
    :goto_0
    return-void

    .line 765
    :cond_2
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/calendar/event/EditEventView;->access$1100(Lcom/android/calendar/event/EditEventView;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/event/EditEventView$DateListener;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {v2, v3, p1}, Lcom/android/calendar/event/EditEventView$DateListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->month:I

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 767
    .local v0, dpd:Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getCalendarView()Landroid/widget/CalendarView;

    move-result-object v6

    .line 768
    .local v6, cv:Landroid/widget/CalendarView;
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/calendar/event/EditEventView;->access$1100(Lcom/android/calendar/event/EditEventView;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/CalendarView;->setShowWeekNumber(Z)V

    .line 770
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mDialogManager:Lcom/android/calendar/event/EditEventView$DialogManager;
    invoke-static {v1}, Lcom/android/calendar/event/EditEventView;->access$1000(Lcom/android/calendar/event/EditEventView;)Lcom/android/calendar/event/EditEventView$DialogManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 772
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/calendar/event/EditEventView;->access$1100(Lcom/android/calendar/event/EditEventView;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v7

    .line 774
    .local v7, startOfWeek:I
    const/4 v1, 0x6

    if-ne v7, v1, :cond_3

    .line 775
    const/4 v7, 0x7

    .line 781
    :goto_1
    invoke-virtual {v6, v7}, Landroid/widget/CalendarView;->setFirstDayOfWeek(I)V

    .line 782
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 784
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mDialogManager:Lcom/android/calendar/event/EditEventView$DialogManager;
    invoke-static {v1}, Lcom/android/calendar/event/EditEventView;->access$1000(Lcom/android/calendar/event/EditEventView;)Lcom/android/calendar/event/EditEventView$DialogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/event/EditEventView$DialogManager;->isAnyDialogShown()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 785
    const-string v1, "EditEventView"

    const-string v2, "Google default: one DataPicker dialog shown, return."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 776
    :cond_3
    if-nez v7, :cond_4

    .line 777
    const/4 v7, 0x1

    goto :goto_1

    .line 779
    :cond_4
    const/4 v7, 0x2

    goto :goto_1

    .line 788
    :cond_5
    const-string v1, "EditEventView"

    const-string v2, "Google default: no DataPicker dialog shown, show one."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mDialogManager:Lcom/android/calendar/event/EditEventView$DialogManager;
    invoke-static {v1}, Lcom/android/calendar/event/EditEventView;->access$1000(Lcom/android/calendar/event/EditEventView;)Lcom/android/calendar/event/EditEventView$DialogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/event/EditEventView$DialogManager;->dialogShown()V

    .line 790
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
