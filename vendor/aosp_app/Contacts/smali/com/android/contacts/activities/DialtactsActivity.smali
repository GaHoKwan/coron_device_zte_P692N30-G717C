.class public Lcom/android/contacts/activities/DialtactsActivity;
.super Lcom/android/contacts/activities/TransactionSafeActivity;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/DialtactsActivity$DialtactsBroadcastReceiver;,
        Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;,
        Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;,
        Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_TOUCH_DIALER:Ljava/lang/String; = "com.android.phone.action.TOUCH_DIALER"

.field private static final CALLLOG_ENTRY_COMPONENT:Ljava/lang/String; = "com.android.contacts.CallLogLauncherActivity"

.field private static final CALL_ORIGIN_DIALTACTS:Ljava/lang/String; = "com.android.contacts.activities.DialtactsActivity"

.field private static final CALL_SETTINGS_CLASS_NAME:Ljava/lang/String; = "com.mediatek.settings.CallSettings"

.field public static final DEBUG:Z = true

.field public static final EXTRA_CALL_ORIGIN:Ljava/lang/String; = "com.android.phone.CALL_ORIGIN"

.field private static final PAGE_INDEX:Ljava/lang/String; = "page_index"

.field private static final PHONE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final PREF_LAST_MANUALLY_SELECTED_TAB:Ljava/lang/String; = "DialtactsActivity_last_manually_selected_tab"

.field private static final PREF_LAST_MANUALLY_SELECTED_TAB_DEFAULT:I = 0x0

.field private static final SUBACTIVITY_ACCOUNT_FILTER:I = 0x1

.field private static final TAB_INDEX_CALL_LOG:I = 0x1

.field private static final TAB_INDEX_COUNT:I = 0x3

.field private static final TAB_INDEX_DIALER:I = 0x0

.field private static final TAB_INDEX_FAVORITES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DialtactsActivity"

.field private static sIsLandscape:Z


# instance fields
.field private mCachedStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

.field private mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

.field private mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

.field private mChooseResoucesItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private final mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

.field private mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

.field mDuringSwipe:Z

.field private mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFilterText:Ljava/lang/String;

.field private final mFirstLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private mInSearchUi:Z

.field private mLastManuallySelectedFragment:I

.field private mLaunched:Z

.field private mMenu:Landroid/view/Menu;

.field private final mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

.field private mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

.field private final mPhoneFavoriteListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

.field private final mPhoneNumberPickerActionListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

.field private final mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPresetPageIndex:I

.field private mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

.field private mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowSimIndicator:Z

.field private mStatusBarMgr:Landroid/app/StatusBarManager;

.field private final mTabListener:Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;

