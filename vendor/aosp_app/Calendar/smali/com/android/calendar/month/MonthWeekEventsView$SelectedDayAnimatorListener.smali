.class Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MonthWeekEventsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/month/MonthWeekEventsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectedDayAnimatorListener"
.end annotation


# instance fields
.field private volatile mAnimator:Landroid/animation/Animator;

.field private volatile mFadingIn:Z

.field final synthetic this$0:Lcom/android/calendar/month/MonthWeekEventsView;


# direct methods
.method constructor <init>(Lcom/android/calendar/month/MonthWeekEventsView;)V
    .locals 1
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->mFadingIn:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    if-eq v0, p1, :cond_0

    .line 259
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 260
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 261
    monitor-exit p0

    .line 284
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->mFadingIn:Z

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    #getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$300(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    #getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$300(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 266
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    #getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$300(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    const-string v2, "animateSelectedDayAlpha"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    #setter for: Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->access$302(Lcom/android/calendar/month/MonthWeekEventsView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 270
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    #getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$300(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->mFadingIn:Z

    .line 272
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    #getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$300(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 273
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    #getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$300(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 274
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    #getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$300(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 283
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 276
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateSelectedDay:Z
    invoke-static {v0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->access$402(Lcom/android/calendar/month/MonthWeekEventsView;Z)Z

    .line 277
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateSelectedDayAlpha:I
    invoke-static {v0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->access$502(Lcom/android/calendar/month/MonthWeekEventsView;I)I

    .line 278
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 280
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->access$302(Lcom/android/calendar/month/MonthWeekEventsView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 281
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 268
    nop

    :array_0
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setAnimator(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 288
    return-void
.end method

.method public setFadingIn(Z)V
    .locals 0
    .parameter "fadingIn"

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/android/calendar/month/MonthWeekEventsView$SelectedDayAnimatorListener;->mFadingIn:Z

    .line 292
    return-void
.end method
