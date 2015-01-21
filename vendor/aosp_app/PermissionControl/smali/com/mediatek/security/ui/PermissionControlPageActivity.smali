.class public Lcom/mediatek/security/ui/PermissionControlPageActivity;
.super Landroid/app/Activity;
.source "PermissionControlPageActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/mediatek/security/ui/ActionBarAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerListener;,
        Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;
    }
.end annotation


# instance fields
.field private mActionBarAdapter:Lcom/mediatek/security/ui/ActionBarAdapter;

.field private mAppsFragment:Lcom/mediatek/security/ui/AppsFragment;

.field final mAppsTag:Ljava/lang/String;

.field private mEmptyView:Landroid/widget/FrameLayout;

.field private mPermissionsFragment:Lcom/mediatek/security/ui/PermissionsFragment;

.field final mPermissionsTag:Ljava/lang/String;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSwitch:Landroid/widget/Switch;

.field private final mSwitchContentObserver:Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;

.field private mTabPager:Landroid/support/v4/view/ViewPager;

.field private mTabPagerAdapter:Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;

.field private final mTabPagerListener:Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerListener;

.field private mUserCheckedFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    new-instance v0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerListener;-><init>(Lcom/mediatek/security/ui/PermissionControlPageActivity;Lcom/mediatek/security/ui/PermissionControlPageActivity$1;)V

    iput-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mTabPagerListener:Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerListener;

    .line 101
    const-string v0, "tab-pager-perms"

    iput-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mPermissionsTag:Ljava/lang/String;

    .line 102
    const-string v0, "tab-pager-apps"

    iput-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mAppsTag:Ljava/lang/String;

    .line 230
    new-instance v0, Lcom/mediatek/security/ui/PermissionControlPageActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/security/ui/PermissionControlPageActivity$1;-><init>(Lcom/mediatek/security/ui/PermissionControlPageActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mSwitchContentObserver:Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/security/ui/PermissionControlPageActivity;)Lcom/mediatek/security/ui/PermissionsFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mPermissionsFragment:Lcom/mediatek/security/ui/PermissionsFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/security/ui/PermissionControlPageActivity;)Lcom/mediatek/security/ui/AppsFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mAppsFragment:Lcom/mediatek/security/ui/AppsFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/security/ui/PermissionControlPageActivity;)Lcom/mediatek/security/ui/ActionBarAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mActionBarAdapter:Lcom/mediatek/security/ui/ActionBarAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/security/ui/PermissionControlPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/security/ui/PermissionControlPageActivity;->updateFragmentsVisibility()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/security/ui/PermissionControlPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/security/ui/PermissionControlPageActivity;->checkUiEnabled()V

    return-void
.end method

.method private checkUiEnabled()V
    .locals 4

    .prologue
    .line 444
    invoke-static {p0}, Lcom/mediatek/security/service/PermControlUtils;->isInHouseEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 446
    .local v0, enable:Z
    const-string v1, "PermControlPageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkEnabled(), update current interface, enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    if-nez v0, :cond_0

    .line 449
    const-string v1, "PermControlPageActivity"

    const-string v2, "finish itself"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 452
    :cond_0
    return-void
.end method

.method private updateFragmentsVisibility()V
    .locals 5

    .prologue
    .line 347
    iget-object v2, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mActionBarAdapter:Lcom/mediatek/security/ui/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/mediatek/security/ui/ActionBarAdapter;->getCurrentTab()Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    move-result-object v0

    .line 348
    .local v0, tab:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 349
    .local v1, tabIndex:I
    iget-object v2, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 350
    const-string v2, "PermControlPageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTabPager.getCurrentItem() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tabIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v2, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 356
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 358
    return-void
.end method


