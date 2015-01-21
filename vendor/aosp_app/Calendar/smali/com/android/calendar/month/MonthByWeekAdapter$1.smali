.class Lcom/android/calendar/month/MonthByWeekAdapter$1;
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
    .line 423
    iput-object p1, p0, Lcom/android/calendar/month/MonthByWeekAdapter$1;->this$0:Lcom/android/calendar/month/MonthByWeekAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter$1;->this$0:Lcom/android/calendar/month/MonthByWeekAdapter;

    iget-object v0, v0, Lcom/android/calendar/month/MonthByWeekAdapter;->mClickedView:Lcom/android/calendar/month/MonthWeekEventsView;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter$1;->this$0:Lcom/android/calendar/month/MonthByWeekAdapter;

    iget-object v1, v0, Lcom/android/calendar/month/MonthByWeekAdapter;->mClickedView:Lcom/android/calendar/month/MonthWeekEventsView;

    monitor-enter v1

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter$1;->this$0:Lcom/android/calendar/month/MonthByWeekAdapter;

    iget-object v0, v0, Lcom/android/calendar/month/MonthByWeekAdapter;->mClickedView:Lcom/android/calendar/month/MonthWeekEventsView;

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter$1;->this$0:Lcom/android/calendar/month/MonthByWeekAdapter;

    iget v2, v2, Lcom/android/calendar/month/MonthByWeekAdapter;->mClickedXLocation:F

    invoke-virtual {v0, v2}, Lcom/android/calendar/month/MonthWeekEventsView;->setClickedDay(F)V

    .line 429
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter$1;->this$0:Lcom/android/calendar/month/MonthByWeekAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/calendar/month/MonthByWeekAdapter;->mClickedView:Lcom/android/calendar/month/MonthWeekEventsView;

    .line 433
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter$1;->this$0:Lcom/android/calendar/month/MonthByWeekAdapter;

    iget-object v0, v0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 435
    :cond_0
    return-void

    .line 429
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