.field mUserTabClick:Z

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1838
    invoke-direct {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;-><init>()V

    .line 230
    iput-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 238
    iput-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 368
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    .line 376
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$1;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    .line 469
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;

    .line 511
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$2;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 522
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$3;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 535
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$4;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneNumberPickerActionListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    .line 559
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$5;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 594
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$6;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    .line 605
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$7;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFirstLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 1316
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$10;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$10;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    .line 1784
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$DialtactsBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/activities/DialtactsActivity$DialtactsBroadcastReceiver;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1790
    iput-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mShowSimIndicator:Z

    .line 1791
    iput-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLaunched:Z

    .line 1793
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPresetPageIndex:I

    .line 1863
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$11;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$11;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChooseResoucesItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1839
    invoke-static {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ProviderStatusWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    .line 1840
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneNumberPickerFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/contacts/activities/DialtactsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->enterSearchUi()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/mediatek/contacts/calllog/CallLogSearchFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->addSearchFragment()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/Menu;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->disableAllMenus(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->addCallLogSearchFragment()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->showInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/calllog/CallLogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/dialpad/DialpadFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneFavoriteFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/DialtactsActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/DialtactsActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    return-object v0
.end method

.method private addCallLogSearchFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1920
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    if-eqz v2, :cond_0

    .line 1933
    :goto_0
    return-void

    .line 1922
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1923
    .local v0, ft:Landroid/app/FragmentTransaction;
    new-instance v1, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    invoke-direct {v1}, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;-><init>()V

    .line 1925
    .local v1, searchFragment:Landroid/app/Fragment;
    invoke-virtual {v1, v3}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    move-object v2, v1

    .line 1927
    check-cast v2, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    invoke-virtual {v2, v3}, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->setDataSetChangedNotifyEnable(Z)V

    .line 1930
    const v2, 0x7f07012d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1931
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1932
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private addSearchFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 861
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v2, :cond_0

    .line 874
    :goto_0
    return-void

    .line 863
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 864
    .local v0, ft:Landroid/app/FragmentTransaction;
    new-instance v1, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 866
    .local v1, searchFragment:Landroid/app/Fragment;
    invoke-virtual {v1, v3}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    move-object v2, v1

    .line 868
    check-cast v2, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setDataSetChangedNotifyEnable(Z)V

    .line 871
    const v2, 0x7f07012d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 872
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 873
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private disableAllMenus(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    .line 1407
    if-nez p1, :cond_0

    .line 1408
    const-string v3, "DialtactsActivity"

    const-string v4, "[disableAllMenus] menu is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :goto_0
    return-void

    .line 1413
    :cond_0
    const v3, 0x7f0701f5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1414
    .local v0, callSettingsMenuItem:Landroid/view/MenuItem;
    const v3, 0x7f0701f3

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1415
    .local v2, searchMenuItem:Landroid/view/MenuItem;
    const v3, 0x7f0701f4

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1417
    .local v1, chooseResoucesMenuItem:Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1418
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1419
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1420
    const/4 v3, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    goto :goto_0
.end method

.method private enterSearchUi()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1556
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    if-nez v5, :cond_1

    .line 1625
    :cond_0
    :goto_0
    return-void

    .line 1567
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v5, v7}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setDataSetChangedNotifyEnable(Z)V

    .line 1570
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v5, :cond_2

    .line 1571
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->prepareSearchView()V

    .line 1574
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v5}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v5

    if-ne v7, v5, :cond_4

    .line 1575
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const v6, 0x7f0c00fa

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1576
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    invoke-virtual {v5, v7}, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->setDataSetChangedNotifyEnable(Z)V

    .line 1584
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1586
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 1589
    .local v3, tab:Landroid/app/ActionBar$Tab;
    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1590
    invoke-virtual {v3}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v5

    iput v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 1593
    :cond_3
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1595
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1596
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1597
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1598
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1600
    invoke-direct {p0, v8}, Lcom/android/contacts/activities/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V

    .line 1602
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    const/4 v5, 0x3

    if-ge v2, v5, :cond_5

    .line 1603
    invoke-direct {p0, v2, v8}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 1602
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1578
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v2           #i:I
    .end local v3           #tab:Landroid/app/ActionBar$Tab;
    :cond_4
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const v6, 0x7f0c02a4

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1580
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v5, v7}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setDataSetChangedNotifyEnable(Z)V

    goto :goto_1

    .line 1608
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    .restart local v2       #i:I
    .restart local v3       #tab:Landroid/app/ActionBar$Tab;
    :cond_5
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v5}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v5

    if-ne v7, v5, :cond_6

    .line 1609
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    invoke-virtual {v5, v7}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 1610
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    .line 1616
    .local v1, fragment:Landroid/app/Fragment;
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 1617
    .local v4, transaction:Landroid/app/FragmentTransaction;
    invoke-virtual {v4, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1618
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1619
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1623
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 1624
    iput-boolean v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    goto/16 :goto_0

    .line 1613
    .end local v1           #fragment:Landroid/app/Fragment;
    .end local v4           #transaction:Landroid/app/FragmentTransaction;
    :cond_6
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v5, v7}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 1614
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    .restart local v1       #fragment:Landroid/app/Fragment;
    goto :goto_3
.end method

.method private exitSearchUi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1648
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1651
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v3, :cond_0

    .line 1653
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setDataSetChangedNotifyEnable(Z)V

    .line 1655
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 1657
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1658
    .local v2, transaction:Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1659
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1663
    .end local v2           #transaction:Landroid/app/FragmentTransaction;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    if-eqz v3, :cond_1

    .line 1665
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    invoke-virtual {v3, v4}, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->setDataSetChangedNotifyEnable(Z)V

    .line 1667
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 1669
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1670
    .restart local v2       #transaction:Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1671
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1675
    .end local v2           #transaction:Landroid/app/FragmentTransaction;
    :cond_1
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1676
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1677
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1679
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_3

    .line 1680
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    if-ne v1, v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0, v1, v3}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 1679
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1680
    goto :goto_1

    .line 1684
    :cond_3
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 1685
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 1687
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1689
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V

    .line 1692
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1695
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    .line 1696
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    .line 1697
    return-void
.end method

