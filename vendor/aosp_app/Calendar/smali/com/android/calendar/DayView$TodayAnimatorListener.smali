.class Lcom/android/calendar/DayView$TodayAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TodayAnimatorListener"
.end annotation


# instance fields
.field private volatile mAnimator:Landroid/animation/Animator;

.field private volatile mFadingIn:Z

.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayView;)V
    .locals 1
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mFadingIn:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 270
    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    if-eq v0, p1, :cond_0

    .line 272
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 273
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 274
    monitor-exit p0

    .line 297
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mFadingIn:Z

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 279
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v1, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    const-string v2, "animateTodayAlpha"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 283
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mFadingIn:Z

    .line 285
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 286
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 287
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 296
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 289
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/DayView;->mAnimateToday:Z
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$602(Lcom/android/calendar/DayView;Z)Z

    .line 290
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$702(Lcom/android/calendar/DayView;I)I

    .line 291
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 293
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 294
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 281
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
    .line 300
    iput-object p1, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 301
    return-void
.end method

.method public setFadingIn(Z)V
    .locals 0
    .parameter "fadingIn"

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mFadingIn:Z

    .line 305
    return-void
.end method
