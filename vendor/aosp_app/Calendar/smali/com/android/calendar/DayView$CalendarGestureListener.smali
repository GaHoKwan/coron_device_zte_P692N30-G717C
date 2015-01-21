.class Lcom/android/calendar/DayView$CalendarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter

    .prologue
    .line 5090
    iput-object p1, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 5143
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->doDown(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/calendar/DayView;->access$4900(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V

    .line 5144
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 5129
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$4600(Lcom/android/calendar/DayView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5130
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 5131
    const/4 v0, 0x0

    .line 5137
    :goto_0
    return v0

    .line 5134
    :cond_0
    const/4 p4, 0x0

    .line 5136
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->access$4800(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 5137
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 5104
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->doLongPress(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/calendar/DayView;->access$4400(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V

    .line 5105
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 5110
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->eventClickCleanup()V
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$4500(Lcom/android/calendar/DayView;)V

    .line 5111
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$4600(Lcom/android/calendar/DayView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5112
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 5115
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5116
    const/4 v0, 0x0

    .line 5122
    :goto_0
    return v0

    .line 5119
    :cond_0
    const/4 p4, 0x0

    .line 5121
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->access$4700(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 5122
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 5094
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->doSingleTapUp(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/calendar/DayView;->access$4300(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V

    .line 5096
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayView;->selectionFocusShow(Z)V

    .line 5098
    return v1
.end method