.method private fixIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 1020
    const-string v0, "android.intent.action.CALL_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1022
    const-string v0, "call_key"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1023
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1025
    :cond_0
    return-void
.end method

.method public static getCallSettingsIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1763
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1764
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.mediatek.settings.CallSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1765
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1766
    return-object v0
.end method

.method private getFragmentAt(I)Landroid/app/Fragment;
    .locals 3
    .parameter "position"

    .prologue
    .line 1700
    packed-switch p1, :pswitch_data_0

    .line 1708
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown fragment index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1702
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    .line 1706
    :goto_0
    return-object v0

    .line 1704
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    goto :goto_0

    .line 1706
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    goto :goto_0

    .line 1700
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hideInputMethod(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1637
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1638
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1639
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1641
    :cond_0
    return-void
.end method

.method private isDialIntent(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 1222
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1223
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.phone.action.TOUCH_DIALER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1233
    :cond_0
    :goto_0
    return v2

    .line 1226
    :cond_1
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1227
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1228
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_2

    const-string v3, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1233
    .end local v1           #data:Landroid/net/Uri;
    :cond_2
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getDialtactsExtension()Lcom/android/contacts/ext/DialtactsExtension;

    move-result-object v2

    const-string v3, "ExtensionForOP01"

    invoke-virtual {v2, p1, v3}, Lcom/android/contacts/ext/DialtactsExtension;->checkComponentName(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private isMissedCallExist()Z
    .locals 4

    .prologue
    .line 1874
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1875
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getMissedCallCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 1876
    const/4 v2, 0x1

    .line 1881
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 1878
    :catch_0
    move-exception v0

    .line 1879
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DialtactsActivity"

    const-string v3, "Failed to call ITelephony getMissedCallsCount()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1881
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSendKeyWhileInCall(Landroid/content/Intent;Z)Z
    .locals 6
    .parameter "intent"
    .parameter "recentCallsRequest"

    .prologue
    const/4 v3, 0x0

    .line 1108
    if-eqz p2, :cond_0

    .line 1109
    const-string v4, "call_key"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1112
    .local v0, callKey:Z
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1113
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1114
    const/4 v3, 0x1

    .line 1121
    .end local v0           #callKey:Z
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v3

    .line 1116
    .restart local v0       #callKey:Z
    :catch_0
    move-exception v1

    .line 1117
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "DialtactsActivity"

    const-string v5, "Failed to handle send while in call"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private prepareOptionsMenuForCallLogTab(Landroid/view/Menu;)V
    .locals 11
    .parameter "menu"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1469
    const v6, 0x7f0701f3

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1470
    .local v5, searchMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f6

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1471
    .local v4, filterOptionMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f7

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1472
    .local v0, addContactOptionMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f5

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1473
    .local v1, callSettingsMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f8

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1476
    .local v3, emptyRightMenuItem:Landroid/view/MenuItem;
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1477
    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1478
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1479
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1482
    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1485
    const v6, 0x7f0701f4

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1486
    .local v2, chooseResoucesMenuItem:Landroid/view/MenuItem;
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1487
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1492
    :goto_0
    const-string v6, "DialtactsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fromPosition: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;

    invoke-virtual {v8}, Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;->getFromPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    const-string v6, "DialtactsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "toPosition: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;

    invoke-virtual {v8}, Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;->getToPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;

    invoke-virtual {v6}, Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;->getFromPosition()I

    move-result v6

    if-ne v6, v9, :cond_1

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;

    invoke-virtual {v6}, Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;->getToPosition()I

    move-result v6

    if-nez v6, :cond_1

    .line 1496
    invoke-direct {p0, v9, v10}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 1497
    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1498
    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1499
    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1511
    :goto_1
    return-void

    .line 1489
    :cond_0
    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1501
    :cond_1
    invoke-direct {p0, v9, v9}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 1502
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1503
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1504
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1505
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1507
    :cond_2
    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private prepareOptionsMenuForDialerTab(Landroid/view/Menu;)V
    .locals 11
    .parameter "menu"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1426
    const-string v6, "DialtactsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPrepareOptionsMenu(dialer). swipe: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", user tab click: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const v6, 0x7f0701f3

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1432
    .local v5, searchMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f6

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1433
    .local v4, filterOptionMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f7

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1434
    .local v0, addContactOptionMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f5

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1435
    .local v1, callSettingsMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f8

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1437
    .local v3, emptyRightMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f4

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1440
    .local v2, chooseResoucesMenuItem:Landroid/view/MenuItem;
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1441
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1443
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1444
    iget-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    if-eqz v6, :cond_1

    .line 1446
    :cond_0
    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1447
    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1453
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isDialerUseSystemOptionMenu(Landroid/content/Context;)Z

    move-result v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1465
    :goto_0
    return-void

    .line 1457
    :cond_1
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1462
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isDialerUseSystemOptionMenu(Landroid/content/Context;)Z

    move-result v6

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1463
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private prepareOptionsMenuForFavoritesTab(Landroid/view/Menu;)V
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1515
    const v6, 0x7f0701f3

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1516
    .local v5, searchMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f6

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1517
    .local v4, filterOptionMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f7

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1518
    .local v0, addContactOptionMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f5

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1519
    .local v1, callSettingsMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f8

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1522
    .local v3, emptyRightMenuItem:Landroid/view/MenuItem;
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1523
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1524
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1525
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1526
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1528
    const v6, 0x7f0701f4

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1529
    .local v2, chooseResoucesMenuItem:Landroid/view/MenuItem;
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1530
    return-void
.end method

.method private prepareOptionsMenuInSearchMode(Landroid/view/Menu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x0

    .line 1382
    const v6, 0x7f0701f3

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1383
    .local v5, searchMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f6

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1384
    .local v4, filterOptionMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f7

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1385
    .local v0, addContactOptionMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f5

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1386
    .local v1, callSettingsMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f8

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1388
    .local v3, emptyRightMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f4

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1391
    .local v2, chooseResoucesMenuItem:Landroid/view/MenuItem;
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1395
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1396
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1397
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1398
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1400
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1401
    return-void
.end method

.method private prepareSearchView()V
    .locals 5

    .prologue
    .line 877
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040055

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 879
    .local v0, searchViewLayout:Landroid/view/View;
    const v1, 0x7f0700f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 880
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 881
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 888
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 889
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x7f0c02a4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 890
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 891
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/android/contacts/activities/DialtactsActivity$8;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/DialtactsActivity$8;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 911
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 913
    return-void
.end method

.method private sendFragmentVisibilityChange(IZ)V
    .locals 4
    .parameter "position"
    .parameter "visibility"

    .prologue
    .line 1714
    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFragmentVisibiltyChange(). position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", visibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    if-ltz p1, :cond_0

    .line 1719
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    .line 1720
    .local v0, fragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 1721
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1722
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 1725
    .end local v0           #fragment:Landroid/app/Fragment;
    :cond_0
    return-void
.end method

.method private setCurrentTab(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 1131
    const-string v6, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1132
    .local v3, recentCallsRequest:Z
    invoke-direct {p0, p1, v3}, Lcom/android/contacts/activities/DialtactsActivity;->isSendKeyWhileInCall(Landroid/content/Intent;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1133
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1180
    :goto_0
    return-void

    .line 1137
    :cond_0
    const/4 v0, 0x0

    .line 1140
    .local v0, componentName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCurrentTab componentName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/contacts/activities/DialtactsActivity;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    :goto_1
    iget v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 1155
    .local v4, savedTabIndex:I
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1156
    :cond_1
    const/4 v5, 0x0

    .line 1167
    .local v5, tabIndex:I
    :goto_2
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    .line 1168
    .local v2, previousItemIndex:I
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v5, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1169
    if-eq v2, v5, :cond_2

    .line 1170
    invoke-direct {p0, v2, v8}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 1172
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v6, v5}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->setCurrentPosition(I)V

    .line 1173
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 1176
    iput v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 1177
    iput-boolean v8, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 1178
    iput-boolean v8, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 1179
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPresetPageIndex:I

    goto :goto_0

    .line 1143
    .end local v2           #previousItemIndex:I
    .end local v4           #savedTabIndex:I
    .end local v5           #tabIndex:I
    :catch_0
    move-exception v1

    .line 1145
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "setCurrentTab componentName exception"

    invoke-virtual {p0, v6}, Lcom/android/contacts/activities/DialtactsActivity;->log(Ljava/lang/String;)V

    .line 1146
    const-string v0, ""

    goto :goto_1

    .line 1157
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #savedTabIndex:I
    :cond_3
    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->isMissedCallExist()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->getInstance(Landroid/content/Context;)Lcom/android/contacts/calllog/DefaultVoicemailNotifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->hasNewVoicemails()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1159
    :cond_4
    const/4 v5, 0x1

    .restart local v5       #tabIndex:I
    goto :goto_2

    .line 1160
    .end local v5           #tabIndex:I
    :cond_5
    const-string v6, "com.android.contacts.CallLogLauncherActivity"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1162
    const/4 v5, 0x1

    .restart local v5       #tabIndex:I
    goto :goto_2

    .line 1164
    .end local v5           #tabIndex:I
    :cond_6
    iget v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .restart local v5       #tabIndex:I
    goto :goto_2
.end method

.method private setupCallLog()V
    .locals 4

    .prologue
    const v3, 0x7f0c0174

    const v2, 0x7f0200d1

    .line 1062
    sget-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->sIsLandscape:Z

    if-eqz v1, :cond_0

    .line 1063
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 1064
    .local v0, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 1065
    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 1066
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 1067
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1077
    :goto_0
    return-void

    .line 1070
    .end local v0           #tab:Landroid/app/ActionBar$Tab;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 1071
    .restart local v0       #tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 1072
    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 1073
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 1074
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0
.end method

.method private setupDialer()V
    .locals 6

    .prologue
    const v5, 0x7f0c0173

    const v4, 0x7f0200cf

    const/4 v3, 0x0

    .line 1029
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->sIsLandscape:Z

    if-eqz v2, :cond_0

    .line 1030
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 1031
    .local v0, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 1032
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 1033
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1034
    .local v1, tabView:Landroid/widget/ImageView;
    const/16 v2, 0xa

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1035
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1038
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/16 v3, 0x78

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1039
    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 1040
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1058
    .end local v1           #tabView:Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 1051
    .end local v0           #tab:Landroid/app/ActionBar$Tab;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 1052
    .restart local v0       #tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 1053
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 1054
    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 1055
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0
.end method

.method private setupFavorites()V
    .locals 3

    .prologue
    const v2, 0x7f0200cd

    .line 1081
    sget-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->sIsLandscape:Z

    if-eqz v1, :cond_0

    .line 1082
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 1083
    .local v0, tab:Landroid/app/ActionBar$Tab;
    const v1, 0x7f0c0171

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 1084
    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 1085
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 1086
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1096
    :goto_0
    return-void

    .line 1089
    .end local v0           #tab:Landroid/app/ActionBar$Tab;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 1090
    .restart local v0       #tab:Landroid/app/ActionBar$Tab;
    const v1, 0x7f0c0172

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 1091
    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 1092
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Lcom/android/contacts/activities/DialtactsActivity$DialerTabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 1093
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0
.end method

.method private setupFilterText(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1271
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1274
    :cond_1
    const-string v1, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1275
    .local v0, filter:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1276
    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterText:Ljava/lang/String;

    goto :goto_0
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1628
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1629
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1630
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1631
    const-string v1, "DialtactsActivity"

    const-string v2, "Failed to show soft input method."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    :cond_0
    return-void
.end method

.method private updateFakeMenuButtonsVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 1736
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFakeMenuButtonVisibility("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    return-void
.end method


# virtual methods
.method public addDialpadScrollingThreshold(Z)V
    .locals 13
    .parameter "enabled"

    .prologue
    .line 1892
    if-nez p1, :cond_0

    .line 1893
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/ViewPager;->setRectSlopScaleInTab(IIIIFI)V

    .line 1910
    :goto_0
    return-void

    .line 1896
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 1897
    .local v11, mNumButtonHeight:I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 1898
    .local v9, mDialButtonHeight:I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1899
    .local v10, mDialpadDividerHeight:I
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1900
    .local v8, dm:Landroid/util/DisplayMetrics;
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 1901
    .local v12, wm:Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1902
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1903
    .local v7, dialpadRect:Landroid/graphics/Rect;
    const/4 v0, 0x0

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1904
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v0, v9

    mul-int/lit8 v1, v11, 0x4

    sub-int/2addr v0, v1

    mul-int/lit8 v1, v10, 0x2

    sub-int/2addr v0, v1

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1906
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1907
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v0, v9

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 1908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialpadRect.top "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dialpadRect.bottom "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dialpadRect.right "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->log(Ljava/lang/String;)V

    .line 1909
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    const/high16 v5, 0x40a0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/ViewPager;->setRectSlopScaleInTab(IIIIFI)V

    goto/16 :goto_0
.end method

.method public getAndClearFilterText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterText:Ljava/lang/String;

    .line 1259
    .local v0, filterText:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterText:Ljava/lang/String;

    .line 1260
    return-object v0
.end method

.method public getCallOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1246
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.contacts.activities.DialtactsActivity"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentFragmentId()I
    .locals 1

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;
    .locals 1

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCachedStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    return-object v0
.end method

.method public isLandscapeView()Z
    .locals 2

    .prologue
    .line 722
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 724
    const/4 v0, 0x1

    .line 726
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1831
    const-string v0, "DialtactsActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1771
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1781
    :goto_0
    return-void

    .line 1774
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1776
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-static {v0, p2, p3}, Lcom/android/contacts/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V

    goto :goto_0

    .line 1774
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 6
    .parameter "fragment"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 919
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 921
    .local v0, currentPosition:I
    :goto_0
    instance-of v2, p1, Lcom/android/contacts/dialpad/DialpadFragment;

    if-eqz v2, :cond_2

    .line 922
    check-cast p1, Lcom/android/contacts/dialpad/DialpadFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    .line 973
    :cond_0
    :goto_1
    return-void

    .line 919
    .end local v0           #currentPosition:I
    .restart local p1
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 923
    .restart local v0       #currentPosition:I
    :cond_2
    instance-of v2, p1, Lcom/android/contacts/calllog/CallLogFragment;

    if-eqz v2, :cond_3

    .line 924
    check-cast p1, Lcom/android/contacts/calllog/CallLogFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    goto :goto_1

    .line 925
    .restart local p1
    :cond_3
    instance-of v2, p1, Lcom/android/contacts/list/PhoneFavoriteFragment;

    if-eqz v2, :cond_4

    .line 926
    check-cast p1, Lcom/android/contacts/list/PhoneFavoriteFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    .line 927
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneFavoriteFragment;->setListener(Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;)V

    .line 928
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 930
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneFavoriteFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    goto :goto_1

    .line 932
    .restart local p1
    :cond_4
    instance-of v2, p1, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v2, :cond_6

    .line 933
    check-cast p1, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    .line 934
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneNumberPickerActionListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;)V

    .line 935
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/list/ContactEntryListFragment;->setQuickContactEnabled(Z)V

    .line 936
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/list/ContactEntryListFragment;->setDarkTheme(Z)V

    .line 937
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    sget-object v3, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    .line 938
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setUseCallableUri(Z)V

    .line 939
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 941
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 950
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v5}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 953
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 954
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 955
    .local v1, transaction:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 956
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_1

    .line 958
    .end local v1           #transaction:Landroid/app/FragmentTransaction;
    .restart local p1
    :cond_6
    instance-of v2, p1, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    if-eqz v2, :cond_0

    .line 960
    check-cast p1, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    .line 961
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    invoke-virtual {v2, v5}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 962
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    new-instance v3, Lcom/android/contacts/activities/DialtactsActivity$9;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/DialtactsActivity$9;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    invoke-virtual {v2, v3}, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->setListener(Lcom/mediatek/contacts/calllog/CallLogSearchFragment$Listener;)V

    .line 967
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 968
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 969
    .restart local v1       #transaction:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 970
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_1
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 1283
    const-string v1, "DialtactsActivityOnBackPressed"

    invoke-static {v1}, Lcom/mediatek/contacts/Profiler;->trace(Ljava/lang/String;)V

    .line 1284
    const/4 v0, 0x0

    .line 1285
    .local v0, bAutoRejectedFilter:Z
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    if-eqz v1, :cond_0

    .line 1286
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v1}, Lcom/android/contacts/calllog/CallLogFragment;->isAutoRejectedFilterMode()Z

    move-result v0

    .line 1289
    :cond_0
    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBackPressed() Mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Tab:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v1, :cond_2

    .line 1294
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V

    .line 1314
    :cond_1
    :goto_0
    return-void

    .line 1297
    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1298
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v1}, Lcom/android/contacts/calllog/CallLogFragment;->onBackHandled()V

    goto :goto_0

    .line 1299
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1305
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 1307
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    if-eqz v1, :cond_1

    .line 1308
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v1}, Lcom/android/contacts/calllog/CallLogFragment;->onBackHandled()V

    goto :goto_0

    .line 1312
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 820
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 843
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onClick event from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 618
    invoke-super {p0, p1}, Lcom/android/contacts/activities/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 620
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->isLandscapeView()Z

    move-result v7

    sput-boolean v7, Lcom/android/contacts/activities/DialtactsActivity;->sIsLandscape:Z

    .line 626
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->registerReceiver(Landroid/app/Activity;)V

    .line 631
    const-string v7, "+DialtactsActivity.onCreate"

    invoke-static {v7}, Lcom/mediatek/contacts/Profiler;->trace(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 634
    .local v4, intent:Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/android/contacts/activities/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 635
    const v7, 0x7f040054

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setContentView(I)V

    .line 637
    invoke-static {p0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 638
    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    iget-object v8, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    invoke-virtual {v7, v8}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 640
    const v7, 0x7f07012d

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 641
    .local v1, dialtactsFrame:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 642
    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFirstLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v7}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 645
    :cond_0
    const v7, 0x7f0700ba

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    iput-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 646
    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v8, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Landroid/app/FragmentManager;)V

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 647
    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v8, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 648
    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v12}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 649
    invoke-virtual {p0, v11}, Lcom/android/contacts/activities/DialtactsActivity;->addDialpadScrollingThreshold(Z)V

    .line 651
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 652
    .local v2, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090060

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 653
    .local v5, minCellSize:I
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v0, v7, v5

    .line 654
    .local v0, cellCount:I
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v3, v7, v0

    .line 655
    .local v3, fakeMenuItemWidth:I
    const-string v7, "DialtactsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The size of fake menu buttons (in pixel): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupDialer()V

    .line 682
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupCallLog()V

    .line 683
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupFavorites()V

    .line 684
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 685
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 686
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 689
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 690
    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "DialtactsActivity_last_manually_selected_tab"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 692
    iget v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    const/4 v8, 0x3

    if-lt v7, v8, :cond_1

    .line 694
    iput v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 698
    :cond_1
    if-eqz p1, :cond_2

    .line 699
    const-string v7, "page_index"

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPresetPageIndex:I

    .line 702
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/contacts/activities/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 704
    const-string v7, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez p1, :cond_3

    .line 706
    invoke-direct {p0, v4}, Lcom/android/contacts/activities/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 709
    :cond_3
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.android.contacts.ACTION_PHB_LOAD_FINISHED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 711
    .local v6, phbLoadIntentFilter:Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v6}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 712
    iput-boolean v11, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLaunched:Z

    .line 713
    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v7, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->addListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 714
    const-string v7, "-DialtactsActivity.onCreate"

    invoke-static {v7}, Lcom/mediatek/contacts/Profiler;->trace(Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    .line 1333
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    .line 1334
    .local v4, inflater:Landroid/view/MenuInflater;
    const v6, 0x7f100007

    invoke-virtual {v4, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1336
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMenu:Landroid/view/Menu;

    .line 1339
    const v6, 0x7f0701f5

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1340
    .local v1, callSettingsMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f3

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1341
    .local v5, searchMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f6

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1342
    .local v3, filterOptionMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f0701f7

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1344
    .local v0, addContactOptionMenuItem:Landroid/view/MenuItem;
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1345
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1346
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1347
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.INSERT"

    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1350
    const v6, 0x7f0701f4

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1351
    .local v2, chooseResoucesMenuItem:Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChooseResoucesItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1353
    const/4 v6, 0x1

    return v6
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 798
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 800
    invoke-static {}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->dismissDialog()V

    .line 802
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->removeListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 808
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->unregisterReceiver(Landroid/app/Activity;)V

    .line 812
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 815
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->removeListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 816
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1814
    const/4 v0, 0x0

    .line 1815
    .local v0, handled:Z
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_0

    .line 1816
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/dialpad/DialpadFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1819
    :cond_0
    if-eqz v0, :cond_1

    .line 1823
    .end local v0           #handled:Z
    :goto_0
    return v0

    .restart local v0       #handled:Z
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "newIntent"

    .prologue
    const/4 v3, 0x1

    .line 1185
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1186
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1187
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    if-eqz v1, :cond_0

    .line 1188
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->forceUpdateDialerSearch()V

    .line 1192
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1193
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 1194
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 1195
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1196
    .local v0, action:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1198
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V

    .line 1200
    :cond_3
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1201
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V

    .line 1204
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_8

    .line 1205
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    if-eqz v1, :cond_7

    .line 1206
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->setStartedFromNewIntent(Z)V

    .line 1217
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1218
    return-void

    .line 1208
    :cond_7
    const-string v1, "DialtactsActivity"

    const-string v2, "DialpadFragment isn\'t ready yet when the tab is already selected."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1210
    :cond_8
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 1211
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    if-eqz v1, :cond_9

    .line 1212
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v1, p1}, Lcom/android/contacts/calllog/CallLogFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1214
    :cond_9
    const-string v1, "DialtactsActivity"

    const-string v2, "CallLogFragment isn\'t ready yet when the tab is already selected."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 977
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 979
    const-string v0, "+DialtactsActivity.onPause"

    invoke-static {v0}, Lcom/mediatek/contacts/Profiler;->trace(Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment;->mSelectResDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment;->mSelectResDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment;->mSelectResDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 986
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/calllog/CallLogFragment;->mSelectResDialog:Landroid/app/AlertDialog;

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DialtactsActivity_last_manually_selected_tab"

    iget v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1001
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 1003
    const-string v0, "-DialtactsActivity.onPause"

    invoke-static {v0}, Lcom/mediatek/contacts/Profiler;->trace(Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->stop()V

    .line 1014
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1358
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v1, :cond_1

    .line 1359
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->prepareOptionsMenuInSearchMode(Landroid/view/Menu;)V

    .line 1377
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1362
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 1363
    .local v0, tab:Landroid/app/ActionBar$Tab;
    if-eqz v0, :cond_0

    .line 1364
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1366
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->prepareOptionsMenuForDialerTab(Landroid/view/Menu;)V

    goto :goto_0

    .line 1369
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->prepareOptionsMenuForCallLogTab(Landroid/view/Menu;)V

    goto :goto_0

    .line 1372
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->prepareOptionsMenuForFavoritesTab(Landroid/view/Menu;)V

    goto :goto_0

    .line 1364
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onProviderStatusChange()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1844
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v1}, Lcom/android/contacts/list/ProviderStatusWatcher;->getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    move-result-object v0

    .line 1845
    .local v0, providerStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;
    const-string v4, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onProviderStatusChange]providerStatus:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "||mDialpadFragment is null:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    if-eqz v1, :cond_0

    .line 1848
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCachedStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    invoke-virtual {v1, v4, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->updateProviderStatus(Lcom/android/contacts/list/ProviderStatusWatcher$Status;Lcom/android/contacts/list/ProviderStatusWatcher$Status;)V

    .line 1851
    :cond_0
    const-string v1, "DialtactsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProviderStatusChange mCallLogFragment is null:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    if-nez v5, :cond_3

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    if-eqz v1, :cond_1

    .line 1853
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/calllog/CallLogFragment;->updateProviderStauts(Lcom/android/contacts/list/ProviderStatusWatcher$Status;)V

    .line 1856
    :cond_1
    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCachedStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    .line 1857
    return-void

    :cond_2
    move v1, v3

    .line 1845
    goto :goto_0

    :cond_3
    move v2, v3

    .line 1851
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 788
    const-string v0, "[onRestoreInstanceState] start..."

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->log(Ljava/lang/String;)V

    .line 789
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 790
    iput-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 791
    iput-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 792
    const-string v0, "[onRestoreInstanceState] end..."

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->log(Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 733
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onResume()V

    .line 740
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 746
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->start()V

    .line 751
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1885
    const-string v0, "page_index"

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1886
    invoke-super {p0, p1}, Lcom/android/contacts/activities/TransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1887
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 755
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onStart()V

    .line 756
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    if-eqz v2, :cond_0

    .line 757
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/PhoneFavoriteFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 759
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v2, :cond_1

    .line 760
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 763
    :cond_1
    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    if-eqz v2, :cond_3

    .line 764
    :cond_2
    const-string v2, "DialtactsActivity"

    const-string v5, "reset buggy flag state.."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 766
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 769
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v2}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v0

    .line 771
    .local v0, currentPosition:I
    const-string v2, "DialtactsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStart(). current position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v6}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Reset all menu visibility state."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    if-nez v0, :cond_6

    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-nez v2, :cond_6

    move v2, v3

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/contacts/activities/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V

    .line 775
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_9

    .line 776
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 778
    :cond_5
    invoke-direct {p0, v1, v4}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 775
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    :cond_6
    move v2, v4

    .line 774
    goto :goto_0

    .line 780
    .restart local v1       #i:I
    :cond_7
    if-ne v1, v0, :cond_8

    move v2, v3

    :goto_3
    invoke-direct {p0, v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    goto :goto_2

    :cond_8
    move v2, v4

    goto :goto_3

    .line 783
    :cond_9
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    if-nez p4, :cond_4

    .line 1538
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v0, :cond_3

    .line 1539
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1540
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->showInputMethod(Landroid/view/View;)V

    .line 1550
    :goto_0
    return-void

    .line 1542
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1545
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->enterSearchUi()V

    goto :goto_0

    .line 1548
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0
.end method
