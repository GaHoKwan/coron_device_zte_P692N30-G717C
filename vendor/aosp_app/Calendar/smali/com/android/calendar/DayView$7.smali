.class Lcom/android/calendar/DayView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DayView;->getAllDayAnimator()Landroid/animation/ObjectAnimator;
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
    .line 3984
    iput-object p1, p0, Lcom/android/calendar/DayView$7;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3987
    iget-object v2, p0, Lcom/android/calendar/DayView$7;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mCancellingAnimations:Z
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2500(Lcom/android/calendar/DayView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3989
    iget-object v2, p0, Lcom/android/calendar/DayView$7;->this$0:Lcom/android/calendar/DayView;

    #setter for: Lcom/android/calendar/DayView;->mAnimateDayHeight:I
    invoke-static {v2, v0}, Lcom/android/calendar/DayView;->access$2602(Lcom/android/calendar/DayView;I)I

    .line 3990
    invoke-static {}, Lcom/android/calendar/DayView;->access$2800()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$2702(Z)Z

    .line 3992
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView$7;->this$0:Lcom/android/calendar/DayView;

    #setter for: Lcom/android/calendar/DayView;->mRemeasure:Z
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$2102(Lcom/android/calendar/DayView;Z)Z

    .line 3993
    iget-object v0, p0, Lcom/android/calendar/DayView$7;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 3994
    return-void
.end method
