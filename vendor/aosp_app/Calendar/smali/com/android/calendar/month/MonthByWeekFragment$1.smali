.class Lcom/android/calendar/month/MonthByWeekFragment$1;
.super Ljava/lang/Object;
.source "MonthByWeekFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/month/MonthByWeekFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/month/MonthByWeekFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/month/MonthByWeekFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/calendar/month/MonthByWeekFragment$1;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 101
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment$1;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    iget-object v1, v1, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment$1;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    #getter for: Lcom/android/calendar/month/MonthByWeekFragment;->mTZUpdater:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/calendar/month/MonthByWeekFragment;->access$000(Lcom/android/calendar/month/MonthByWeekFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, tz:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment$1;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    iget-object v1, v1, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment$1;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    iget-object v1, v1, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 104
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment$1;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    iget-object v1, v1, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment$1;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    iget-object v1, v1, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment$1;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    iget-object v1, v1, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 107
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment$1;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    iget-object v1, v1, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment$1;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    iget-object v1, v1, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 109
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment$1;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    iget-object v1, v1, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment$1;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    iget-object v1, v1, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->refresh()V

    .line 112
    :cond_0
    return-void
.end method
