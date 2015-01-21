.class public Lcom/android/calendar/AllInOneActivity;
.super Landroid/app/Activity;
.source "AllInOneActivity.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;
.implements Landroid/app/ActionBar$TabListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnSuggestionListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AllInOneActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_CHECK_ACCOUNTS:Ljava/lang/String; = "key_check_for_accounts"

.field private static final BUNDLE_KEY_EVENT_ID:Ljava/lang/String; = "key_event_id"

.field private static final BUNDLE_KEY_IS_IN_SEARCH_MODE:Ljava/lang/String; = "key_search_mode"

.field private static final BUNDLE_KEY_RESTORE_TIME:Ljava/lang/String; = "key_restore_time"

.field private static final BUNDLE_KEY_RESTORE_VIEW:Ljava/lang/String; = "key_restore_view"

.field private static final BUNDLE_KEY_SEARCH_STRING:Ljava/lang/String; = "key_search_string"

.field private static final BUTTON_AGENDA_INDEX:I = 0x3

.field private static final BUTTON_DAY_INDEX:I = 0x0

.field private static final BUTTON_MONTH_INDEX:I = 0x2

.field private static final BUTTON_WEEK_INDEX:I = 0x1

.field private static final DEBUG:Z = false

.field private static final EVENT_INFO_FRAGMENT_TAG:Ljava/lang/String; = "EventInfoFragment"

.field private static final GOTO_FRAGMENT_TAG:Ljava/lang/String; = "goto_frag"

.field private static final HANDLER_KEY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AllInOneActivity"

.field private static mIsClearEventsCompleted:Z

.field private static mIsMultipane:Z

.field private static mIsTabletConfig:Z

.field private static mScale:F

.field private static mShowAgendaWithMonth:Z

.field private static mShowEventDetailsWithAgenda:Z


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

.field private mAgendaTab:Landroid/app/ActionBar$Tab;

.field private mBackToPreviousView:Z

.field mCalIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mCalendarControlsAnimationTime:I

.field private mCalendarsList:Landroid/view/View;

.field private mCheckForAccounts:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mController:Lcom/android/calendar/CalendarController;

.field private mControlsAnimateHeight:I

.field private mControlsAnimateWidth:I

.field private mControlsMenu:Landroid/view/MenuItem;

.field private mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mCurrentView:I

.field private mDateRange:Landroid/widget/TextView;

.field mDayOfMonthIcon:Lcom/android/calendar/DayOfMonthDrawable;

.field private mDayTab:Landroid/app/ActionBar$Tab;

.field private mExtensions:Lcom/android/calendar/extensions/AllInOneMenuExtensions;

.field private mHandler:Lcom/android/calendar/AllInOneActivity$QueryHandler;

.field private mHideControls:Z

.field private mHideString:Ljava/lang/String;

.field private mHomeTime:Landroid/widget/TextView;

.field private final mHomeTimeUpdater:Ljava/lang/Runnable;

.field private mIntentAllDay:Z

.field private mIntentAttendeeResponse:I

.field private mIntentEventEndMillis:J

.field private mIntentEventStartMillis:J

.field private mIsInSearchMode:Z

.field private mMiniMonth:Landroid/view/View;

.field private mMiniMonthContainer:Landroid/view/View;

.field private mMonthTab:Landroid/app/ActionBar$Tab;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mOnSaveInstanceStateCalled:Z

.field private mOptionsMenu:Landroid/view/Menu;

.field private mOptionsMenuExt:Lcom/mediatek/calendar/extension/IOptionsMenuExt;

.field mOrientation:I

.field private mPaused:Z

.field private mPreviousView:I

.field private mSearchMenu:Landroid/view/MenuItem;

.field private mSearchString:Ljava/lang/String;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSecondaryPane:Landroid/view/View;

.field private mShowCalendarControls:Z

.field private mShowEventInfoFullScreen:Z

.field private mShowEventInfoFullScreenAgenda:Z

.field private mShowSideViews:Z

.field private mShowString:Ljava/lang/String;

.field private mShowWeekNum:Z

.field private final mSlideAnimationDoneListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTimeChangesUpdater:Ljava/lang/Runnable;

.field private mTimeZone:Ljava/lang/String;

.field private mUpdateOnResume:Z

.field private mVerticalControlsParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mViewEventId:J

.field private mWeekNum:I

.field private mWeekTab:Landroid/app/ActionBar$Tab;

