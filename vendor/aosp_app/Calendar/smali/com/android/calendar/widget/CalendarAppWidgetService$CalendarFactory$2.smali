.class Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;
.super Ljava/lang/Object;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    iput-object p2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 599
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    #calls: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->queryForSelection()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$100(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, selection:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    const/4 v2, -0x1

    #setter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I
    invoke-static {v1, v2}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$202(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;I)I

    .line 602
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    #getter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$400(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2$1;

    invoke-direct {v2, p0, v0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2$1;-><init>(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 614
    return-void
.end method
