.class Lcom/android/calendar/DayView$3;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/calendar/DayView$3;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/calendar/DayView$3;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$200(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/calendar/DayView$3;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$500(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    const-wide/16 v2, 0x2

    iget-object v1, p0, Lcom/android/calendar/DayView$3;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;
    invoke-static {v1}, Lcom/android/calendar/DayView;->access$200(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v1

    iget-wide v4, v1, Lcom/android/calendar/Event;->id:J

    iget-object v1, p0, Lcom/android/calendar/DayView$3;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;
    invoke-static {v1}, Lcom/android/calendar/DayView;->access$200(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v1

    iget-wide v6, v1, Lcom/android/calendar/Event;->startMillis:J

    iget-object v1, p0, Lcom/android/calendar/DayView$3;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;
    invoke-static {v1}, Lcom/android/calendar/DayView;->access$200(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v1

    iget-wide v8, v1, Lcom/android/calendar/Event;->endMillis:J

    iget-object v1, p0, Lcom/android/calendar/DayView$3;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v10, v1, 0x2

    iget-object v1, p0, Lcom/android/calendar/DayView$3;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mClickedYLocation:I
    invoke-static {v1}, Lcom/android/calendar/DayView;->access$400(Lcom/android/calendar/DayView;)I

    move-result v11

    iget-object v1, p0, Lcom/android/calendar/DayView$3;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v1}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v12

    move-object v1, p0

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView$3;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$202(Lcom/android/calendar/DayView;Lcom/android/calendar/Event;)Lcom/android/calendar/Event;

    .line 258
    iget-object v0, p0, Lcom/android/calendar/DayView$3;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 259
    return-void
.end method