.field private mWeekTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/AllInOneActivity;->mScale:F

    .line 1532
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/AllInOneActivity;->mIsClearEventsCompleted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 128
    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mOnSaveInstanceStateCalled:Z

    .line 129
    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mBackToPreviousView:Z

    .line 133
    iput-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mPaused:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mUpdateOnResume:Z

    .line 135
    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mShowSideViews:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowWeekNum:Z

    .line 154
    iput-wide v2, p0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    .line 155
    iput-wide v2, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    .line 156
    iput-wide v2, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    .line 157
    iput v0, p0, Lcom/android/calendar/AllInOneActivity;->mIntentAttendeeResponse:I

    .line 158
    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mIntentAllDay:Z

    .line 160
    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mIsInSearchMode:Z

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchString:Ljava/lang/String;

    .line 176
    iput-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mCheckForAccounts:Z

    .line 189
    new-instance v0, Lcom/android/calendar/extensions/AllInOneMenuExtensions;

    invoke-direct {v0}, Lcom/android/calendar/extensions/AllInOneMenuExtensions;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mExtensions:Lcom/android/calendar/extensions/AllInOneMenuExtensions;

    .line 191
    new-instance v0, Lcom/android/calendar/AllInOneActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/AllInOneActivity$1;-><init>(Lcom/android/calendar/AllInOneActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSlideAnimationDoneListener:Landroid/animation/Animator$AnimatorListener;

    .line 266
    new-instance v0, Lcom/android/calendar/AllInOneActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/AllInOneActivity$2;-><init>(Lcom/android/calendar/AllInOneActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    .line 277
    new-instance v0, Lcom/android/calendar/AllInOneActivity$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/AllInOneActivity$3;-><init>(Lcom/android/calendar/AllInOneActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    .line 289
    new-instance v0, Lcom/android/calendar/AllInOneActivity$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/AllInOneActivity$4;-><init>(Lcom/android/calendar/AllInOneActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/AllInOneActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowSideViews:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/AllInOneActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/calendar/AllInOneActivity;->mCheckForAccounts:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/calendar/AllInOneActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/calendar/AllInOneActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/calendar/AllInOneActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/AllInOneActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/AllInOneActivity;->updateSecondaryTitleFields(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/calendar/AllInOneActivity;)Lcom/android/calendar/AllInOneActivity$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHandler:Lcom/android/calendar/AllInOneActivity$QueryHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/AllInOneActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method private clearOptionsMenu()V
    .locals 3

    .prologue
    .line 589
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mOptionsMenu:Landroid/view/Menu;

    if-nez v1, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f100088

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 593
    .local v0, cancelItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 594
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private configureActionBar(I)V
    .locals 2
    .parameter "viewType"

    .prologue
    .line 529
    sget-boolean v0, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/AllInOneActivity;->createButtonsSpinner(IZ)V

    .line 530
    sget-boolean v0, Lcom/android/calendar/AllInOneActivity;->mIsMultipane:Z

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0
.end method

.method private createButtonsSpinner(IZ)V
    .locals 4
    .parameter "viewType"
    .parameter "tabletConfig"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 565
    new-instance v3, Lcom/android/calendar/CalendarViewAdapter;

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {v3, p0, p1, v0}, Lcom/android/calendar/CalendarViewAdapter;-><init>(Landroid/content/Context;IZ)V

    iput-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    .line 566
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    .line 567
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 568
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    invoke-virtual {v0, v3, p0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 569
    packed-switch p1, :pswitch_data_0

    .line 583
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 586
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 565
    goto :goto_0

    .line 571
    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_1

    .line 574
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_1

    .line 577
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_1

    .line 580
    :pswitch_3
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_1

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createTabs()V
    .locals 2

    .prologue
    .line 539
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    .line 540
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    .line 541
    const-string v0, "AllInOneActivity"

    const-string v1, "ActionBar is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 544
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    .line 545
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0c004d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 546
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 547
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 548
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    .line 549
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0c004e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 550
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 551
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 552
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    .line 553
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0c004f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 554
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 555
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 556
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    .line 557
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0c004c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 558
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 559
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto/16 :goto_0
.end method

.method private enterSearchMode()V
    .locals 1

    .prologue
    .line 1578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mIsInSearchMode:Z

    .line 1579
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1582
    :cond_0
    return-void
.end method

.method private exitSearchMode()V
    .locals 1

    .prologue
    .line 1568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mIsInSearchMode:Z

    .line 1569
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1570
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1572
    :cond_0
    return-void
.end method

.method private initFragments(JILandroid/os/Bundle;)V
    .locals 25
    .parameter "timeMillis"
    .parameter "viewType"
    .parameter "icicle"

    .prologue
    .line 757
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 759
    .local v4, ft:Landroid/app/FragmentTransaction;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/AllInOneActivity;->mShowCalendarControls:Z

    if-eqz v3, :cond_0

    .line 760
    new-instance v23, Lcom/android/calendar/month/MonthByWeekFragment;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/month/MonthByWeekFragment;-><init>(JZ)V

    .line 761
    .local v23, miniMonthFrag:Landroid/app/Fragment;
    const v3, 0x7f100024

    move-object/from16 v0, v23

    invoke-virtual {v4, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 762
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const v5, 0x7f100024

    check-cast v23, Lcom/android/calendar/CalendarController$EventHandler;

    .end local v23           #miniMonthFrag:Landroid/app/Fragment;
    move-object/from16 v0, v23

    invoke-virtual {v3, v5, v0}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 764
    new-instance v24, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-direct/range {v24 .. v24}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;-><init>()V

    .line 765
    .local v24, selectCalendarsFrag:Landroid/app/Fragment;
    const v3, 0x7f100003

    move-object/from16 v0, v24

    invoke-virtual {v4, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 766
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const v5, 0x7f100003

    check-cast v24, Lcom/android/calendar/CalendarController$EventHandler;

    .end local v24           #selectCalendarsFrag:Landroid/app/Fragment;
    move-object/from16 v0, v24

    invoke-virtual {v3, v5, v0}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 769
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/AllInOneActivity;->mShowCalendarControls:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 770
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 774
    :cond_2
    const/16 v21, 0x0

    .line 775
    .local v21, info:Lcom/android/calendar/CalendarController$EventInfo;
    const/4 v3, 0x5

    move/from16 v0, p3

    if-ne v0, v3, :cond_8

    .line 776
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "preferred_startView"

    const/4 v6, 0x3

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/AllInOneActivity;->mPreviousView:I

    .line 779
    const-wide/16 v19, -0x1

    .line 780
    .local v19, eventId:J
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    .line 781
    .local v22, intent:Landroid/content/Intent;
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    .line 782
    .local v16, data:Landroid/net/Uri;
    if-eqz v16, :cond_7

    .line 784
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v19

    .line 794
    :cond_3
    :goto_0
    const-string v3, "beginTime"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 795
    .local v14, begin:J
    const-string v3, "endTime"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v17

    .line 796
    .local v17, end:J
    new-instance v21, Lcom/android/calendar/CalendarController$EventInfo;

    .end local v21           #info:Lcom/android/calendar/CalendarController$EventInfo;
    invoke-direct/range {v21 .. v21}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 797
    .restart local v21       #info:Lcom/android/calendar/CalendarController$EventInfo;
    const-wide/16 v5, -0x1

    cmp-long v3, v17, v5

    if-eqz v3, :cond_4

    .line 798
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 799
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 801
    :cond_4
    const-wide/16 v5, -0x1

    cmp-long v3, v14, v5

    if-eqz v3, :cond_5

    .line 802
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 803
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v3, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 805
    :cond_5
    move-wide/from16 v0, v19

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    .line 809
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/calendar/CalendarController;->setViewType(I)V

    .line 810
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/calendar/CalendarController;->setEventId(J)V

    .line 825
    .end local v14           #begin:J
    .end local v16           #data:Landroid/net/Uri;
    .end local v17           #end:J
    .end local v19           #eventId:J
    .end local v22           #intent:Landroid/content/Intent;
    :goto_1
    const v5, 0x7f100021

    const/4 v9, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p3

    move-wide/from16 v7, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/calendar/AllInOneActivity;->setMainPane(Landroid/app/FragmentTransaction;IIJZ)V

    .line 826
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 828
    new-instance v9, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v9, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 829
    .local v9, t:Landroid/text/format/Time;
    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 830
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_a

    if-eqz p4, :cond_a

    .line 831
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v7, 0x20

    const/4 v10, 0x0

    const-string v3, "key_event_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    move-object/from16 v6, p0

    move/from16 v13, p3

    invoke-virtual/range {v5 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 836
    :cond_6
    :goto_2
    return-void

    .line 790
    .end local v9           #t:Landroid/text/format/Time;
    .restart local v16       #data:Landroid/net/Uri;
    .restart local v19       #eventId:J
    .restart local v22       #intent:Landroid/content/Intent;
    :cond_7
    if-eqz p4, :cond_3

    const-string v3, "key_event_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 791
    const-string v3, "key_event_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    goto/16 :goto_0

    .line 815
    .end local v16           #data:Landroid/net/Uri;
    .end local v19           #eventId:J
    .end local v22           #intent:Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    move/from16 v0, p3

    if-eq v3, v0, :cond_9

    .line 816
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/AllInOneActivity;->mPreviousView:I

    goto :goto_1

    .line 818
    :cond_9
    const-string v3, "AllInOneActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "don\'t modify mPreviousView\'s value.mCurrentView:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",viewType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mPreviousView:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/AllInOneActivity;->mPreviousView:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 833
    .restart local v9       #t:Landroid/text/format/Time;
    :cond_a
    const/4 v3, 0x5

    move/from16 v0, p3

    if-eq v0, v3, :cond_6

    .line 834
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v7, 0x20

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    move-object/from16 v6, p0

    move/from16 v13, p3

    invoke-virtual/range {v5 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_2

    .line 785
    .end local v9           #t:Landroid/text/format/Time;
    .restart local v16       #data:Landroid/net/Uri;
    .restart local v19       #eventId:J
    .restart local v22       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method private parseViewAction(Landroid/content/Intent;)J
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 505
    const-wide/16 v2, -0x1

    .line 506
    .local v2, timeMillis:J
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 507
    .local v0, data:Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 508
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 509
    .local v1, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "events"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 511
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    .line 512
    iget-wide v4, p0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 513
    const-string v4, "beginTime"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    .line 514
    const-string v4, "endTime"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    .line 515
    const-string v4, "attendeeStatus"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/AllInOneActivity;->mIntentAttendeeResponse:I

    .line 517
    const-string v4, "allDay"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/calendar/AllInOneActivity;->mIntentAllDay:Z

    .line 518
    iget-wide v2, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .end local v1           #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-wide v2

    .line 520
    .restart local v1       #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static setClearEventsCompletedStatus(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 1536
    sput-boolean p0, Lcom/android/calendar/AllInOneActivity;->mIsClearEventsCompleted:Z

    .line 1537
    return-void
.end method

.method private setMainPane(Landroid/app/FragmentTransaction;IIJZ)V
    .locals 10
    .parameter "ft"
    .parameter "viewId"
    .parameter "viewType"
    .parameter "timeMillis"
    .parameter "force"

    .prologue
    .line 1037
    iget-boolean v7, p0, Lcom/android/calendar/AllInOneActivity;->mOnSaveInstanceStateCalled:Z

    if-eqz v7, :cond_1

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    if-nez p6, :cond_2

    iget v7, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v7, p3, :cond_0

    .line 1045
    :cond_2
    const/4 v7, 0x4

    if-eq p3, v7, :cond_6

    iget v7, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_6

    const/4 v1, 0x1

    .line 1046
    .local v1, doTransition:Z
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 1049
    .local v4, fragmentManager:Landroid/app/FragmentManager;
    iget v7, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 1052
    invoke-virtual {v4, p2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v5

    .line 1053
    .local v5, oldFrag:Landroid/app/Fragment;
    instance-of v7, v5, Lcom/android/calendar/agenda/AgendaFragment;

    if-eqz v7, :cond_3

    .line 1054
    check-cast v5, Lcom/android/calendar/agenda/AgendaFragment;

    .end local v5           #oldFrag:Landroid/app/Fragment;
    invoke-virtual {v5, v4}, Lcom/android/calendar/agenda/AgendaFragment;->removeFragments(Landroid/app/FragmentManager;)V

    .line 1058
    :cond_3
    iget v7, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq p3, v7, :cond_5

    .line 1061
    iget v7, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_4

    iget v7, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-lez v7, :cond_4

    .line 1062
    iget v7, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    iput v7, p0, Lcom/android/calendar/AllInOneActivity;->mPreviousView:I

    .line 1064
    :cond_4
    iput p3, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    .line 1067
    :cond_5
    const/4 v3, 0x0

    .line 1068
    .local v3, frag:Landroid/app/Fragment;
    const/4 v6, 0x0

    .line 1069
    .local v6, secFrag:Landroid/app/Fragment;
    packed-switch p3, :pswitch_data_0

    .line 1112
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Must be Agenda, Day, Week, or Month ViewType, not "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1045
    .end local v1           #doTransition:Z
    .end local v3           #frag:Landroid/app/Fragment;
    .end local v4           #fragmentManager:Landroid/app/FragmentManager;
    .end local v6           #secFrag:Landroid/app/Fragment;
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 1071
    .restart local v1       #doTransition:Z
    .restart local v3       #frag:Landroid/app/Fragment;
    .restart local v4       #fragmentManager:Landroid/app/FragmentManager;
    .restart local v6       #secFrag:Landroid/app/Fragment;
    :pswitch_0
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v7

    iget-object v8, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    if-eq v7, v8, :cond_7

    .line 1072
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v8, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1074
    :cond_7
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v7, :cond_8

    .line 1075
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1077
    :cond_8
    new-instance v3, Lcom/android/calendar/agenda/AgendaFragment;

    .end local v3           #frag:Landroid/app/Fragment;
    const/4 v7, 0x0

    invoke-direct {v3, p4, p5, v7}, Lcom/android/calendar/agenda/AgendaFragment;-><init>(JZ)V

    .line 1118
    .restart local v3       #frag:Landroid/app/Fragment;
    :cond_9
    :goto_2
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v7, :cond_a

    .line 1119
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    invoke-virtual {v7, p3}, Lcom/android/calendar/CalendarViewAdapter;->setMainView(I)V

    .line 1120
    sget-boolean v7, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-nez v7, :cond_a

    .line 1121
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    invoke-virtual {v7, p4, p5}, Lcom/android/calendar/CalendarViewAdapter;->setTime(J)V

    .line 1127
    :cond_a
    sget-boolean v7, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-nez v7, :cond_16

    .line 1128
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    :goto_3
    const/4 v7, 0x1

    if-eq p3, v7, :cond_b

    .line 1137
    invoke-direct {p0}, Lcom/android/calendar/AllInOneActivity;->clearOptionsMenu()V

    .line 1140
    :cond_b
    const/4 v0, 0x0

    .line 1141
    .local v0, doCommit:Z
    if-nez p1, :cond_c

    .line 1142
    const/4 v0, 0x1

    .line 1143
    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 1146
    :cond_c
    if-eqz v1, :cond_d

    .line 1147
    const/16 v7, 0x1003

    invoke-virtual {p1, v7}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1150
    :cond_d
    invoke-virtual {p1, p2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1151
    sget-boolean v7, Lcom/android/calendar/AllInOneActivity;->mShowAgendaWithMonth:Z

    if-eqz v7, :cond_e

    .line 1155
    if-eqz v6, :cond_18

    .line 1156
    const v7, 0x7f100022

    invoke-virtual {p1, v7, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1157
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mSecondaryPane:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1171
    :cond_e
    :goto_4
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    check-cast v3, Lcom/android/calendar/CalendarController$EventHandler;

    .end local v3           #frag:Landroid/app/Fragment;
    invoke-virtual {v7, p2, v3}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 1172
    if-eqz v6, :cond_f

    .line 1173
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    check-cast v6, Lcom/android/calendar/CalendarController$EventHandler;

    .end local v6           #secFrag:Landroid/app/Fragment;
    invoke-virtual {v7, p2, v6}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 1176
    :cond_f
    if-eqz v0, :cond_0

    .line 1180
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 1080
    .end local v0           #doCommit:Z
    .restart local v3       #frag:Landroid/app/Fragment;
    .restart local v6       #secFrag:Landroid/app/Fragment;
    :pswitch_1
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v7

    iget-object v8, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    if-eq v7, v8, :cond_10

    .line 1081
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v8, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1083
    :cond_10
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v7, :cond_11

    .line 1084
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1087
    :cond_11
    new-instance v3, Lcom/android/calendar/DayFragment;

    .end local v3           #frag:Landroid/app/Fragment;
    const/4 v7, 0x1

    invoke-direct {v3, p0, p4, p5, v7}, Lcom/android/calendar/DayFragment;-><init>(Landroid/content/Context;JI)V

    .line 1088
    .restart local v3       #frag:Landroid/app/Fragment;
    goto/16 :goto_2

    .line 1090
    :pswitch_2
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v7

    iget-object v8, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    if-eq v7, v8, :cond_12

    .line 1091
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v8, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1093
    :cond_12
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v7, :cond_13

    .line 1094
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1097
    :cond_13
    new-instance v3, Lcom/android/calendar/DayFragment;

    .end local v3           #frag:Landroid/app/Fragment;
    const/4 v7, 0x7

    invoke-direct {v3, p0, p4, p5, v7}, Lcom/android/calendar/DayFragment;-><init>(Landroid/content/Context;JI)V

    .line 1098
    .restart local v3       #frag:Landroid/app/Fragment;
    goto/16 :goto_2

    .line 1100
    :pswitch_3
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v7

    iget-object v8, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    if-eq v7, v8, :cond_14

    .line 1101
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v8, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1103
    :cond_14
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v7, :cond_15

    .line 1104
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1106
    :cond_15
    new-instance v3, Lcom/android/calendar/month/MonthByWeekFragment;

    .end local v3           #frag:Landroid/app/Fragment;
    const/4 v7, 0x0

    invoke-direct {v3, p4, p5, v7}, Lcom/android/calendar/month/MonthByWeekFragment;-><init>(JZ)V

    .line 1107
    .restart local v3       #frag:Landroid/app/Fragment;
    sget-boolean v7, Lcom/android/calendar/AllInOneActivity;->mShowAgendaWithMonth:Z

    if-eqz v7, :cond_9

    .line 1108
    new-instance v6, Lcom/android/calendar/agenda/AgendaFragment;

    .end local v6           #secFrag:Landroid/app/Fragment;
    const/4 v7, 0x0

    invoke-direct {v6, p4, p5, v7}, Lcom/android/calendar/agenda/AgendaFragment;-><init>(JZ)V

    .restart local v6       #secFrag:Landroid/app/Fragment;
    goto/16 :goto_2

    .line 1129
    :cond_16
    const/4 v7, 0x1

    if-eq p3, v7, :cond_17

    .line 1130
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1132
    :cond_17
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1159
    .restart local v0       #doCommit:Z
    :cond_18
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mSecondaryPane:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    const v7, 0x7f100022

    invoke-virtual {v4, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    .line 1161
    .local v2, f:Landroid/app/Fragment;
    if-eqz v2, :cond_19

    .line 1162
    invoke-virtual {p1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1164
    :cond_19
    iget-object v7, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const v8, 0x7f100022

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/calendar/CalendarController;->deregisterEventHandler(Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 1069
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setTitleInActionBar(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 13
    .parameter "event"

    .prologue
    const/16 v12, 0x8

    const/4 v5, 0x0

    .line 1185
    iget-wide v8, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v10, 0x400

    cmp-long v0, v8, v10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_1

    .line 1212
    :cond_0
    :goto_0
    return-void

    .line 1189
    :cond_1
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 1191
    .local v1, start:J
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v0, :cond_4

    .line 1192
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 1197
    .local v3, end:J
    :goto_1
    cmp-long v0, v1, v3

    if-lez v0, :cond_2

    .line 1198
    invoke-static {p0}, Lcom/android/calendar/Utils;->getLastDisplayTimeInCalendar(Landroid/content/Context;)Landroid/text/format/Time;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 1201
    :cond_2
    iget-wide v8, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    long-to-int v5, v8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v6

    .line 1202
    .local v6, msg:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 1203
    .local v7, oldDate:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .end local v1           #start:J
    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/android/calendar/AllInOneActivity;->updateSecondaryTitleFields(J)V

    .line 1206
    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 1208
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowWeekNum:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 1194
    .end local v3           #end:J
    .end local v6           #msg:Ljava/lang/String;
    .end local v7           #oldDate:Ljava/lang/CharSequence;
    .restart local v1       #start:J
    :cond_4
    move-wide v3, v1

    .restart local v3       #end:J
    goto :goto_1
.end method

.method private updateSecondaryTitleFields(J)V
    .locals 21
    .parameter "visibleMillisSinceEpoch"

    .prologue
    .line 1215
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/calendar/AllInOneActivity;->mShowWeekNum:Z

    .line 1216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    .line 1217
    const-wide/16 v6, -0x1

    cmp-long v3, p1, v6

    if-eqz v3, :cond_0

    .line 1218
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->getWeekNumberFromTime(JLandroid/content/Context;)I

    move-result v15

    .line 1219
    .local v15, weekNum:I
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/calendar/AllInOneActivity;->mWeekNum:I

    .line 1222
    .end local v15           #weekNum:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/AllInOneActivity;->mShowWeekNum:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_5

    sget-boolean v3, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 1224
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0e0004

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/AllInOneActivity;->mWeekNum:I

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/AllInOneActivity;->mWeekNum:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v3, v6, v7, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 1226
    .local v16, weekString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1243
    .end local v16           #weekString:Ljava/lang/String;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_9

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1247
    new-instance v12, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v12, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1248
    .local v12, time:Landroid/text/format/Time;
    invoke-virtual {v12}, Landroid/text/format/Time;->setToNow()V

    .line 1249
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 1250
    .local v4, millis:J
    iget v3, v12, Landroid/text/format/Time;->isDst:I

    if-eqz v3, :cond_8

    const/4 v10, 0x1

    .line 1251
    .local v10, isDST:Z
    :goto_1
    const/4 v8, 0x1

    .line 1252
    .local v8, flags:I
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1253
    or-int/lit16 v8, v8, 0x80

    .line 1256
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v3, p0

    move-wide v6, v4

    invoke-static/range {v3 .. v8}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v10, v7, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1260
    .local v13, timeString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    const-wide/32 v17, 0xea60

    const-wide/32 v19, 0xea60

    rem-long v19, v4, v19

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    invoke-virtual {v3, v6, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1270
    .end local v4           #millis:J
    .end local v8           #flags:I
    .end local v10           #isDST:Z
    .end local v12           #time:Landroid/text/format/Time;
    .end local v13           #timeString:Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    .line 1228
    :cond_5
    const-wide/16 v6, -0x1

    cmp-long v3, p1, v6

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    sget-boolean v3, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-eqz v3, :cond_6

    .line 1230
    new-instance v12, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v12, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1231
    .restart local v12       #time:Landroid/text/format/Time;
    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1232
    iget-wide v6, v12, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v11

    .line 1233
    .local v11, julianDay:I
    invoke-virtual {v12}, Landroid/text/format/Time;->setToNow()V

    .line 1234
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    iget-wide v0, v12, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-static {v6, v7, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v14

    .line 1235
    .local v14, todayJulianDay:I
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    invoke-static {v11, v14, v0, v1, v2}, Lcom/android/calendar/Utils;->getDayOfWeekString(IIJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 1237
    .local v9, dayString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1239
    .end local v9           #dayString:Ljava/lang/String;
    .end local v11           #julianDay:I
    .end local v12           #time:Landroid/text/format/Time;
    .end local v14           #todayJulianDay:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    .line 1240
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1250
    .restart local v4       #millis:J
    .restart local v12       #time:Landroid/text/format/Time;
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1267
    .end local v4           #millis:J
    .end local v12           #time:Landroid/text/format/Time;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 1268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method public eventsChanged()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 1428
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x80

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1429
    return-void
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 1274
    const-wide/16 v0, 0x422

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 27
    .parameter "event"

    .prologue
    .line 1279
    const-wide/16 v18, -0x1

    .line 1280
    .local v18, displayTime:J
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v6, 0x20

    cmp-long v4, v4, v6

    if-nez v4, :cond_10

    .line 1281
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    .line 1282
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/calendar/AllInOneActivity;->mBackToPreviousView:Z

    .line 1289
    :cond_0
    :goto_0
    const/4 v4, 0x0

    const v5, 0x7f100021

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/calendar/AllInOneActivity;->setMainPane(Landroid/app/FragmentTransaction;IIJZ)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v4, :cond_1

    .line 1292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->clearFocus()V

    .line 1294
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/calendar/AllInOneActivity;->mShowCalendarControls:Z

    if-eqz v4, :cond_5

    .line 1295
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/AllInOneActivity;->mOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    move/from16 v17, v0

    .line 1297
    .local v17, animationSize:I
    :goto_1
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    :cond_2
    const/16 v25, 0x1

    .line 1298
    .local v25, noControlsView:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-eqz v4, :cond_3

    .line 1299
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-nez v25, :cond_a

    const/4 v4, 0x1

    :goto_3
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1300
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-nez v25, :cond_b

    const/4 v4, 0x1

    :goto_4
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1302
    :cond_3
    if-nez v25, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-eqz v4, :cond_d

    .line 1304
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/calendar/AllInOneActivity;->mShowSideViews:Z

    .line 1305
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-nez v4, :cond_c

    .line 1306
    const-string v4, "controlsOffset"

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    aput v17, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v26

    .line 1308
    .local v26, slideAnimation:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AllInOneActivity;->mSlideAnimationDoneListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1309
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/AllInOneActivity;->mCalendarControlsAnimationTime:I

    int-to-long v4, v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1310
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 1311
    invoke-virtual/range {v26 .. v26}, Landroid/animation/ObjectAnimator;->start()V

    .line 1334
    .end local v17           #animationSize:I
    .end local v25           #noControlsView:Z
    .end local v26           #slideAnimation:Landroid/animation/ObjectAnimator;
    :cond_5
    :goto_5
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    if-eqz v4, :cond_f

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 1336
    :goto_6
    sget-boolean v4, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-nez v4, :cond_6

    .line 1337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Lcom/android/calendar/CalendarViewAdapter;->setTime(J)V

    .line 1415
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AllInOneActivity;->updateSecondaryTitleFields(J)V

    .line 1416
    return-void

    .line 1283
    :cond_7
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v5}, Lcom/android/calendar/CalendarController;->getPreviousViewType()I

    move-result v5

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    .line 1286
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/calendar/AllInOneActivity;->mBackToPreviousView:Z

    goto/16 :goto_0

    .line 1295
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateHeight:I

    move/from16 v17, v0

    goto/16 :goto_1

    .line 1297
    .restart local v17       #animationSize:I
    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 1299
    .restart local v25       #noControlsView:Z
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1300
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1313
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1319
    :cond_d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/calendar/AllInOneActivity;->mShowSideViews:Z

    .line 1320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1323
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v4}, Lcom/android/calendar/CalendarController;->getPreviousViewType()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v4}, Lcom/android/calendar/CalendarController;->getPreviousViewType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 1326
    :cond_e
    const-string v4, "controlsOffset"

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v17, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v26

    .line 1328
    .restart local v26       #slideAnimation:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/AllInOneActivity;->mCalendarControlsAnimationTime:I

    int-to-long v4, v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1329
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 1330
    invoke-virtual/range {v26 .. v26}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_5

    .line 1334
    .end local v17           #animationSize:I
    .end local v25           #noControlsView:Z
    .end local v26           #slideAnimation:Landroid/animation/ObjectAnimator;
    :cond_f
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    goto/16 :goto_6

    .line 1339
    :cond_10
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-nez v4, :cond_1d

    .line 1345
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    sget-boolean v4, Lcom/android/calendar/AllInOneActivity;->mShowEventDetailsWithAgenda:Z

    if-eqz v4, :cond_14

    .line 1346
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v4, :cond_13

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v4, :cond_13

    .line 1348
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/CalendarController$EventInfo;->isAllDay()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1349
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    .line 1351
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    .line 1354
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v5, 0x20

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    const/4 v12, 0x1

    const-wide/16 v13, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v16}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 1408
    :cond_12
    :goto_8
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    goto/16 :goto_7

    .line 1357
    :cond_13
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    if-eqz v4, :cond_12

    .line 1358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v5, 0x20

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    const/4 v11, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_8

    .line 1364
    :cond_14
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_15

    .line 1365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v5, 0x20

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1368
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/CalendarController$EventInfo;->getResponse()I

    move-result v11

    .line 1369
    .local v11, response:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/calendar/AllInOneActivity;->mShowEventInfoFullScreenAgenda:Z

    if-nez v4, :cond_18

    :cond_16
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1b

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/calendar/AllInOneActivity;->mShowEventInfoFullScreen:Z

    if-eqz v4, :cond_1b

    .line 1373
    :cond_18
    new-instance v24, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1374
    .local v24, intent:Landroid/content/Intent;
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 1375
    .local v20, eventUri:Landroid/net/Uri;
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1376
    const-class v4, Lcom/android/calendar/EventInfoActivity;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1377
    const/high16 v4, 0x2002

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1379
    const-string v4, "beginTime"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1380
    const-string v4, "endTime"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1381
    const-string v4, "attendeeStatus"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1382
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1386
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v6, :cond_19

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    :goto_9
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v8, :cond_1a

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    :goto_a
    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lcom/android/calendar/alerts/AlertUtils;->removeEventNotification(Landroid/content/Context;JJJ)V

    goto/16 :goto_8

    :cond_19
    const-wide/16 v6, -0x1

    goto :goto_9

    :cond_1a
    const-wide/16 v8, -0x1

    goto :goto_a

    .line 1392
    .end local v20           #eventUri:Landroid/net/Uri;
    .end local v24           #intent:Landroid/content/Intent;
    :cond_1b
    new-instance v3, Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v13}, Lcom/android/calendar/EventInfoFragment;-><init>(Landroid/content/Context;JJJIZI)V

    .line 1396
    .local v3, fragment:Lcom/android/calendar/EventInfoFragment;
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->x:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/calendar/CalendarController$EventInfo;->y:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6}, Landroid/app/ActionBar;->getHeight()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/calendar/EventInfoFragment;->setDialogParams(III)V

    .line 1397
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v22

    .line 1398
    .local v22, fm:Landroid/app/FragmentManager;
    invoke-virtual/range {v22 .. v22}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v23

    .line 1400
    .local v23, ft:Landroid/app/FragmentTransaction;
    const-string v4, "EventInfoFragment"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v21

    .line 1401
    .local v21, fOld:Landroid/app/Fragment;
    if-eqz v21, :cond_1c

    invoke-virtual/range {v21 .. v21}, Landroid/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1402
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1404
    :cond_1c
    const-string v4, "EventInfoFragment"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1405
    invoke-virtual/range {v23 .. v23}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_8

    .line 1409
    .end local v3           #fragment:Lcom/android/calendar/EventInfoFragment;
    .end local v11           #response:I
    .end local v21           #fOld:Landroid/app/Fragment;
    .end local v22           #fm:Landroid/app/FragmentManager;
    .end local v23           #ft:Landroid/app/FragmentTransaction;
    :cond_1d
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v6, 0x400

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 1410
    invoke-direct/range {p0 .. p1}, Lcom/android/calendar/AllInOneActivity;->setTitleInActionBar(Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 1411
    sget-boolean v4, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-nez v4, :cond_6

    .line 1412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v5}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/calendar/CalendarViewAdapter;->setTime(J)V

    goto/16 :goto_7
.end method

.method public handleSelectSyncedCalendarsClicked(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 1421
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x40

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x2

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    move-object v12, v4

    move-object v13, v4

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 1424
    return-void
.end method

.method public launchDatePicker()V
    .locals 9

    .prologue
    .line 1544
    new-instance v8, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1545
    .local v8, t:Landroid/text/format/Time;
    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    .line 1547
    invoke-static {p0}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v3

    .line 1549
    .local v3, startOfWeek:I
    const/4 v0, 0x6

    if-ne v3, v0, :cond_0

    .line 1550
    const/4 v3, 0x7

    .line 1557
    :goto_0
    iget v0, v8, Landroid/text/format/Time;->year:I

    iget v1, v8, Landroid/text/format/Time;->month:I

    iget v2, v8, Landroid/text/format/Time;->monthDay:I

    invoke-static {p0}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/mediatek/calendar/GoToDatePickerDialogFragment;->newInstance(IIIIZZI)Lcom/mediatek/calendar/GoToDatePickerDialogFragment;

    move-result-object v7

    .line 1560
    .local v7, df:Lcom/mediatek/calendar/GoToDatePickerDialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "goto_frag"

    invoke-virtual {v7, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1561
    return-void

    .line 1551
    .end local v7           #df:Lcom/mediatek/calendar/GoToDatePickerDialogFragment;
    :cond_0
    if-nez v3, :cond_1

    .line 1552
    const/4 v3, 0x1

    goto :goto_0

    .line 1554
    :cond_1
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 840
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mBackToPreviousView:Z

    if-eqz v0, :cond_1

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    const-wide/16 v6, -0x1

    iget v8, p0, Lcom/android/calendar/AllInOneActivity;->mPreviousView:I

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 845
    :goto_0
    return-void

    .line 843
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 31
    .parameter "icicle"

    .prologue
    .line 331
    const-string v5, "preferences_tardis_1"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 332
    const v5, 0x7f0d001a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 334
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 339
    if-eqz p1, :cond_3

    .line 340
    const-string v5, "key_check_for_accounts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 341
    const-string v5, "key_check_for_accounts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/calendar/AllInOneActivity;->mCheckForAccounts:Z

    .line 343
    :cond_1
    const-string v5, "key_search_mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 344
    const-string v5, "key_search_mode"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/calendar/AllInOneActivity;->mIsInSearchMode:Z

    .line 346
    :cond_2
    const-string v5, "key_search_string"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 347
    const-string v5, "key_search_string"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mSearchString:Ljava/lang/String;

    .line 353
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/calendar/AllInOneActivity;->mCheckForAccounts:Z

    if-eqz v5, :cond_4

    const-string v5, "preferences_skip_setup"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_4

    .line 356
    new-instance v5, Lcom/android/calendar/AllInOneActivity$QueryHandler;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/calendar/AllInOneActivity$QueryHandler;-><init>(Lcom/android/calendar/AllInOneActivity;Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mHandler:Lcom/android/calendar/AllInOneActivity$QueryHandler;

    .line 357
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mHandler:Lcom/android/calendar/AllInOneActivity$QueryHandler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v15, 0x1

    new-array v9, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "_id"

    aput-object v16, v9, v15

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    .line 367
    const-wide/16 v28, -0x1

    .line 368
    .local v28, timeMillis:J
    const/16 v30, -0x1

    .line 369
    .local v30, viewType:I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    .line 370
    .local v23, intent:Landroid/content/Intent;
    if-eqz p1, :cond_a

    .line 371
    const-string v5, "key_restore_time"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 372
    const-string v5, "key_restore_view"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 385
    :cond_5
    :goto_0
    const/4 v5, -0x1

    move/from16 v0, v30

    if-ne v0, v5, :cond_6

    .line 386
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/Utils;->getViewTypeFromIntentAndSharedPref(Landroid/app/Activity;)I

    move-result v30

    .line 388
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    .line 389
    new-instance v27, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 390
    .local v27, t:Landroid/text/format/Time;
    invoke-virtual/range {v27 .. v29}, Landroid/text/format/Time;->set(J)V

    .line 400
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 401
    .local v26, res:Landroid/content/res/Resources;
    const v5, 0x7f0c0058

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mHideString:Ljava/lang/String;

    .line 402
    const v5, 0x7f0c0059

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mShowString:Ljava/lang/String;

    .line 403
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/calendar/AllInOneActivity;->mOrientation:I

    .line 404
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/AllInOneActivity;->mOrientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    .line 405
    const v5, 0x7f0a001d

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    .line 406
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v5, :cond_7

    .line 407
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 409
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 418
    :goto_1
    const v5, 0x7f0a0020

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateHeight:I

    .line 420
    const-string v5, "preferences_show_controls"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_d

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    .line 422
    const v5, 0x7f090007

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    sput-boolean v5, Lcom/android/calendar/AllInOneActivity;->mIsMultipane:Z

    .line 423
    const v5, 0x7f090006

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    sput-boolean v5, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    .line 424
    const v5, 0x7f090001

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    sput-boolean v5, Lcom/android/calendar/AllInOneActivity;->mShowAgendaWithMonth:Z

    .line 425
    const/high16 v5, 0x7f09

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/calendar/AllInOneActivity;->mShowCalendarControls:Z

    .line 427
    const v5, 0x7f090003

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    sput-boolean v5, Lcom/android/calendar/AllInOneActivity;->mShowEventDetailsWithAgenda:Z

    .line 429
    const v5, 0x7f090004

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/calendar/AllInOneActivity;->mShowEventInfoFullScreenAgenda:Z

    .line 431
    const v5, 0x7f090005

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/calendar/AllInOneActivity;->mShowEventInfoFullScreen:Z

    .line 433
    const v5, 0x7f0b000a

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/calendar/AllInOneActivity;->mCalendarControlsAnimationTime:I

    .line 434
    sget-boolean v5, Lcom/android/calendar/AllInOneActivity;->mIsMultipane:Z

    invoke-static {v5}, Lcom/android/calendar/Utils;->setAllowWeekForDetailView(Z)V

    .line 437
    const v5, 0x7f04000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 439
    sget-boolean v5, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-eqz v5, :cond_e

    .line 440
    const v5, 0x7f100026

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    .line 441
    const v5, 0x7f100027

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    .line 449
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/calendar/AllInOneActivity;->configureActionBar(I)V

    .line 451
    const v5, 0x7f100020

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    .line 452
    const v5, 0x7f100024

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    .line 453
    sget-boolean v5, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/AllInOneActivity;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 454
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateHeight:I

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    :cond_8
    const v5, 0x7f100003

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    .line 458
    const v5, 0x7f100023

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    .line 459
    const v5, 0x7f100022

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mSecondaryPane:Landroid/view/View;

    .line 464
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v5, v6, v0}, Lcom/android/calendar/CalendarController;->registerFirstEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 466
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move/from16 v3, v30

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/AllInOneActivity;->initFragments(JILandroid/os/Bundle;)V

    .line 469
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 470
    .local v25, prefs:Landroid/content/SharedPreferences;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 472
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 475
    invoke-static/range {p0 .. p0}, Lcom/mediatek/calendar/extension/ExtensionFactory;->getAllInOneOptionMenuExt(Landroid/content/Context;)Lcom/mediatek/calendar/extension/IOptionsMenuExt;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mOptionsMenuExt:Lcom/mediatek/calendar/extension/IOptionsMenuExt;

    .line 483
    const v5, 0x7f090006

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v24

    .line 485
    .local v24, isTabletConfig:Z
    if-eqz p1, :cond_9

    if-nez v24, :cond_9

    .line 486
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v21

    .line 487
    .local v21, fm:Landroid/app/FragmentManager;
    const-string v5, "EventInfoFragment"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v20

    .line 488
    .local v20, f:Landroid/app/Fragment;
    if-eqz v20, :cond_9

    .line 489
    invoke-virtual/range {v21 .. v21}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v22

    .line 490
    .local v22, ft:Landroid/app/FragmentTransaction;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 491
    invoke-virtual/range {v22 .. v22}, Landroid/app/FragmentTransaction;->commit()I

    .line 492
    const-string v5, "key_event_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 493
    .local v9, eventId:J
    const-string v5, "key_start_millis"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 494
    .local v11, startMillis:J
    const-string v5, "key_end_millis"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 495
    .local v13, endMillis:J
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v5

    const-wide/16 v7, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v6, p0

    move-wide/from16 v17, v11

    invoke-virtual/range {v5 .. v18}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 498
    const-string v5, "AllInOneActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "f="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", eventId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", startMillis="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", endMillis="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .end local v9           #eventId:J
    .end local v11           #startMillis:J
    .end local v13           #endMillis:J
    .end local v20           #f:Landroid/app/Fragment;
    .end local v21           #fm:Landroid/app/FragmentManager;
    .end local v22           #ft:Landroid/app/FragmentTransaction;
    :cond_9
    return-void

    .line 374
    .end local v24           #isTabletConfig:Z
    .end local v25           #prefs:Landroid/content/SharedPreferences;
    .end local v26           #res:Landroid/content/res/Resources;
    .end local v27           #t:Landroid/text/format/Time;
    :cond_a
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    .line 375
    .local v19, action:Ljava/lang/String;
    const-string v5, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 377
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/calendar/AllInOneActivity;->parseViewAction(Landroid/content/Intent;)J

    move-result-wide v28

    .line 380
    :cond_b
    const-wide/16 v5, -0x1

    cmp-long v5, v28, v5

    if-nez v5, :cond_5

    .line 381
    invoke-static/range {v23 .. v23}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v28

    goto/16 :goto_0

    .line 412
    .end local v19           #action:Ljava/lang/String;
    .restart local v26       #res:Landroid/content/res/Resources;
    .restart local v27       #t:Landroid/text/format/Time;
    :cond_c
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v5, v5, 0x2d

    div-int/lit8 v5, v5, 0x64

    const v6, 0x7f0a001e

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    .line 414
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    const v6, 0x7f0a001f

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    goto/16 :goto_1

    .line 420
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 443
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04001d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 849
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 850
    iput-object p1, p0, Lcom/android/calendar/AllInOneActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 851
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const/high16 v4, 0x7f0f

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 854
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mExtensions:Lcom/android/calendar/extensions/AllInOneMenuExtensions;

    invoke-virtual {v3, p1}, Lcom/android/calendar/extensions/AllInOneMenuExtensions;->getExtensionMenuResource(Landroid/view/Menu;)Ljava/lang/Integer;

    move-result-object v0

    .line 855
    .local v0, extensionMenuRes:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 859
    :cond_0
    const v3, 0x7f1000c9

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    .line 860
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    .line 861
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v3, :cond_1

    .line 862
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-static {v3, p0}, Lcom/android/calendar/Utils;->setUpSearchView(Landroid/widget/SearchView;Landroid/app/Activity;)V

    .line 863
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 864
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    .line 870
    :cond_1
    const v3, 0x7f1000ce

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    .line 871
    iget-boolean v3, p0, Lcom/android/calendar/AllInOneActivity;->mShowCalendarControls:Z

    if-nez v3, :cond_4

    .line 872
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-eqz v3, :cond_2

    .line 873
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 874
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 885
    :cond_2
    :goto_0
    const v3, 0x7f1000c6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 886
    .local v2, menuItem:Landroid/view/MenuItem;
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanOrLater()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 889
    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 890
    .local v1, icon:Landroid/graphics/drawable/LayerDrawable;
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-static {v1, p0, v3}, Lcom/android/calendar/Utils;->setTodayIcon(Landroid/graphics/drawable/LayerDrawable;Landroid/content/Context;Ljava/lang/String;)V

    .line 896
    .end local v1           #icon:Landroid/graphics/drawable/LayerDrawable;
    :goto_1
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mOptionsMenuExt:Lcom/mediatek/calendar/extension/IOptionsMenuExt;

    invoke-interface {v3, p1}, Lcom/mediatek/calendar/extension/IOptionsMenuExt;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 901
    iget-boolean v3, p0, Lcom/android/calendar/AllInOneActivity;->mIsInSearchMode:Z

    if-eqz v3, :cond_3

    .line 902
    invoke-direct {p0}, Lcom/android/calendar/AllInOneActivity;->enterSearchMode()V

    .line 905
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v3, :cond_3

    .line 907
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v4, p0, Lcom/android/calendar/AllInOneActivity;->mSearchString:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 911
    :cond_3
    return v6

    .line 876
    .end local v2           #menuItem:Landroid/view/MenuItem;
    :cond_4
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v3}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v3}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 879
    :cond_5
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 880
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 881
    :cond_6
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-eqz v3, :cond_2

    .line 882
    iget-object v4, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mShowString:Ljava/lang/String;

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mHideString:Ljava/lang/String;

    goto :goto_2

    .line 892
    .restart local v2       #menuItem:Landroid/view/MenuItem;
    :cond_8
    const v3, 0x7f020047

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 743
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 745
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 746
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 748
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->deregisterAllEventHandlers()V

    .line 750
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 751
    return-void
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 10
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x1

    const-wide/16 v2, 0x20

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 1479
    packed-switch p1, :pswitch_data_0

    .line 1501
    const-string v0, "AllInOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemSelected event from unknown button: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    const-string v0, "AllInOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Button:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Day:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Week:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Month:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Agenda:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1481
    :pswitch_0
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, v8, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_0

    .line 1486
    :pswitch_1
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v8, 0x3

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_0

    .line 1491
    :pswitch_2
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v8, 0x4

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_0

    .line 1496
    :pswitch_3
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, v9, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-object v1, p0

    move-object v5, v4

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_0

    .line 1479
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, -0x1

    .line 310
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 314
    .local v9, action:Ljava/lang/String;
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KEY_HOME"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneActivity;->parseViewAction(Landroid/content/Intent;)J

    move-result-wide v10

    .line 317
    .local v10, millis:J
    cmp-long v0, v10, v6

    if-nez v0, :cond_0

    .line 318
    invoke-static {p1}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v10

    .line 320
    :cond_0
    cmp-long v0, v10, v6

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    if-eqz v0, :cond_1

    .line 321
    new-instance v4, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v4, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 322
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 323
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 324
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 327
    .end local v4           #time:Landroid/text/format/Time;
    .end local v10           #millis:J
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 23
    .parameter "item"

    .prologue
    .line 919
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f1000c9

    if-eq v2, v3, :cond_0

    .line 920
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/AllInOneActivity;->exitSearchMode()V

    .line 925
    :goto_0
    const/16 v20, 0x0

    .line 926
    .local v20, t:Landroid/text/format/Time;
    const/16 v21, 0x0

    .line 927
    .local v21, viewType:I
    const-wide/16 v16, 0x2

    .line 928
    .local v16, extras:J
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v18

    .line 929
    .local v18, itemId:I
    const v2, 0x7f1000c8

    move/from16 v0, v18

    if-ne v0, v2, :cond_1

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarController;->refreshCalendars()V

    .line 931
    const/4 v2, 0x1

    move-wide/from16 v12, v16

    .end local v16           #extras:J
    .local v12, extras:J
    move/from16 v11, v21

    .end local v21           #viewType:I
    .local v11, viewType:I
    move-object/from16 v6, v20

    .line 997
    .end local v20           #t:Landroid/text/format/Time;
    .local v6, t:Landroid/text/format/Time;
    :goto_1
    return v2

    .line 922
    .end local v6           #t:Landroid/text/format/Time;
    .end local v11           #viewType:I
    .end local v12           #extras:J
    .end local v18           #itemId:I
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/AllInOneActivity;->enterSearchMode()V

    goto :goto_0

    .line 932
    .restart local v16       #extras:J
    .restart local v18       #itemId:I
    .restart local v20       #t:Landroid/text/format/Time;
    .restart local v21       #viewType:I
    :cond_1
    const v2, 0x7f1000c6

    move/from16 v0, v18

    if-ne v0, v2, :cond_2

    .line 933
    const/4 v11, 0x0

    .line 934
    .end local v21           #viewType:I
    .restart local v11       #viewType:I
    new-instance v6, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v6, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 935
    .end local v20           #t:Landroid/text/format/Time;
    .restart local v6       #t:Landroid/text/format/Time;
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    .line 936
    const-wide/16 v2, 0x8

    or-long v12, v16, v2

    .line 996
    .end local v16           #extras:J
    .restart local v12       #extras:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v4, 0x20

    const/4 v7, 0x0

    const-wide/16 v9, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object v8, v6

    invoke-virtual/range {v2 .. v15}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 997
    const/4 v2, 0x1

    goto :goto_1

    .line 937
    .end local v6           #t:Landroid/text/format/Time;
    .end local v11           #viewType:I
    .end local v12           #extras:J
    .restart local v16       #extras:J
    .restart local v20       #t:Landroid/text/format/Time;
    .restart local v21       #viewType:I
    :cond_2
    const v2, 0x7f1000c7

    move/from16 v0, v18

    if-ne v0, v2, :cond_6

    .line 938
    new-instance v20, Landroid/text/format/Time;

    .end local v20           #t:Landroid/text/format/Time;
    invoke-direct/range {v20 .. v20}, Landroid/text/format/Time;-><init>()V

    .line 940
    .restart local v20       #t:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v22

    .line 941
    .local v22, viewtype:I
    const/4 v2, 0x4

    move/from16 v0, v22

    if-ne v0, v2, :cond_4

    .line 942
    invoke-virtual/range {v20 .. v20}, Landroid/text/format/Time;->setToNow()V

    .line 946
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput v2, v0, Landroid/text/format/Time;->second:I

    .line 948
    move-object/from16 v0, v20

    iget v2, v0, Landroid/text/format/Time;->minute:I

    const/16 v3, 0x1e

    if-le v2, v3, :cond_5

    .line 949
    move-object/from16 v0, v20

    iget v2, v0, Landroid/text/format/Time;->hour:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v20

    iput v2, v0, Landroid/text/format/Time;->hour:I

    .line 950
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput v2, v0, Landroid/text/format/Time;->minute:I

    .line 954
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v4, 0x1

    const-wide/16 v6, -0x1

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v15}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 956
    const/4 v2, 0x1

    move-wide/from16 v12, v16

    .end local v16           #extras:J
    .restart local v12       #extras:J
    move/from16 v11, v21

    .end local v21           #viewType:I
    .restart local v11       #viewType:I
    move-object/from16 v6, v20

    .end local v20           #t:Landroid/text/format/Time;
    .restart local v6       #t:Landroid/text/format/Time;
    goto/16 :goto_1

    .line 944
    .end local v6           #t:Landroid/text/format/Time;
    .end local v11           #viewType:I
    .end local v12           #extras:J
    .restart local v16       #extras:J
    .restart local v20       #t:Landroid/text/format/Time;
    .restart local v21       #viewType:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    goto :goto_2

    .line 951
    :cond_5
    move-object/from16 v0, v20

    iget v2, v0, Landroid/text/format/Time;->minute:I

    if-lez v2, :cond_3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/text/format/Time;->minute:I

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_3

    .line 952
    const/16 v2, 0x1e

    move-object/from16 v0, v20

    iput v2, v0, Landroid/text/format/Time;->minute:I

    goto :goto_3

    .line 957
    .end local v22           #viewtype:I
    :cond_6
    const v2, 0x7f1000ca

    move/from16 v0, v18

    if-ne v0, v2, :cond_7

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v4, 0x800

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 960
    const/4 v2, 0x1

    move-wide/from16 v12, v16

    .end local v16           #extras:J
    .restart local v12       #extras:J
    move/from16 v11, v21

    .end local v21           #viewType:I
    .restart local v11       #viewType:I
    move-object/from16 v6, v20

    .end local v20           #t:Landroid/text/format/Time;
    .restart local v6       #t:Landroid/text/format/Time;
    goto/16 :goto_1

    .line 961
    .end local v6           #t:Landroid/text/format/Time;
    .end local v11           #viewType:I
    .end local v12           #extras:J
    .restart local v16       #extras:J
    .restart local v20       #t:Landroid/text/format/Time;
    .restart local v21       #viewType:I
    :cond_7
    const v2, 0x7f1000cd

    move/from16 v0, v18

    if-ne v0, v2, :cond_8

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v4, 0x40

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 963
    const/4 v2, 0x1

    move-wide/from16 v12, v16

    .end local v16           #extras:J
    .restart local v12       #extras:J
    move/from16 v11, v21

    .end local v21           #viewType:I
    .restart local v11       #viewType:I
    move-object/from16 v6, v20

    .end local v20           #t:Landroid/text/format/Time;
    .restart local v6       #t:Landroid/text/format/Time;
    goto/16 :goto_1

    .line 964
    .end local v6           #t:Landroid/text/format/Time;
    .end local v11           #viewType:I
    .end local v12           #extras:J
    .restart local v16       #extras:J
    .restart local v20       #t:Landroid/text/format/Time;
    .restart local v21       #viewType:I
    :cond_8
    const v2, 0x7f1000ce

    move/from16 v0, v18

    if-ne v0, v2, :cond_f

    .line 965
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-nez v2, :cond_a

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    .line 966
    const-string v3, "preferences_show_controls"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-nez v2, :cond_b

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 968
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mShowString:Ljava/lang/String;

    :goto_6
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 969
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-nez v2, :cond_9

    .line 970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 974
    :cond_9
    const-string v3, "controlsOffset"

    const/4 v2, 0x2

    new-array v4, v2, [I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    :goto_7
    aput v2, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    :goto_8
    aput v2, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v19

    .line 977
    .local v19, slideAnimation:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/AllInOneActivity;->mCalendarControlsAnimationTime:I

    int-to-long v2, v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 978
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 979
    invoke-virtual/range {v19 .. v19}, Landroid/animation/ObjectAnimator;->start()V

    .line 980
    const/4 v2, 0x1

    move-wide/from16 v12, v16

    .end local v16           #extras:J
    .restart local v12       #extras:J
    move/from16 v11, v21

    .end local v21           #viewType:I
    .restart local v11       #viewType:I
    move-object/from16 v6, v20

    .end local v20           #t:Landroid/text/format/Time;
    .restart local v6       #t:Landroid/text/format/Time;
    goto/16 :goto_1

    .line 965
    .end local v6           #t:Landroid/text/format/Time;
    .end local v11           #viewType:I
    .end local v12           #extras:J
    .end local v19           #slideAnimation:Landroid/animation/ObjectAnimator;
    .restart local v16       #extras:J
    .restart local v20       #t:Landroid/text/format/Time;
    .restart local v21       #viewType:I
    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    .line 966
    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    .line 968
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mHideString:Ljava/lang/String;

    goto :goto_6

    .line 974
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    goto :goto_7

    :cond_e
    const/4 v2, 0x0

    goto :goto_8

    .line 981
    :cond_f
    const v2, 0x7f1000c9

    move/from16 v0, v18

    if-ne v0, v2, :cond_10

    .line 982
    const/4 v2, 0x0

    move-wide/from16 v12, v16

    .end local v16           #extras:J
    .restart local v12       #extras:J
    move/from16 v11, v21

    .end local v21           #viewType:I
    .restart local v11       #viewType:I
    move-object/from16 v6, v20

    .end local v20           #t:Landroid/text/format/Time;
    .restart local v6       #t:Landroid/text/format/Time;
    goto/16 :goto_1

    .line 984
    .end local v6           #t:Landroid/text/format/Time;
    .end local v11           #viewType:I
    .end local v12           #extras:J
    .restart local v16       #extras:J
    .restart local v20       #t:Landroid/text/format/Time;
    .restart local v21       #viewType:I
    :cond_10
    const v2, 0x7f1000cc

    move/from16 v0, v18

    if-ne v0, v2, :cond_11

    .line 985
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AllInOneActivity;->launchDatePicker()V

    .line 986
    const/4 v2, 0x1

    move-wide/from16 v12, v16

    .end local v16           #extras:J
    .restart local v12       #extras:J
    move/from16 v11, v21

    .end local v21           #viewType:I
    .restart local v11       #viewType:I
    move-object/from16 v6, v20

    .end local v20           #t:Landroid/text/format/Time;
    .restart local v6       #t:Landroid/text/format/Time;
    goto/16 :goto_1

    .line 990
    .end local v6           #t:Landroid/text/format/Time;
    .end local v11           #viewType:I
    .end local v12           #extras:J
    .restart local v16       #extras:J
    .restart local v20       #t:Landroid/text/format/Time;
    .restart local v21       #viewType:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mOptionsMenuExt:Lcom/mediatek/calendar/extension/IOptionsMenuExt;

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/calendar/extension/IOptionsMenuExt;->onOptionsItemSelected(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 991
    const/4 v2, 0x1

    move-wide/from16 v12, v16

    .end local v16           #extras:J
    .restart local v12       #extras:J
    move/from16 v11, v21

    .end local v21           #viewType:I
    .restart local v11       #viewType:I
    move-object/from16 v6, v20

    .end local v20           #t:Landroid/text/format/Time;
    .restart local v6       #t:Landroid/text/format/Time;
    goto/16 :goto_1

    .line 994
    .end local v6           #t:Landroid/text/format/Time;
    .end local v11           #viewType:I
    .end local v12           #extras:J
    .restart local v16       #extras:J
    .restart local v20       #t:Landroid/text/format/Time;
    .restart local v21       #viewType:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mExtensions:Lcom/android/calendar/extensions/AllInOneMenuExtensions;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/extensions/AllInOneMenuExtensions;->handleItemSelected(Landroid/view/MenuItem;Landroid/content/Context;)Z

    move-result v2

    move-wide/from16 v12, v16

    .end local v16           #extras:J
    .restart local v12       #extras:J
    move/from16 v11, v21

    .end local v21           #viewType:I
    .restart local v11       #viewType:I
    move-object/from16 v6, v20

    .end local v20           #t:Landroid/text/format/Time;
    .restart local v6       #t:Landroid/text/format/Time;
    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 664
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 666
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/CalendarController;->deregisterEventHandler(Ljava/lang/Integer;)V

    .line 667
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mPaused:Z

    .line 668
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 669
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v1, :cond_0

    .line 670
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarViewAdapter;->onPause()V

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 673
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 675
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 676
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 679
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 680
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->setDefaultView(Landroid/content/Context;I)V

    .line 682
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mHandler:Lcom/android/calendar/AllInOneActivity$QueryHandler;

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->resetMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 683
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mCalIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->clearTimeChangesReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 684
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 1433
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 13
    .parameter "query"

    .prologue
    const/4 v4, 0x0

    .line 1438
    const-string v0, "TARDIS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    invoke-static {}, Lcom/android/calendar/Utils;->tardis()V

    .line 1442
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/AllInOneActivity;->exitSearchMode()V

    .line 1444
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x100

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    move-object v1, p0

    move-object v5, v4

    move-object v11, p1

    invoke-virtual/range {v0 .. v12}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 1446
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 24

    .prologue
    .line 600
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 602
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/calendar/AllInOneActivity;->mOnSaveInstanceStateCalled:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/calendar/AllInOneActivity;->mIsClearEventsCompleted:Z

    if-eqz v1, :cond_0

    .line 603
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/calendar/AllInOneActivity;->mIsClearEventsCompleted:Z

    .line 604
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    packed-switch v1, :pswitch_data_0

    .line 617
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v1, v2, v0}, Lcom/android/calendar/CalendarController;->registerFirstEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 619
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/calendar/AllInOneActivity;->mOnSaveInstanceStateCalled:Z

    .line 620
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AllInOneActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 622
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/calendar/AllInOneActivity;->mUpdateOnResume:Z

    if-eqz v1, :cond_1

    .line 623
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v3}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/AllInOneActivity;->initFragments(JILandroid/os/Bundle;)V

    .line 624
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/calendar/AllInOneActivity;->mUpdateOnResume:Z

    .line 626
    :cond_1
    new-instance v5, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v5, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 627
    .local v5, t:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 628
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v3, 0x400

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarController;->getDateFlags()J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object v6, v5

    invoke-virtual/range {v1 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v1, :cond_2

    .line 632
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/calendar/CalendarViewAdapter;->refresh(Landroid/content/Context;)V

    .line 635
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-eqz v1, :cond_3

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mShowString:Ljava/lang/String;

    :goto_1
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 638
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/calendar/AllInOneActivity;->mPaused:Z

    .line 640
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 642
    .local v22, currentMillis:J
    const-wide/16 v20, -0x1

    .line 643
    .local v20, selectedTime:J
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    cmp-long v1, v22, v1

    if-lez v1, :cond_4

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    cmp-long v1, v22, v1

    if-gez v1, :cond_4

    .line 644
    move-wide/from16 v20, v22

    .line 646
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v8, 0x2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    const/16 v16, -0x1

    const/16 v17, -0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/AllInOneActivity;->mIntentAttendeeResponse:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/AllInOneActivity;->mIntentAllDay:Z

    invoke-static {v1, v2}, Lcom/android/calendar/CalendarController$EventInfo;->buildViewExtraLong(IZ)J

    move-result-wide v18

    move-object/from16 v7, p0

    invoke-virtual/range {v6 .. v21}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 650
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    .line 651
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    .line 652
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    .line 653
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/calendar/AllInOneActivity;->mIntentAllDay:Z

    .line 655
    .end local v20           #selectedTime:J
    .end local v22           #currentMillis:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mHandler:Lcom/android/calendar/AllInOneActivity$QueryHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/calendar/Utils;->setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 659
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setTimeChangesReceiver(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mCalIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 660
    return-void

    .line 607
    .end local v5           #t:Landroid/text/format/Time;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v3, 0x80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v9}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 608
    const-string v1, "AllInOneActivity"

    const-string v2, "After CLEAR EVENTS COMPLETED, send Event EVENTS_CHANGED."

    invoke-static {v1, v2}, Lcom/mediatek/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 636
    .restart local v5       #t:Landroid/text/format/Time;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mHideString:Ljava/lang/String;

    goto/16 :goto_1

    .line 604
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "outState"

    .prologue
    const/4 v6, 0x1

    .line 694
    iput-boolean v6, p0, Lcom/android/calendar/AllInOneActivity;->mOnSaveInstanceStateCalled:Z

    .line 695
    const-string v3, "key_restore_time"

    iget-object v4, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v4}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 696
    const-string v3, "key_restore_view"

    iget v4, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 697
    iget v3, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 698
    const-string v3, "key_event_id"

    iget-object v4, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v4}, Lcom/android/calendar/CalendarController;->getEventId()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 706
    :cond_0
    :goto_0
    const-string v3, "key_check_for_accounts"

    iget-boolean v4, p0, Lcom/android/calendar/AllInOneActivity;->mCheckForAccounts:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 710
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v3

    if-nez v3, :cond_4

    .line 711
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/calendar/AllInOneActivity;->mIsInSearchMode:Z

    .line 717
    :goto_1
    const-string v3, "key_search_mode"

    iget-boolean v4, p0, Lcom/android/calendar/AllInOneActivity;->mIsInSearchMode:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 726
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 727
    .local v2, fm:Landroid/app/FragmentManager;
    const-string v3, "EventInfoFragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 728
    .local v1, f:Landroid/app/Fragment;
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 729
    check-cast v0, Lcom/android/calendar/EventInfoFragment;

    .line 730
    .local v0, eif:Lcom/android/calendar/EventInfoFragment;
    const-string v3, "key_event_id"

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->getEventId()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 731
    const-string v3, "key_start_millis"

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->getStartMillis()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 732
    const-string v3, "key_end_millis"

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->getEndMillis()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 733
    const-string v3, "AllInOneActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eventId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->getEventId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", startMillis= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->getStartMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", endMillis= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->getEndMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    .end local v0           #eif:Lcom/android/calendar/EventInfoFragment;
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 739
    return-void

    .line 699
    .end local v1           #f:Landroid/app/Fragment;
    .end local v2           #fm:Landroid/app/FragmentManager;
    :cond_3
    iget v3, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-ne v3, v6, :cond_0

    .line 700
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 701
    .restart local v2       #fm:Landroid/app/FragmentManager;
    const v3, 0x7f100021

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .line 702
    .restart local v1       #f:Landroid/app/Fragment;
    instance-of v3, v1, Lcom/android/calendar/agenda/AgendaFragment;

    if-eqz v3, :cond_0

    .line 703
    const-string v3, "key_event_id"

    check-cast v1, Lcom/android/calendar/agenda/AgendaFragment;

    .end local v1           #f:Landroid/app/Fragment;
    invoke-virtual {v1}, Lcom/android/calendar/agenda/AgendaFragment;->getLastShowEventId()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 713
    .end local v2           #fm:Landroid/app/FragmentManager;
    :cond_4
    iput-boolean v6, p0, Lcom/android/calendar/AllInOneActivity;->mIsInSearchMode:Z

    .line 714
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iput-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mSearchString:Ljava/lang/String;

    .line 715
    const-string v3, "key_search_string"

    iget-object v4, p0, Lcom/android/calendar/AllInOneActivity;->mSearchString:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 714
    :cond_5
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 1526
    invoke-direct {p0}, Lcom/android/calendar/AllInOneActivity;->enterSearchMode()V

    .line 1528
    const/4 v0, 0x0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 1026
    const-string v0, "preferences_week_start_day"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1028
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mUpdateOnResume:Z

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/calendar/AllInOneActivity;->initFragments(JILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSuggestionClick(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1518
    invoke-direct {p0}, Lcom/android/calendar/AllInOneActivity;->exitSearchMode()V

    .line 1520
    const/4 v0, 0x0

    return v0
.end method

.method public onSuggestionSelect(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1512
    const/4 v0, 0x0

    return v0
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 1470
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 10
    .parameter "tab"
    .parameter "ft"

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x1

    const-wide/16 v2, 0x20

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 1451
    const-string v0, "AllInOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TabSelected AllInOne="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " finishing:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, v8, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1466
    :goto_0
    return-void

    .line 1454
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 1455
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v8, 0x3

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_0

    .line 1456
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 1457
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v8, 0x4

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_0

    .line 1458
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, v9, :cond_3

    .line 1459
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-object v1, p0

    move-object v5, v4

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_0

    .line 1461
    :cond_3
    const-string v1, "AllInOneActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TabSelected event from unknown tab: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_4

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    const-string v0, "AllInOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Tab:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Day:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Week:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Month:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Agenda:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1461
    :cond_4
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 1474
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 688
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x200

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 689
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 690
    return-void
.end method

.method public setControlsOffset(I)V
    .locals 4
    .parameter "controlsOffset"

    .prologue
    const/4 v3, 0x0

    .line 1007
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1009
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1010
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    sub-int/2addr v1, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1011
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1022
    :goto_0
    return-void

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1014
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1015
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mVerticalControlsParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_1

    .line 1016
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mVerticalControlsParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 1019
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mVerticalControlsParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateHeight:I

    sub-int/2addr v1, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1020
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mVerticalControlsParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
