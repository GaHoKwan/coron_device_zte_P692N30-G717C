.class Lcom/android/calendar/month/MonthByWeekFragment$4;
.super Ljava/lang/Object;
.source "MonthByWeekFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/month/MonthByWeekFragment;->handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
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
    .line 435
    iput-object p1, p0, Lcom/android/calendar/month/MonthByWeekFragment$4;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment$4;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    iget-object v0, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    check-cast v0, Lcom/android/calendar/month/MonthByWeekAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/month/MonthByWeekAdapter;->animateSelectedDay()V

    .line 440
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment$4;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    iget-object v0, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 441
    return-void
.end method
