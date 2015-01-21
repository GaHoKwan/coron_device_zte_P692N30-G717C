.class public Lcom/android/deskclock/timer/TimerFragment;
.super Lcom/android/deskclock/DeskClockFragment;
.source "TimerFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter;,
        Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;,
        Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;,
        Lcom/android/deskclock/timer/TimerFragment$ClickAction;
    }
.end annotation


# static fields
.field private static final KEY_ENTRY_STATE:Ljava/lang/String; = "entry_state"

.field private static final KEY_SETUP_SELECTED:Ljava/lang/String; = "_setup_selected"

.field private static final TAG:Ljava/lang/String; = "AlarmClock"


# instance fields
.field private mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

.field private mAddTimer:Landroid/widget/ImageButton;

.field private mCancel:Landroid/widget/Button;

.field private final mClockTick:Ljava/lang/Runnable;

.field private mLastVisibleView:Landroid/view/View;

.field private mNewTimerPage:Landroid/view/View;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSeperator:Landroid/view/View;

.field private mStart:Landroid/widget/Button;

.field private mTicking:Z

.field private mTimerFooter:Landroid/view/View;

.field private mTimerSetup:Lcom/android/deskclock/TimerSetupView;

.field private mTimersList:Landroid/widget/ListView;

.field private mTimersListPage:Landroid/view/View;

