.class Lcom/android/deskclock/timer/TimerFragment$7$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TimerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/timer/TimerFragment$7;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/timer/TimerFragment$7;


# direct methods
.method constructor <init>(Lcom/android/deskclock/timer/TimerFragment$7;)V
    .locals 0
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$7$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$7;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$7$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$7;

    iget-object v0, v0, Lcom/android/deskclock/timer/TimerFragment$7;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    #getter for: Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
    invoke-static {v0}, Lcom/android/deskclock/timer/TimerFragment;->access$400(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$7$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$7;

    iget-object v1, v1, Lcom/android/deskclock/timer/TimerFragment$7;->val$t:Lcom/android/deskclock/timer/TimerObj;

    iget v1, v1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {v0, v1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->deleteTimer(I)V

    .line 741
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$7$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$7;

    iget-object v0, v0, Lcom/android/deskclock/timer/TimerFragment$7;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    #getter for: Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
    invoke-static {v0}, Lcom/android/deskclock/timer/TimerFragment;->access$400(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 742
    const-string v0, "AlarmClock"

    const-string v1, "TimerFragment mAdapter null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$7$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$7;

    iget-object v0, v0, Lcom/android/deskclock/timer/TimerFragment$7;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    #getter for: Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;
    invoke-static {v0}, Lcom/android/deskclock/timer/TimerFragment;->access$300(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$7$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$7;

    iget-object v0, v0, Lcom/android/deskclock/timer/TimerFragment$7;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    #getter for: Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;
    invoke-static {v0}, Lcom/android/deskclock/timer/TimerFragment;->access$800(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/TimerSetupView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/TimerSetupView;->reset()V

    .line 745
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$7$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$7;

    iget-object v0, v0, Lcom/android/deskclock/timer/TimerFragment$7;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    #calls: Lcom/android/deskclock/timer/TimerFragment;->gotoSetupView()V
    invoke-static {v0}, Lcom/android/deskclock/timer/TimerFragment;->access$1000(Lcom/android/deskclock/timer/TimerFragment;)V

    .line 753
    :cond_0
    :goto_0
    const-string v0, "AlarmClock"

    const-string v1, "TimerFragment updateTimersState DELETE_TIME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$7$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$7;

    iget-object v0, v0, Lcom/android/deskclock/timer/TimerFragment$7;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$7$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$7;

    iget-object v1, v1, Lcom/android/deskclock/timer/TimerFragment$7;->val$t:Lcom/android/deskclock/timer/TimerObj;

    const-string v2, "delete_timer"

    #calls: Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/deskclock/timer/TimerFragment;->access$900(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    .line 755
    return-void

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$7$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$7;

    iget-object v0, v0, Lcom/android/deskclock/timer/TimerFragment$7;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    #getter for: Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;
    invoke-static {v0}, Lcom/android/deskclock/timer/TimerFragment;->access$300(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;->onEmptyList()V

    goto :goto_0
.end method
