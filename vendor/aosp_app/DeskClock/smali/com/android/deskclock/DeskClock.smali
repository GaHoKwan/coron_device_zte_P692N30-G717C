.class public Lcom/android/deskclock/DeskClock;
.super Landroid/app/Activity;
.source "DeskClock.java"

# interfaces
.implements Lcom/android/deskclock/LabelDialogFragment$TimerLabelDialogHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/DeskClock$OnTapListener;,
        Lcom/android/deskclock/DeskClock$TabsAdapter;
    }
.end annotation


# static fields
.field public static final CLOCK_TAB_INDEX:I = 0x1

.field private static final DEBUG:Z = false

.field private static final KEY_CLOCK_STATE:Ljava/lang/String; = "clock_state"

.field private static final KEY_SELECTED_TAB:Ljava/lang/String; = "selected_tab"

.field private static final LOG_TAG:Ljava/lang/String; = "DeskClock"

.field public static final SELECT_TAB_INTENT_EXTRA:Ljava/lang/String; = "deskclock.select.tab"

.field public static final STOPWATCH_TAB_INDEX:I = 0x2

.field public static final TIMER_TAB_INDEX:I


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mClockTab:Landroid/app/ActionBar$Tab;

.field private mSelectedTab:I

.field private mStopwatchTab:Landroid/app/ActionBar$Tab;

.field private mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

.field private mTimerTab:Landroid/app/ActionBar$Tab;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 405
    return-void
.end method

.method private createTabs(I)V
    .locals 5
    .parameter "selectedIndex"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    .line 115
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 116
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 118
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mTimerTab:Landroid/app/ActionBar$Tab;

    .line 119
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTimerTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 120
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTimerTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0d0050

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 121
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mTimerTab:Landroid/app/ActionBar$Tab;

    const-class v2, Lcom/android/deskclock/timer/TimerFragment;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/deskclock/DeskClock$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;I)V

    .line 123
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mClockTab:Landroid/app/ActionBar$Tab;

    .line 124
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mClockTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 125
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mClockTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0d0051

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 126
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mClockTab:Landroid/app/ActionBar$Tab;

    const-class v2, Lcom/android/deskclock/ClockFragment;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/deskclock/DeskClock$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;I)V

    .line 127
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mStopwatchTab:Landroid/app/ActionBar$Tab;

    .line 128
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mStopwatchTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 129
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mStopwatchTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0d0052

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 130
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mStopwatchTab:Landroid/app/ActionBar$Tab;

    const-class v2, Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/deskclock/DeskClock$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;I)V

    .line 131
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 132
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/DeskClock$TabsAdapter;->notifySelectedPage(I)V

    .line 134
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 104
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v1, 0x7f0e0038

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 105
    new-instance v0, Lcom/android/deskclock/DeskClock$TabsAdapter;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/deskclock/DeskClock$TabsAdapter;-><init>(Lcom/android/deskclock/DeskClock;Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    .line 106
    iget v0, p0, Lcom/android/deskclock/DeskClock;->mSelectedTab:I

    invoke-direct {p0, v0}, Lcom/android/deskclock/DeskClock;->createTabs(I)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/android/deskclock/DeskClock;->mSelectedTab:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 110
    return-void
.end method

.method private setHomeTimeZone()V
    .locals 6

    .prologue
    .line 254
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 255
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "home_time_zone"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, homeTimeZone:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 261
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "home_time_zone"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 262
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 263
    const-string v3, "DeskClock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting home time zone to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showMenu(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 214
    new-instance v2, Landroid/widget/PopupMenu;

    invoke-direct {v2, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 215
    .local v2, popupMenu:Landroid/widget/PopupMenu;
    new-instance v3, Lcom/android/deskclock/DeskClock$1;

    invoke-direct {v3, p0}, Lcom/android/deskclock/DeskClock$1;-><init>(Lcom/android/deskclock/DeskClock;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 240
    const v3, 0x7f110004

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 242
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 243
    .local v1, menu:Landroid/view/Menu;
    const v3, 0x7f0e00a9

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 244
    .local v0, help:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 245
    invoke-static {p0, v0}, Lcom/android/deskclock/Utils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;)V

    .line 247
    :cond_0
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    .line 248
    return-void
.end method


# virtual methods
.method public clockButtonsOnClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 200
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/AlarmClock;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 203
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/worldclock/CitiesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 206
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/deskclock/DeskClock;->showMenu(Landroid/view/View;)V

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0033
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    iput v4, p0, Lcom/android/deskclock/DeskClock;->mSelectedTab:I

    .line 141
    if-eqz p1, :cond_0

    .line 142
    const-string v2, "selected_tab"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/DeskClock;->mSelectedTab:I

    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 147
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 148
    const-string v2, "deskclock.select.tab"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 149
    .local v1, tab:I
    if-eq v1, v3, :cond_1

    .line 150
    iput v1, p0, Lcom/android/deskclock/DeskClock;->mSelectedTab:I

    .line 153
    .end local v1           #tab:I
    :cond_1
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->initViews()V

    .line 154
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->setHomeTimeZone()V

    .line 155
    return-void
.end method

.method public onDialogLabelSet(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "timer"
    .parameter "label"
    .parameter "tag"

    .prologue
    .line 474
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 475
    .local v0, frag:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/deskclock/timer/TimerFragment;

    if-eqz v1, :cond_0

    .line 476
    check-cast v0, Lcom/android/deskclock/timer/TimerFragment;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-virtual {v0, p1, p2}, Lcom/android/deskclock/timer/TimerFragment;->setLabel(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    .line 478
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "newIntent"

    .prologue
    const/4 v2, -0x1

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 89
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 92
    const-string v1, "deskclock.select.tab"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 93
    .local v0, tab:I
    if-eq v0, v2, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 98
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 177
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "show_notification"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 181
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 182
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 183
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "notif_app_open"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 185
    invoke-static {p0}, Lcom/android/deskclock/Utils;->showInUseNotifications(Landroid/content/Context;)V

    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 187
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 161
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v2, stopwatchIntent:Landroid/content/Intent;
    const-string v4, "kill_notification"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 165
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 166
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "notif_app_open"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v3, timerIntent:Landroid/content/Intent;
    const-string v4, "notif_in_use_cancel"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 192
    const-string v0, "selected_tab"

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    return-void
.end method

.method public registerPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V
    .locals 1
    .parameter "frag"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/DeskClock$TabsAdapter;->registerPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V

    .line 270
    :cond_0
    return-void
.end method

.method public unregisterPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V
    .locals 1
    .parameter "frag"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/DeskClock$TabsAdapter;->unregisterPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V

    .line 276
    :cond_0
    return-void
.end method