.field private mViewState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lcom/android/deskclock/DeskClockFragment;-><init>()V

    .line 68
    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTicking:Z

    .line 82
    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    .line 353
    new-instance v0, Lcom/android/deskclock/timer/TimerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/timer/TimerFragment$1;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mClockTick:Ljava/lang/Runnable;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerFragment$ClickAction;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->onClickHelper(Lcom/android/deskclock/timer/TimerFragment$ClickAction;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->setTimerButtons(Lcom/android/deskclock/timer/TimerObj;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/deskclock/timer/TimerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->gotoSetupView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->onLabelPressed(Lcom/android/deskclock/timer/TimerObj;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/deskclock/timer/TimerFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mClockTick:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/deskclock/timer/TimerFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/deskclock/timer/TimerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->gotoTimersView()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/TimerSetupView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    return-void
.end method

.method private cancelTimerNotification(I)V
    .locals 3
    .parameter "timerId"

    .prologue
    .line 968
    const-string v0, "AlarmClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimerFragment cancelTimerNotification timerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 970
    return-void
.end method

.method private gotoSetupView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 645
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e008b

    if-ne v1, v2, :cond_1

    .line 646
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 647
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 648
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 669
    :goto_0
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->stopClockTicks()V

    .line 670
    const-string v1, "AlarmClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerFragment gotoSetupView mAdapter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v3}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 672
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 673
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mSeperator:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 678
    :goto_1
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    invoke-virtual {v1}, Lcom/android/deskclock/TimerSetupView;->updateStartButton()V

    .line 679
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    invoke-virtual {v1}, Lcom/android/deskclock/TimerSetupView;->updateDeleteButton()V

    .line 680
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    .line 681
    return-void

    .line 651
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 652
    .local v0, a:Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 653
    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 654
    new-instance v1, Lcom/android/deskclock/timer/TimerFragment$5;

    invoke-direct {v1, p0}, Lcom/android/deskclock/timer/TimerFragment$5;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 666
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 675
    .end local v0           #a:Landroid/animation/ObjectAnimator;
    :cond_2
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mSeperator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 676
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 651
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private gotoTimersView()V
    .locals 4

    .prologue
    .line 683
    const-string v1, "AlarmClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerFragment gotoTimersView mLastVisibleView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e0087

    if-ne v1, v2, :cond_1

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 686
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 687
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 708
    :goto_0
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->startClockTicks()V

    .line 709
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    .line 710
    return-void

    .line 690
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 691
    .local v0, a:Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 692
    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 693
    new-instance v1, Lcom/android/deskclock/timer/TimerFragment$6;

    invoke-direct {v1, p0}, Lcom/android/deskclock/timer/TimerFragment$6;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 706
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 690
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private onClickHelper(Lcom/android/deskclock/timer/TimerFragment$ClickAction;)V
    .locals 5
    .parameter "clickAction"

    .prologue
    .line 719
    const-string v2, "AlarmClock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimerFragment onClickHelper clickAction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mAction:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget v2, p1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mAction:I

    packed-switch v2, :pswitch_data_0

    .line 773
    :goto_0
    return-void

    .line 722
    :pswitch_0
    iget-object v1, p1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mTimer:Lcom/android/deskclock/timer/TimerObj;

    .line 723
    .local v1, t:Lcom/android/deskclock/timer/TimerObj;
    iget v2, v1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 724
    iget v2, v1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-direct {p0, v2}, Lcom/android/deskclock/timer/TimerFragment;->cancelTimerNotification(I)V

    .line 727
    :cond_0
    iget-object v2, v1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 728
    .local v0, a:Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 729
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 730
    new-instance v2, Lcom/android/deskclock/timer/TimerFragment$7;

    invoke-direct {v2, p0, v1}, Lcom/android/deskclock/timer/TimerFragment$7;-><init>(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 760
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 763
    .end local v0           #a:Landroid/animation/ObjectAnimator;
    .end local v1           #t:Lcom/android/deskclock/timer/TimerObj;
    :pswitch_1
    iget-object v2, p1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mTimer:Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {p0, v2}, Lcom/android/deskclock/timer/TimerFragment;->onPlusOneButtonPressed(Lcom/android/deskclock/timer/TimerObj;)V

    .line 764
    iget-object v2, p1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mTimer:Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {p0, v2}, Lcom/android/deskclock/timer/TimerFragment;->setTimerButtons(Lcom/android/deskclock/timer/TimerObj;)V

    goto :goto_0

    .line 767
    :pswitch_2
    iget-object v2, p1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mTimer:Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {p0, v2}, Lcom/android/deskclock/timer/TimerFragment;->onStopButtonPressed(Lcom/android/deskclock/timer/TimerObj;)V

    .line 768
    iget-object v2, p1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mTimer:Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {p0, v2}, Lcom/android/deskclock/timer/TimerFragment;->setTimerButtons(Lcom/android/deskclock/timer/TimerObj;)V

    goto :goto_0

    .line 720
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 727
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private onLabelPressed(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 854
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 855
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "label_dialog"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 856
    .local v2, prev:Landroid/app/Fragment;
    if-eqz v2, :cond_0

    .line 857
    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 859
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 862
    iget-object v3, p1, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/android/deskclock/LabelDialogFragment;->newInstance(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;Ljava/lang/String;)Lcom/android/deskclock/LabelDialogFragment;

    move-result-object v1

    .line 864
    .local v1, newFragment:Lcom/android/deskclock/LabelDialogFragment;
    const-string v3, "label_dialog"

    invoke-virtual {v1, v0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 865
    return-void
.end method

.method private onPlusOneButtonPressed(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 9
    .parameter "t"

    .prologue
    const-wide/32 v3, 0xea60

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 776
    const-string v0, "AlarmClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimerFragment onPlusOneButtonPressed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 811
    :goto_0
    return-void

    .line 779
    :pswitch_0
    invoke-virtual {p1, v3, v4}, Lcom/android/deskclock/timer/TimerObj;->addTime(J)V

    .line 780
    invoke-virtual {p1, v8}, Lcom/android/deskclock/timer/TimerObj;->updateTimeLeft(Z)J

    move-result-wide v6

    .line 781
    .local v6, timeLeft:J
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/deskclock/timer/TimerListItem;->setTime(JZ)V

    .line 782
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0, v6, v7}, Lcom/android/deskclock/timer/TimerListItem;->setLength(J)V

    .line 783
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 784
    const-string v0, "timer_update"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    goto :goto_0

    .line 788
    .end local v6           #timeLeft:J
    :pswitch_1
    iput v5, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 789
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    .line 790
    iput-wide v3, p1, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iput-wide v3, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    .line 791
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    iget-wide v1, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/deskclock/timer/TimerListItem;->setTime(JZ)V

    .line 792
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    iget-wide v1, p1, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iget-wide v3, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/deskclock/timer/TimerListItem;->set(JJZ)V

    .line 793
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerListItem;->start()V

    .line 794
    const-string v0, "timer_reset"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    .line 795
    const-string v0, "start_timer"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    .line 796
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->updateTimesUpMode(Lcom/android/deskclock/timer/TimerObj;)V

    .line 797
    iget v0, p1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/TimerFragment;->cancelTimerNotification(I)V

    goto :goto_0

    .line 801
    :pswitch_2
    const/4 v0, 0x5

    iput v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 802
    iget-wide v0, p1, Lcom/android/deskclock/timer/TimerObj;->mSetupLength:J

    iput-wide v0, p1, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iput-wide v0, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    .line 803
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerListItem;->stop()V

    .line 804
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    iget-wide v1, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/deskclock/timer/TimerListItem;->setTime(JZ)V

    .line 805
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    iget-wide v1, p1, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iget-wide v3, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/deskclock/timer/TimerListItem;->set(JJZ)V

    .line 806
    const-string v0, "timer_reset"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 777
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onStopButtonPressed(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 6
    .parameter "t"

    .prologue
    const/4 v3, 0x1

    .line 814
    const-string v0, "AlarmClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimerFragment onStopButtonPressed t.mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 851
    :goto_0
    :pswitch_0
    return-void

    .line 818
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 819
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerListItem;->pause()V

    .line 820
    invoke-virtual {p1, v3}, Lcom/android/deskclock/timer/TimerObj;->updateTimeLeft(Z)J

    .line 821
    const-string v0, "timer_stop"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    goto :goto_0

    .line 825
    :pswitch_2
    iput v3, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 826
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iget-wide v4, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    .line 827
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerListItem;->start()V

    .line 828
    const-string v0, "start_timer"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    goto :goto_0

    .line 831
    :pswitch_3
    const/4 v0, 0x4

    iput v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 833
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerListItem;->done()V

    .line 836
    :cond_0
    const-string v0, "timer_done"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    .line 837
    iget v0, p1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/TimerFragment;->cancelTimerNotification(I)V

    .line 838
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->updateTimesUpMode(Lcom/android/deskclock/timer/TimerObj;)V

    goto :goto_0

    .line 843
    :pswitch_4
    iput v3, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 844
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iget-wide v4, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    .line 845
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerListItem;->start()V

    .line 846
    const-string v0, "start_timer"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    goto :goto_0

    .line 815
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private saveViewState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 592
    const-string v1, "_setup_selected"

    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 593
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    const-string v1, "entry_state"

    invoke-virtual {v0, p1, v1}, Lcom/android/deskclock/TimerSetupView;->saveEntryState(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 594
    return-void

    .line 592
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTimerButtons(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 12
    .parameter "t"

    .prologue
    const v11, 0x7f0d006d

    const v10, 0x7f0d006a

    const v9, 0x7f0b0011

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 887
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 888
    .local v0, a:Landroid/content/Context;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    iget-object v5, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    const v6, 0x7f0e0096

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 892
    .local v2, plusOne:Landroid/widget/ImageButton;
    iget-object v5, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    const v6, 0x7f0e0076

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/CountingTimerView;

    .line 894
    .local v1, countingTimerView:Lcom/android/deskclock/timer/CountingTimerView;
    iget-object v5, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    const v6, 0x7f0e0097

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 895
    .local v4, stop:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 896
    .local v3, r:Landroid/content/res/Resources;
    iget v5, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 898
    :pswitch_0
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 899
    const v5, 0x7f0d006c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 900
    const v5, 0x7f02005f

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 901
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 902
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(I)V

    .line 903
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 904
    invoke-virtual {v1, v8}, Lcom/android/deskclock/timer/CountingTimerView;->setVirtualButtonEnabled(Z)V

    goto :goto_0

    .line 907
    :pswitch_1
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 908
    const v5, 0x7f0d006e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 909
    const v5, 0x7f020062

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 910
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 911
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 912
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 913
    invoke-virtual {v1, v8}, Lcom/android/deskclock/timer/CountingTimerView;->setVirtualButtonEnabled(Z)V

    goto/16 :goto_0

    .line 916
    :pswitch_2
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 917
    const v5, 0x7f02005f

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 918
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 919
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 920
    invoke-virtual {v1, v8}, Lcom/android/deskclock/timer/CountingTimerView;->setVirtualButtonEnabled(Z)V

    goto/16 :goto_0

    .line 923
    :pswitch_3
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 924
    const v5, 0x7f0d006e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 925
    const v5, 0x7f020062

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 926
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 927
    invoke-virtual {v1, v7}, Lcom/android/deskclock/timer/CountingTimerView;->setVirtualButtonEnabled(Z)V

    goto/16 :goto_0

    .line 930
    :pswitch_4
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 931
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 932
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 933
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 934
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 935
    invoke-virtual {v1, v8}, Lcom/android/deskclock/timer/CountingTimerView;->setVirtualButtonEnabled(Z)V

    goto/16 :goto_0

    .line 896
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private startClockTicks()V
    .locals 4

    .prologue
    .line 943
    const-string v0, "AlarmClock"

    const-string v1, "TimerFragment startClockTicks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mClockTick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 945
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTicking:Z

    .line 946
    return-void
.end method

.method private stopClockTicks()V
    .locals 2

    .prologue
    .line 948
    const-string v0, "AlarmClock"

    const-string v1, "TimerFragment stopClockTicks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTicking:Z

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mClockTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 951
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTicking:Z

    .line 953
    :cond_0
    return-void
.end method

.method private updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V
    .locals 4
    .parameter "t"
    .parameter "action"

    .prologue
    .line 956
    const-string v1, "AlarmClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerFragment updateTimersState acion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-string v1, "delete_timer"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v1}, Lcom/android/deskclock/timer/TimerObj;->writeToSharedPref(Landroid/content/SharedPreferences;)V

    .line 960
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 961
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    const-string v1, "timer.intent.extra"

    iget v2, p1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 963
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 964
    const-string v1, "AlarmClock"

    const-string v2, "TimerFragment updateTimersState sendBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    return-void
.end method

.method private updateTimesUpMode(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 3
    .parameter "timerObj"

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 974
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->removeTimer(Lcom/android/deskclock/timer/TimerObj;)V

    .line 975
    const-string v0, "AlarmClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTimesUpMode removeTimer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 977
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    invoke-interface {v0}, Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;->onEmptyList()V

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    invoke-interface {v0}, Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;->onListChanged()V

    goto :goto_0
.end method


# virtual methods
.method createAdapter(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
    .locals 1
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;-><init>(Lcom/android/deskclock/timer/TimerFragment;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 111
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter;-><init>(Lcom/android/deskclock/timer/TimerFragment;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 714
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/timer/TimerFragment$ClickAction;

    .line 715
    .local v0, tag:Lcom/android/deskclock/timer/TimerFragment$ClickAction;
    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/TimerFragment;->onClickHelper(Lcom/android/deskclock/timer/TimerFragment$ClickAction;)V

    .line 716
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 397
    const-string v0, "AlarmClock"

    const-string v1, "TimerFragment onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    if-eqz p1, :cond_0

    .line 400
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    .line 403
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 404
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f0b0008

    const/4 v8, 0x0

    .line 409
    const-string v7, "AlarmClock"

    const-string v9, "TimerFragment onCreateView"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const v7, 0x7f04002a

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 414
    .local v6, v:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 415
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v7, "times_up"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 416
    const-string v7, "times_up"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 418
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :cond_0
    :goto_0
    const v7, 0x7f0e0088

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    .line 428
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lcom/android/deskclock/DeskClock;

    if-eqz v7, :cond_1

    .line 429
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f09004e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 430
    .local v1, dividerHeight:F
    const v7, 0x7f040009

    iget-object v9, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    invoke-virtual {p1, v7, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 431
    .local v3, footerView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 432
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v7, v7

    sub-float/2addr v7, v1

    float-to-int v7, v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 433
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    invoke-virtual {v3, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 435
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 436
    const v7, 0x7f04000a

    iget-object v9, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    invoke-virtual {p1, v7, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 437
    .local v4, headerView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 438
    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v7, v7

    sub-float/2addr v7, v1

    float-to-int v7, v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 439
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 445
    .end local v1           #dividerHeight:F
    .end local v3           #footerView:Landroid/view/View;
    .end local v4           #headerView:Landroid/view/View;
    .end local v5           #params:Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    const v7, 0x7f0e008b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;

    .line 446
    const v7, 0x7f0e0087

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    .line 447
    const v7, 0x7f0e008c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/deskclock/TimerSetupView;

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    .line 448
    const v7, 0x7f0e008e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mSeperator:Landroid/view/View;

    .line 449
    const v7, 0x7f0e008d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    .line 450
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    new-instance v9, Lcom/android/deskclock/timer/TimerFragment$2;

    invoke-direct {v9, p0}, Lcom/android/deskclock/timer/TimerFragment$2;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    const v7, 0x7f0e008f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mStart:Landroid/widget/Button;

    .line 460
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mStart:Landroid/widget/Button;

    new-instance v9, Lcom/android/deskclock/timer/TimerFragment$3;

    invoke-direct {v9, p0}, Lcom/android/deskclock/timer/TimerFragment$3;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    iget-object v9, p0, Lcom/android/deskclock/timer/TimerFragment;->mStart:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Lcom/android/deskclock/TimerSetupView;->registerStartButton(Landroid/widget/Button;)V

    .line 481
    const v7, 0x7f0e008a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mAddTimer:Landroid/widget/ImageButton;

    .line 482
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mAddTimer:Landroid/widget/ImageButton;

    new-instance v9, Lcom/android/deskclock/timer/TimerFragment$4;

    invoke-direct {v9, p0}, Lcom/android/deskclock/timer/TimerFragment$4;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    const v7, 0x7f0e0089

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerFooter:Landroid/view/View;

    .line 492
    iget-object v9, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerFooter:Landroid/view/View;

    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    if-nez v7, :cond_2

    move v7, v8

    :goto_2
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 493
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 494
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mNotificationManager:Landroid/app/NotificationManager;

    .line 497
    return-object v6

    .line 419
    :catch_0
    move-exception v2

    .line 420
    .local v2, e:Ljava/lang/ClassCastException;
    const-string v7, "AlarmClock"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " must implement OnEmptyListListener"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 442
    .end local v2           #e:Ljava/lang/ClassCastException;
    :cond_1
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 492
    :cond_2
    const/16 v7, 0x8

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 502
    const-string v0, "AlarmClock"

    const-string v1, "TimerFragment onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    .line 504
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/TimerFragment;->saveViewState(Landroid/os/Bundle;)V

    .line 505
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 506
    return-void
.end method

.method public onPageChanged(I)V
    .locals 1
    .parameter "page"

    .prologue
    .line 570
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->sort()V

    .line 573
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 556
    const-string v0, "AlarmClock"

    const-string v1, "TimerFragment onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/deskclock/DeskClock;

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/DeskClock;

    invoke-virtual {v0, p0}, Lcom/android/deskclock/DeskClock;->unregisterPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V

    .line 560
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 561
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->stopClockTicks()V

    .line 562
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->saveGlobalState()V

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 566
    return-void
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 510
    const-string v5, "AlarmClock"

    const-string v6, "TimerFragment onResume"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    instance-of v5, v5, Lcom/android/deskclock/DeskClock;

    if-eqz v5, :cond_0

    .line 512
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/deskclock/DeskClock;

    invoke-virtual {v5, p0}, Lcom/android/deskclock/DeskClock;->registerPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V

    .line 514
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 515
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 517
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v5, v6}, Lcom/android/deskclock/timer/TimerFragment;->createAdapter(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    .line 518
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5, v12}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 520
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "from_notification"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 524
    const-string v5, "AlarmClock"

    const-string v6, "TimerFragment onResume FROM_NOTIFICATION"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "timer_notif_time"

    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v7

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 526
    .local v1, now:J
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "timer_notif_id"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 527
    .local v4, timerId:I
    if-eq v4, v10, :cond_1

    .line 528
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    iget-object v5, v5, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lcom/android/deskclock/timer/Timers;->findTimer(Ljava/util/ArrayList;I)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v3

    .line 529
    .local v3, t:Lcom/android/deskclock/timer/TimerObj;
    iget-wide v5, v3, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iget-wide v7, v3, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    sub-long v7, v1, v7

    sub-long/2addr v5, v7

    iput-wide v5, v3, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    .line 530
    invoke-direct {p0, v4}, Lcom/android/deskclock/timer/TimerFragment;->cancelTimerNotification(I)V

    .line 532
    .end local v3           #t:Lcom/android/deskclock/timer/TimerObj;
    :cond_1
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 533
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "from_notification"

    invoke-interface {v0, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 534
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 536
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #now:J
    .end local v4           #timerId:I
    :cond_2
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "from_alert"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 539
    const-string v5, "AlarmClock"

    const-string v6, "TimerFragment onResume FROM_ALERT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 541
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "from_alert"

    invoke-interface {v0, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 542
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 545
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 546
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_4

    .line 547
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 548
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mSeperator:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 550
    :cond_4
    iput-object v12, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    .line 551
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->setPage()V

    .line 552
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 577
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 578
    const-string v0, "AlarmClock"

    const-string v1, "TimerFragment onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 585
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->saveViewState(Landroid/os/Bundle;)V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 11
    .parameter "prefs"
    .parameter "key"

    .prologue
    const/4 v10, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 992
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 993
    const-string v5, "from_notification"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "timer_notif_id"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "timer_notif_time"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const-string v5, "from_notification"

    invoke-interface {p1, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1002
    const-string v5, "AlarmClock"

    const-string v6, "TimerFragment onSharedPrefChanged FROM_NOTIFICATION || NOTIF_ID || NOTIF_TIME"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const-string v5, "timer_notif_time"

    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v6

    invoke-interface {p1, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1004
    .local v1, now:J
    const-string v5, "timer_notif_id"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1005
    .local v4, timerId:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v5, v6}, Lcom/android/deskclock/timer/TimerFragment;->createAdapter(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    .line 1006
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5, v10}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1007
    if-eq v4, v8, :cond_1

    .line 1008
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    iget-object v5, v5, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lcom/android/deskclock/timer/Timers;->findTimer(Ljava/util/ArrayList;I)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v3

    .line 1009
    .local v3, t:Lcom/android/deskclock/timer/TimerObj;
    iget-wide v5, v3, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iget-wide v7, v3, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    sub-long v7, v1, v7

    sub-long/2addr v5, v7

    iput-wide v5, v3, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    .line 1010
    invoke-direct {p0, v4}, Lcom/android/deskclock/timer/TimerFragment;->cancelTimerNotification(I)V

    .line 1012
    .end local v3           #t:Lcom/android/deskclock/timer/TimerObj;
    :cond_1
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1013
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1014
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "from_notification"

    invoke-interface {v0, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1015
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1017
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #now:J
    .end local v4           #timerId:I
    :cond_2
    const-string v5, "from_alert"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "from_alert"

    invoke-interface {p1, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1020
    const-string v5, "AlarmClock"

    const-string v6, "TimerFragment onSharedPrefChanged FROM_ALERT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1022
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "from_alert"

    invoke-interface {v0, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1023
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1024
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v5, v6}, Lcom/android/deskclock/timer/TimerFragment;->createAdapter(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    .line 1025
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5, v10}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1026
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1029
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    return-void
.end method

.method public restartAdapter()V
    .locals 2

    .prologue
    .line 985
    const-string v0, "AlarmClock"

    const-string v1, "TimerFragment restartAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/timer/TimerFragment;->createAdapter(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    .line 987
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 988
    return-void
.end method

.method public setLabel(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V
    .locals 4
    .parameter "timer"
    .parameter "label"

    .prologue
    .line 872
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    iget v2, p1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {v1, v2}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->findTimerPositionById(I)I

    move-result v0

    .line 873
    .local v0, timerId:I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 874
    const-string v1, "Timer setLabel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLabel fail, the timer not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :goto_0
    return-void

    .line 877
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/TimerObj;

    iput-object p2, v1, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    .line 878
    iget v1, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 880
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/deskclock/timer/TimerReceiver;->showExpiredAlarmNotification(Landroid/content/Context;Lcom/android/deskclock/timer/TimerObj;)V

    .line 883
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->invalidateViews()V

    goto :goto_0
.end method

.method public setPage()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 598
    const-string v1, "AlarmClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerFragment setPage mViewState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const-string v1, "AlarmClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerFragment setPage mAdapter.getCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v3}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    const-string v2, "_setup_selected"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 602
    .local v0, switchToSetupView:Z
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    const-string v3, "entry_state"

    invoke-virtual {v1, v2, v3}, Lcom/android/deskclock/TimerSetupView;->restoreEntryState(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 603
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    .line 607
    :goto_0
    const-string v1, "AlarmClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerFragment setPage switchToSetupView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    if-eqz v0, :cond_2

    .line 609
    const-string v1, "AlarmClock"

    const-string v2, "TimerFragment setPage gotoSetupView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->gotoSetupView()V

    .line 615
    :goto_1
    return-void

    .line 605
    .end local v0           #switchToSetupView:Z
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .restart local v0       #switchToSetupView:Z
    :cond_1
    goto :goto_0

    .line 612
    :cond_2
    const-string v1, "AlarmClock"

    const-string v2, "TimerFragment setPage gotoTimersView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->gotoTimersView()V

    goto :goto_1
.end method

.method public stopAllTimesUpTimers()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 618
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    move v1, v3

    .line 619
    .local v1, notifyChange:Z
    :goto_0
    const-string v5, "AlarmClock"

    const-string v6, "TimerFragment stopAllTimesUpTimers"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :goto_1
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 621
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/timer/TimerObj;

    .line 622
    .local v2, timerObj:Lcom/android/deskclock/timer/TimerObj;
    iget v5, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 623
    const-string v5, "AlarmClock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stopAllTimesUpTimers stop Timer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " all [ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v7}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-direct {p0, v2}, Lcom/android/deskclock/timer/TimerFragment;->onStopButtonPressed(Lcom/android/deskclock/timer/TimerObj;)V

    goto :goto_1

    .end local v1           #notifyChange:Z
    .end local v2           #timerObj:Lcom/android/deskclock/timer/TimerObj;
    :cond_0
    move v1, v4

    .line 618
    goto :goto_0

    .line 631
    .restart local v1       #notifyChange:Z
    .restart local v2       #timerObj:Lcom/android/deskclock/timer/TimerObj;
    :cond_1
    const-string v5, "AlarmClock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Warning!!! timer [ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ] is not TIMEUP status but in TimerUpList, just remove it. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-direct {p0, v2}, Lcom/android/deskclock/timer/TimerFragment;->updateTimesUpMode(Lcom/android/deskclock/timer/TimerObj;)V

    goto :goto_1

    .line 637
    .end local v2           #timerObj:Lcom/android/deskclock/timer/TimerObj;
    :cond_2
    if-eqz v1, :cond_3

    .line 638
    iget-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 639
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "from_alert"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 640
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 642
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    return-void
.end method
