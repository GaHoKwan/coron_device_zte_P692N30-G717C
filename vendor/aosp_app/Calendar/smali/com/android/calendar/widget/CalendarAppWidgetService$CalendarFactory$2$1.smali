.class Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2$1;
.super Ljava/lang/Object;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;

.field final synthetic val$selection:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2$1;->this$1:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;

    iput-object p2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2$1;->val$selection:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 605
    invoke-static {}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$000()Landroid/content/CursorLoader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2$1;->this$1:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2$1;->val$selection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->initLoader(Ljava/lang/String;)V

    .line 610
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2$1;->this$1:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 611
    return-void

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2$1;->this$1:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2$1;->val$selection:Ljava/lang/String;

    invoke-static {}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->resetLoader(Ljava/lang/String;I)V

    goto :goto_0
.end method
