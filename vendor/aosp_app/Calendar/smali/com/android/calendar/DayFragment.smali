.class public Lcom/android/calendar/DayFragment;
.super Landroid/app/Fragment;
.source "DayFragment.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# static fields
.field protected static final BUNDLE_KEY_RESTORE_TIME:Ljava/lang/String; = "key_restore_time"

.field private static final TAG:Ljava/lang/String; = "DayFragment"

.field private static final VIEW_ID:I = 0x1


# instance fields
.field mEventLoader:Lcom/android/calendar/EventLoader;

.field protected mInAnimationBackward:Landroid/view/animation/Animation;

.field protected mInAnimationForward:Landroid/view/animation/Animation;

.field private mNumDays:I

.field protected mOutAnimationBackward:Landroid/view/animation/Animation;

.field protected mOutAnimationForward:Landroid/view/animation/Animation;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field mSelectedDay:Landroid/text/format/Time;

.field private final mTZUpdater:Ljava/lang/Runnable;

.field protected mViewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 62
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    .line 64
    new-instance v0, Lcom/android/calendar/DayFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayFragment$1;-><init>(Lcom/android/calendar/DayFragment;)V

    iput-object v0, p0, Lcom/android/calendar/DayFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 79
    iget-object v0, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 80
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 2
    .parameter "timeMillis"
    .parameter "numOfDays"

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 62
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    .line 64
    new-instance v0, Lcom/android/calendar/DayFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayFragment$1;-><init>(Lcom/android/calendar/DayFragment;)V

    iput-object v0, p0, Lcom/android/calendar/DayFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 83
    iput p3, p0, Lcom/android/calendar/DayFragment;->mNumDays:I

    .line 84
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;JI)V
    .locals 1
    .parameter "context"
    .parameter "timeMillis"
    .parameter "numOfDays"

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 62
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    .line 64
    new-instance v0, Lcom/android/calendar/DayFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayFragment$1;-><init>(Lcom/android/calendar/DayFragment;)V

    iput-object v0, p0, Lcom/android/calendar/DayFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 98
    iput p4, p0, Lcom/android/calendar/DayFragment;->mNumDays:I

    .line 99
    invoke-static {p1, p2, p3}, Lcom/android/calendar/Utils;->getValidTimeInCalendar(Landroid/content/Context;J)Landroid/text/format/Time;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/DayFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/calendar/DayFragment;->mTZUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method private goTo(Landroid/text/format/Time;ZZ)V
    .locals 6
    .parameter "goToTime"
    .parameter "ignoreTime"
    .parameter "animateToday"

    .prologue
    const/4 v5, 0x0

    .line 190
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    if-nez v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v3, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 235
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 198
    .local v0, currentView:Lcom/android/calendar/DayView;
    if-nez v0, :cond_1

    .line 199
    const-string v3, "DayFragment"

    const-string v4, "getCurrentView() return null,return"

    invoke-static {v3, v4}, Lcom/mediatek/calendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {v0, v5}, Lcom/android/calendar/DayView;->selectionFocusShow(Z)V

    .line 205
    invoke-virtual {v0, p1}, Lcom/android/calendar/DayView;->compareToVisibleTimeRange(Landroid/text/format/Time;)I

    move-result v1

    .line 207
    .local v1, diff:I
    if-nez v1, :cond_2

    .line 209
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/calendar/DayView;->setSelected(Landroid/text/format/Time;ZZ)V

    goto :goto_0

    .line 212
    :cond_2
    if-lez v1, :cond_4

    .line 213
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/DayFragment;->mInAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 214
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/DayFragment;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 220
    :goto_1
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/DayView;

    .line 222
    .local v2, next:Lcom/android/calendar/DayView;
    invoke-virtual {v2, v5}, Lcom/android/calendar/DayView;->selectionFocusShow(Z)V

    .line 224
    if-eqz p2, :cond_3

    .line 225
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->getFirstVisibleHour()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/DayView;->setFirstVisibleHour(I)V

    .line 228
    :cond_3
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/calendar/DayView;->setSelected(Landroid/text/format/Time;ZZ)V

    .line 229
    invoke-virtual {v2}, Lcom/android/calendar/DayView;->reloadEvents()V

    .line 230
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewAnimator;->showNext()V

    .line 231
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 232
    invoke-virtual {v2}, Lcom/android/calendar/DayView;->updateTitle()V

    .line 233
    invoke-virtual {v2}, Lcom/android/calendar/DayView;->restartCurrentTimeUpdates()V

    goto :goto_0

    .line 216
    .end local v2           #next:Lcom/android/calendar/DayView;
    :cond_4
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/DayFragment;->mInAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 217
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/DayFragment;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method


# virtual methods
.method public eventsChanged()V
    .locals 2

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    if-nez v1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 260
    .local v0, view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->clearCachedEvents()V

    .line 261
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->reloadEvents()V

    .line 263
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .end local v0           #view:Lcom/android/calendar/DayView;
    check-cast v0, Lcom/android/calendar/DayView;

    .line 264
    .restart local v0       #view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->clearCachedEvents()V

    goto :goto_0