# virtual methods
.method protected addUI()V
    .locals 4

    .prologue
    const v3, 0x7f08000b

    .line 393
    const-string v1, "PermControlPageActivity"

    const-string v2, "addUI()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 398
    .local v0, transaction:Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mEmptyView:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 400
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "tab-pager-perms"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/mediatek/security/ui/PermissionsFragment;

    iput-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mPermissionsFragment:Lcom/mediatek/security/ui/PermissionsFragment;

    .line 402
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "tab-pager-apps"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/mediatek/security/ui/AppsFragment;

    iput-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mAppsFragment:Lcom/mediatek/security/ui/AppsFragment;

    .line 405
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mPermissionsFragment:Lcom/mediatek/security/ui/PermissionsFragment;

    if-nez v1, :cond_0

    .line 406
    new-instance v1, Lcom/mediatek/security/ui/PermissionsFragment;

    invoke-direct {v1}, Lcom/mediatek/security/ui/PermissionsFragment;-><init>()V

    iput-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mPermissionsFragment:Lcom/mediatek/security/ui/PermissionsFragment;

    .line 407
    new-instance v1, Lcom/mediatek/security/ui/AppsFragment;

    invoke-direct {v1}, Lcom/mediatek/security/ui/AppsFragment;-><init>()V

    iput-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mAppsFragment:Lcom/mediatek/security/ui/AppsFragment;

    .line 408
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mPermissionsFragment:Lcom/mediatek/security/ui/PermissionsFragment;

    const-string v2, "tab-pager-perms"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 409
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mAppsFragment:Lcom/mediatek/security/ui/AppsFragment;

    const-string v2, "tab-pager-apps"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mPermissionsFragment:Lcom/mediatek/security/ui/PermissionsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 412
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mAppsFragment:Lcom/mediatek/security/ui/AppsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 414
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 416
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 418
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mActionBarAdapter:Lcom/mediatek/security/ui/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/mediatek/security/ui/ActionBarAdapter;->removeAllTab()V

    .line 419
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mActionBarAdapter:Lcom/mediatek/security/ui/ActionBarAdapter;

    iget-object v2, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/mediatek/security/ui/ActionBarAdapter;->addUpdateTab(Landroid/os/Bundle;)V

    .line 420
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 361
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    const-string v2, "PermControlPageActivity"

    const-string v3, "Monkey is running"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-boolean v3, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mUserCheckedFlag:Z

    if-nez v3, :cond_1

    .line 366
    const-string v2, "PermControlPageActivity"

    const-string v3, "mUserCheckedFlag is false , return "

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    :cond_1
    const-string v3, "PermControlPageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckedChanged(),isChecked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    if-eqz p2, :cond_2

    .line 373
    invoke-virtual {p0}, Lcom/mediatek/security/ui/PermissionControlPageActivity;->addUI()V

    .line 374
    invoke-static {v1, p0}, Lcom/mediatek/security/service/PermControlUtils;->enablePermissionControl(ZLandroid/content/Context;)V

    goto :goto_0

    .line 377
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "permission_switch_off_dlg_state"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    .line 379
    .local v1, isShowDlg:Z
    :goto_1
    const-string v3, "PermControlPageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckedChanged(), isShow alert Dlg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz v1, :cond_4

    .line 382
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 383
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.mediatek.security.SWITCH_OFF_CONTROL_FROM_APP_PERM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #isShowDlg:Z
    :cond_3
    move v1, v2

    .line 377
    goto :goto_1

    .line 386
    .restart local v1       #isShowDlg:Z
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/security/ui/PermissionControlPageActivity;->removeUI()V

    .line 387
    invoke-static {v2, p0}, Lcom/mediatek/security/service/PermControlUtils;->enablePermissionControl(ZLandroid/content/Context;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x10

    const/4 v10, -0x2

    const v9, 0x7f08000b

    const/4 v2, 0x0

    .line 240
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 241
    const v5, 0x7f040005

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 242
    const v5, 0x7f08000c

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mEmptyView:Landroid/widget/FrameLayout;

    .line 243
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 245
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 247
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x207000b

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    iput-object v5, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mSwitch:Landroid/widget/Switch;

    .line 248
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f06

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 249
    .local v3, padding:I
    iget-object v5, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v2, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 250
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 252
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const v8, 0x800015

    invoke-direct {v7, v10, v10, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 256
    iget-object v5, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 259
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 260
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 262
    .local v4, transaction:Landroid/app/FragmentTransaction;
    const-string v5, "tab-pager-perms"

    invoke-virtual {v0, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/mediatek/security/ui/PermissionsFragment;

    iput-object v5, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mPermissionsFragment:Lcom/mediatek/security/ui/PermissionsFragment;

    .line 263
    const-string v5, "tab-pager-apps"

    invoke-virtual {v0, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/mediatek/security/ui/AppsFragment;

    iput-object v5, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mAppsFragment:Lcom/mediatek/security/ui/AppsFragment;

    .line 265
    iget-object v5, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mPermissionsFragment:Lcom/mediatek/security/ui/PermissionsFragment;

    if-nez v5, :cond_0

    .line 266
    new-instance v5, Lcom/mediatek/security/ui/PermissionsFragment;

    invoke-direct {v5}, Lcom/mediatek/security/ui/PermissionsFragment;-><init>()V

    iput-object v5, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mPermissionsFragment:Lcom/mediatek/security/ui/PermissionsFragment;

    .line 267
    new-instance v5, Lcom/mediatek/security/ui/AppsFragment;

    invoke-direct {v5}, Lcom/mediatek/security/ui/AppsFragment;-><init>()V

    iput-object v5, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mAppsFragment:Lcom/mediatek/security/ui/AppsFragment;

    .line 268
    iget-object v5, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mPermissionsFragment:Lcom/mediatek/security/ui/PermissionsFragment;

    const-string v6, "tab-pager-perms"

    invoke-virtual {v4, v9, v5, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 269
    iget-object v5, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mAppsFragment:Lcom/mediatek/security/ui/AppsFragment;

    const-string v6, "tab-pager-apps"

    invoke-virtual {v4, v9, v5, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 272
    :cond_0
    iget-object v5, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mPermissionsFragment:Lcom/mediatek/security/ui/PermissionsFragment;

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 273
    iget-object v5, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mAppsFragment:Lcom/mediatek/security/ui/AppsFragment;

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 274
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 275
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 278
    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    .line 279
    new-instance v5, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;

    invoke-direct {v5, p0}, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;-><init>(Lcom/mediatek/security/ui/PermissionControlPageActivity;)V

    iput-object v5, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mTabPagerAdapter:Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;

    .line 280
    iget-object v5, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mTabPagerAdapter:Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 281
    iget-object v5, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mTabPagerListener:Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerListener;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 284
    new-instance v5, Lcom/mediatek/security/ui/ActionBarAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-direct {v5, p0, p0, v6}, Lcom/mediatek/security/ui/ActionBarAdapter;-><init>(Landroid/content/Context;Lcom/mediatek/security/ui/ActionBarAdapter$Listener;Landroid/app/ActionBar;)V

    iput-object v5, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mActionBarAdapter:Lcom/mediatek/security/ui/ActionBarAdapter;

    .line 286
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "permission_control_state"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_1

    const/4 v2, 0x1

    .line 288
    .local v2, isShow:Z
    :cond_1
    const-string v5, "PermControlPageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oncreate(), isShow "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 332
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 336
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mActionBarAdapter:Lcom/mediatek/security/ui/ActionBarAdapter;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mActionBarAdapter:Lcom/mediatek/security/ui/ActionBarAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/security/ui/ActionBarAdapter;->setListener(Lcom/mediatek/security/ui/ActionBarAdapter$Listener;)V

    .line 339
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 325
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 327
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mSwitchContentObserver:Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 328
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 302
    invoke-direct {p0}, Lcom/mediatek/security/ui/PermissionControlPageActivity;->checkUiEnabled()V

    .line 306
    iget-object v3, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mSwitchContentObserver:Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 308
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "permission_control_state"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    move v0, v1

    .line 310
    .local v0, isShow:Z
    :goto_0
    const-string v3, "PermControlPageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume() , isShow "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/mediatek/security/ui/PermissionControlPageActivity;->addUI()V

    .line 317
    :goto_1
    iput-boolean v2, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mUserCheckedFlag:Z

    .line 318
    iget-object v2, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 319
    iput-boolean v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mUserCheckedFlag:Z

    .line 321
    return-void

    .end local v0           #isShow:Z
    :cond_0
    move v0, v2

    .line 308
    goto :goto_0

    .line 315
    .restart local v0       #isShow:Z
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/security/ui/PermissionControlPageActivity;->removeUI()V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 295
    return-void
.end method

.method public onSelectedTabChanged()V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/mediatek/security/ui/PermissionControlPageActivity;->updateFragmentsVisibility()V

    .line 344
    return-void
.end method

.method protected removeUI()V
    .locals 3

    .prologue
    .line 423
    const-string v1, "PermControlPageActivity"

    const-string v2, "removeUI()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 428
    .local v0, transaction:Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mEmptyView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 430
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "tab-pager-perms"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/mediatek/security/ui/PermissionsFragment;

    iput-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mPermissionsFragment:Lcom/mediatek/security/ui/PermissionsFragment;

    .line 433
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mPermissionsFragment:Lcom/mediatek/security/ui/PermissionsFragment;

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mPermissionsFragment:Lcom/mediatek/security/ui/PermissionsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 435
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mAppsFragment:Lcom/mediatek/security/ui/AppsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 437
    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 438
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 440
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity;->mActionBarAdapter:Lcom/mediatek/security/ui/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/mediatek/security/ui/ActionBarAdapter;->removeAllTab()V

    .line 441
    return-void
.end method
