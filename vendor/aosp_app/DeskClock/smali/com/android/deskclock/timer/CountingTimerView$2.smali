.class Lcom/android/deskclock/timer/CountingTimerView$2;
.super Ljava/lang/Object;
.source "CountingTimerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/timer/CountingTimerView;->registerVirtualButtonAction(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/CountingTimerView;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/deskclock/timer/CountingTimerView;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/deskclock/timer/CountingTimerView$2;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    iput-object p2, p0, Lcom/android/deskclock/timer/CountingTimerView$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 544
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView$2;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    #getter for: Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonEnabled:Z
    invoke-static {v2}, Lcom/android/deskclock/timer/CountingTimerView;->access$100(Lcom/android/deskclock/timer/CountingTimerView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    .line 568
    :cond_1
    :goto_0
    return v0

    .line 547
    :pswitch_1
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView$2;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    #calls: Lcom/android/deskclock/timer/CountingTimerView;->withinVirtualButtonBounds(FF)Z
    invoke-static {v2, v3, v4}, Lcom/android/deskclock/timer/CountingTimerView;->access$200(Lcom/android/deskclock/timer/CountingTimerView;FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 548
    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView$2;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    #calls: Lcom/android/deskclock/timer/CountingTimerView;->virtualButtonPressed(Z)V
    invoke-static {v1, v0}, Lcom/android/deskclock/timer/CountingTimerView;->access$300(Lcom/android/deskclock/timer/CountingTimerView;Z)V

    goto :goto_0

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$2;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    #calls: Lcom/android/deskclock/timer/CountingTimerView;->virtualButtonPressed(Z)V
    invoke-static {v0, v1}, Lcom/android/deskclock/timer/CountingTimerView;->access$300(Lcom/android/deskclock/timer/CountingTimerView;Z)V

    move v0, v1

    .line 552
    goto :goto_0

    .line 555
    :pswitch_2
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView$2;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    #calls: Lcom/android/deskclock/timer/CountingTimerView;->virtualButtonPressed(Z)V
    invoke-static {v2, v1}, Lcom/android/deskclock/timer/CountingTimerView;->access$300(Lcom/android/deskclock/timer/CountingTimerView;Z)V

    goto :goto_0

    .line 558
    :pswitch_3
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$2;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    #calls: Lcom/android/deskclock/timer/CountingTimerView;->virtualButtonPressed(Z)V
    invoke-static {v0, v1}, Lcom/android/deskclock/timer/CountingTimerView;->access$300(Lcom/android/deskclock/timer/CountingTimerView;Z)V

    move v0, v1

    .line 559
    goto :goto_0

    .line 561
    :pswitch_4
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView$2;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    #calls: Lcom/android/deskclock/timer/CountingTimerView;->virtualButtonPressed(Z)V
    invoke-static {v2, v1}, Lcom/android/deskclock/timer/CountingTimerView;->access$300(Lcom/android/deskclock/timer/CountingTimerView;Z)V

    .line 562
    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView$2;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    #calls: Lcom/android/deskclock/timer/CountingTimerView;->withinVirtualButtonBounds(FF)Z
    invoke-static {v1, v2, v3}, Lcom/android/deskclock/timer/CountingTimerView;->access$200(Lcom/android/deskclock/timer/CountingTimerView;FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView$2;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 545
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