.end method

.method getNewEvent()Lcom/android/calendar/Event;
    .locals 2

    .prologue
    .line 278
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 279
    .local v0, view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->getNewEvent()Lcom/android/calendar/Event;

    move-result-object v1

    return-object v1
.end method

.method public getNextView()Lcom/android/calendar/DayView;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    return-object v0
.end method

.method getSelectedEvent()Lcom/android/calendar/Event;
    .locals 2

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 269
    .local v0, view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->getSelectedEvent()Lcom/android/calendar/Event;

    move-result-object v1

    return-object v1
.end method

.method public getSelectedTimeInMillis()J
    .locals 4

    .prologue
    const-wide/16 v1, -0x1

    .line 245
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    if-nez v3, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-wide v1

    .line 248
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 249
    .local v0, view:Lcom/android/calendar/DayView;
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 287
    const-wide/16 v0, 0xa0

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 10
    .parameter "msg"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 291
    iget-wide v3, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v5, 0x20

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    .line 295
    iget-object v3, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    iget-wide v4, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-wide v4, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2

    :goto_1
    invoke-direct {p0, v3, v0, v1}, Lcom/android/calendar/DayFragment;->goTo(Landroid/text/format/Time;ZZ)V

    .line 300
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 295
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 297
    :cond_3
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/android/calendar/DayFragment;->eventsChanged()V

    goto :goto_2
.end method

.method isEventSelected()Z
    .locals 2

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 274
    .local v0, view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->isEventSelected()Z

    move-result v1

    return v1
.end method

.method public makeView()Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 130
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 131
    new-instance v0, Lcom/android/calendar/DayView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/DayFragment;->mEventLoader:Lcom/android/calendar/EventLoader;

    iget v5, p0, Lcom/android/calendar/DayFragment;->mNumDays:I

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/DayView;-><init>(Landroid/content/Context;Lcom/android/calendar/CalendarController;Landroid/widget/ViewSwitcher;Lcom/android/calendar/EventLoader;I)V

    .line 133
    .local v0, view:Lcom/android/calendar/DayView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 134
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1, v7, v7}, Lcom/android/calendar/DayView;->setSelected(Landroid/text/format/Time;ZZ)V

    .line 137
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 108
    .local v0, context:Landroid/content/Context;
    const/high16 v1, 0x7f05

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayFragment;->mInAnimationForward:Landroid/view/animation/Animation;

    .line 109
    const v1, 0x7f050001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayFragment;->mOutAnimationForward:Landroid/view/animation/Animation;

    .line 110
    const v1, 0x7f050002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayFragment;->mInAnimationBackward:Landroid/view/animation/Animation;

    .line 111
    const v1, 0x7f050003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayFragment;->mOutAnimationBackward:Landroid/view/animation/Animation;

    .line 113
    new-instance v1, Lcom/android/calendar/EventLoader;

    invoke-direct {v1, v0}, Lcom/android/calendar/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/DayFragment;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 114
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 119
    const v1, 0x7f04001e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, v:Landroid/view/View;
    const v1, 0x7f100041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 122
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 123
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 124
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/DayView;

    invoke-virtual {v1}, Lcom/android/calendar/DayView;->updateTitle()V

    .line 126
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 168
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 169
    .local v0, view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->cleanup()V

    .line 170
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .end local v0           #view:Lcom/android/calendar/DayView;
    check-cast v0, Lcom/android/calendar/DayView;

    .line 171
    .restart local v0       #view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->cleanup()V

    .line 172
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->stopBackgroundThread()V

    .line 175
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->stopEventsAnimation()V

    .line 176
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/DayView;

    invoke-virtual {v1}, Lcom/android/calendar/DayView;->stopEventsAnimation()V

    .line 177
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 143
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->startBackgroundThread()V

    .line 144
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 145
    invoke-virtual {p0}, Lcom/android/calendar/DayFragment;->eventsChanged()V

    .line 146
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 147
    .local v0, view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->handleOnResume()V

    .line 148
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->restartCurrentTimeUpdates()V

    .line 150
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .end local v0           #view:Lcom/android/calendar/DayView;
    check-cast v0, Lcom/android/calendar/DayView;

    .line 151
    .restart local v0       #view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->handleOnResume()V

    .line 152
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->restartCurrentTimeUpdates()V

    .line 153
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/calendar/DayFragment;->getSelectedTimeInMillis()J

    move-result-wide v0

    .line 160
    .local v0, time:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 161
    const-string v2, "key_restore_time"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 163
    :cond_0
    return-void
.end method

.method startProgressSpinner()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/calendar/DayFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 182
    return-void
.end method

.method stopProgressSpinner()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/calendar/DayFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 187
    return-void
.end method
