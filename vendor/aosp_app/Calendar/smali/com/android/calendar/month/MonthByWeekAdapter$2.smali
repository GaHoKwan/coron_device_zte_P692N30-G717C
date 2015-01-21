.class Lcom/android/calendar/month/MonthByWeekAdapter$2;
.super Ljava/lang/Object;
.source "MonthByWeekAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/month/MonthByWeekAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/month/MonthByWeekAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/month/MonthByWeekAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/calendar/month/MonthByWeekAdapter$2;->this$0:Lcom/android/calendar/month/MonthByWeekAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 443
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter$2;->this$0:Lcom/android/calendar/month/MonthByWeekAdapter;

    iget-object v1, v1, Lcom/android/calendar/month/MonthByWeekAdapter;->mSingleTapUpView:Lcom/android/calendar/month/MonthWeekEventsView;

    if-eqz v1, :cond_2

    .line 444
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter$2;->this$0:Lcom/android/calendar/month/MonthByWeekAdapter;

    iget-object v1, v1, Lcom/android/calendar/month/MonthByWeekAdapter;->mSingleTapUpView:Lcom/android/calendar/month/MonthWeekEventsView;

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter$2;->this$0:Lcom/android/calendar/month/MonthByWeekAdapter;

    iget v2, v2, Lcom/android/calendar/month/MonthByWeekAdapter;->mClickedXLocation:F

    invoke-virtual {v1, v2}, Lcom/android/calendar/month/MonthWeekEventsView;->getDayFromLocation(F)Landroid/text/format/Time;

    move-result-object v0

    .line 445
    .local v0, day:Landroid/text/format/Time;
    const-string v1, "MonthByWeek"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    const-string v1, "MonthByWeek"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Touched day at Row="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter$2;->this$0:Lcom/android/calendar/month/MonthByWeekAdapter;

    iget-object v3, v3, Lcom/android/calendar/month/MonthByWeekAdapter;->mSingleTapUpView:Lcom/android/calendar/month/MonthWeekEventsView;

    iget v3, v3, Lcom/android/calendar/month/SimpleWeekView;->mWeek:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " day="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    if-eqz v0, :cond_1

    .line 449
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter$2;->this$0:Lcom/android/calendar/month/MonthByWeekAdapter;

    invoke-virtual {v1, v0}, Lcom/android/calendar/month/MonthByWeekAdapter;->onDayTapped(Landroid/text/format/Time;)V

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter$2;->this$0:Lcom/android/calendar/month/MonthByWeekAdapter;

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter$2;->this$0:Lcom/android/calendar/month/MonthByWeekAdapter;

    iget-object v2, v2, Lcom/android/calendar/month/MonthByWeekAdapter;->mSingleTapUpView:Lcom/android/calendar/month/MonthWeekEventsView;

    #calls: Lcom/android/calendar/month/MonthByWeekAdapter;->clearClickedView(Lcom/android/calendar/month/MonthWeekEventsView;)V
    invoke-static {v1, v2}, Lcom/android/calendar/month/MonthByWeekAdapter;->access$000(Lcom/android/calendar/month/MonthByWeekAdapter;Lcom/android/calendar/month/MonthWeekEventsView;)V

    .line 452
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter$2;->this$0:Lcom/android/calendar/month/MonthByWeekAdapter;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/calendar/month/MonthByWeekAdapter;->mSingleTapUpView:Lcom/android/calendar/month/MonthWeekEventsView;

    .line 454
    .end local v0           #day:Landroid/text/format/Time;
    :cond_2
    return-void
.end method
