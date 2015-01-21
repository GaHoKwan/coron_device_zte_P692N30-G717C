.class public Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;
.super Landroid/app/Activity;
.source "PowerManagerPhoneActivityNew.java"

# interfaces
.implements Lcom/zte/heartyservice/power/ActionBarAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$1;,
        Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerListener;,
        Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;
    }
.end annotation


# static fields
.field private static final tag:Ljava/lang/String; = "PowerManagerPhoneActivity"


# instance fields
.field private MODE_BASE_URI:Landroid/net/Uri;

.field private bar:Landroid/app/ActionBar;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field public mActionBarAdapter:Lcom/zte/heartyservice/power/ActionBarAdapter;

.field private mBatteryInfoFragment:Lcom/zte/heartyservice/power/BatteryInfoFragment;

.field private mModeSettingsFragment:Lcom/zte/heartyservice/power/ModeSettingsFragment;

.field private mStaticsFragment:Lcom/zte/heartyservice/power/NewStaticsFragment;

.field private mTabPager:Landroid/support/v4/view/ViewPager;

.field private mTabPagerAdapter:Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;

.field private final mTabPagerListener:Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    new-instance v0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerListener;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerListener;-><init>(Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;)V

    iput-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mTabPagerListener:Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerListener;

    .line 40
    sget-object v0, Lcom/zte/heartyservice/power/Modes$ModeColumns;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->MODE_BASE_URI:Landroid/net/Uri;

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;)Lcom/zte/heartyservice/power/BatteryInfoFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mBatteryInfoFragment:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;)Lcom/zte/heartyservice/power/NewStaticsFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mStaticsFragment:Lcom/zte/heartyservice/power/NewStaticsFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;)Lcom/zte/heartyservice/power/ModeSettingsFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mModeSettingsFragment:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    return-object v0
.end method

.method private createViewsAndFragments(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedState"

    .prologue
    const v5, 0x7f0e02d2

    .line 255
    const v3, 0x7f0300b0

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->setContentView(I)V

    .line 257
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 258
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 260
    .local v2, transaction:Landroid/app/FragmentTransaction;
    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mTabPager:Landroid/support/v4/view/ViewPager;

    .line 261
    new-instance v3, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;-><init>(Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;)V

    iput-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mTabPagerAdapter:Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;

    .line 262
    iget-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mTabPagerAdapter:Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 263
    iget-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mTabPagerListener:Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerListener;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 266
    iget-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mBatteryInfoFragment:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    if-nez v3, :cond_3

    .line 267
    const-string v3, "BatteryInfoFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 268
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 271
    :cond_0
    const-string v3, "StaticsFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 275
    :cond_1
    const-string v3, "ModeSettingsFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_2

    .line 277
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 279
    :cond_2
    new-instance v3, Lcom/zte/heartyservice/power/BatteryInfoFragment;

    invoke-direct {v3}, Lcom/zte/heartyservice/power/BatteryInfoFragment;-><init>()V

    iput-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mBatteryInfoFragment:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    .line 280
    new-instance v3, Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-direct {v3}, Lcom/zte/heartyservice/power/NewStaticsFragment;-><init>()V

    iput-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mStaticsFragment:Lcom/zte/heartyservice/power/NewStaticsFragment;

    .line 281
    new-instance v3, Lcom/zte/heartyservice/power/ModeSettingsFragment;

    invoke-direct {v3}, Lcom/zte/heartyservice/power/ModeSettingsFragment;-><init>()V

    iput-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mModeSettingsFragment:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    .line 282
    iget-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mBatteryInfoFragment:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    const-string v4, "BatteryInfoFragment"

    invoke-virtual {v2, v5, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 283
    iget-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mStaticsFragment:Lcom/zte/heartyservice/power/NewStaticsFragment;

    const-string v4, "StaticsFragment"

    invoke-virtual {v2, v5, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 284
    iget-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mModeSettingsFragment:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    const-string v4, "ModeSettingsFragment"

    invoke-virtual {v2, v5, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 287
    .end local v0           #f:Landroid/app/Fragment;
    :cond_3
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 288
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 290
    new-instance v3, Lcom/zte/heartyservice/power/ActionBarAdapter;

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/zte/heartyservice/power/ActionBarAdapter;-><init>(Landroid/app/ActionBar;)V

    iput-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mActionBarAdapter:Lcom/zte/heartyservice/power/ActionBarAdapter;

    .line 291
    iget-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mActionBarAdapter:Lcom/zte/heartyservice/power/ActionBarAdapter;

    invoke-virtual {v3, p1}, Lcom/zte/heartyservice/power/ActionBarAdapter;->initialize(Landroid/os/Bundle;)V

    .line 292
    return-void
.end method

.method protected static hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V
    .locals 3
    .parameter "ft"
    .parameter "f"

    .prologue
    .line 365
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hideFragment ====bb========"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hideFragment ============"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p0, p1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 370
    :cond_0
    return-void
.end method

.method protected static showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V
    .locals 3
    .parameter "ft"
    .parameter "f"

    .prologue
    .line 357
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " showFragment ==========bb=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " showFragment ============"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0, p1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 362
    :cond_0
    return-void
.end method

.method private updateFragmentsVisibility()V
    .locals 8

    .prologue
    .line 306
    iget-object v5, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mActionBarAdapter:Lcom/zte/heartyservice/power/ActionBarAdapter;

    invoke-virtual {v5}, Lcom/zte/heartyservice/power/ActionBarAdapter;->getCurrentTab()Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    move-result-object v3

    .line 307
    .local v3, tab:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateFragmentsVisibility=========="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 310
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 312
    .local v1, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v3}, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->ordinal()I

    move-result v4

    .line 317
    .local v4, testIndex:I
    const/4 v2, -0x1

    .line 318
    .local v2, intTag:I
    sget-object v5, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$1;->$SwitchMap$com$zte$heartyservice$power$ActionBarAdapter$TabState:[I

    invoke-virtual {v3}, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 348
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 349
    const-string v5, "PowerManagerPhoneActivity"

    const-string v6, "fragmentTransaction != null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 351
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 353
    :cond_1
    return-void

    .line 320
    :pswitch_0
    const/4 v2, 0x0

    .line 321
    iget-object v5, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mBatteryInfoFragment:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    invoke-static {v1, v5}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 322
    iget-object v5, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mStaticsFragment:Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-static {v1, v5}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 323
    iget-object v5, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mModeSettingsFragment:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    invoke-static {v1, v5}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 324
    iget-object v5, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    if-eq v5, v2, :cond_0

    .line 325
    iget-object v5, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 329
    :pswitch_1
    const/4 v2, 0x1

    .line 330
    iget-object v5, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mBatteryInfoFragment:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    invoke-static {v1, v5}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 331
    iget-object v5, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mStaticsFragment:Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-static {v1, v5}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 332
    iget-object v5, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mModeSettingsFragment:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    invoke-static {v1, v5}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 333
    iget-object v5, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    if-eq v5, v2, :cond_0

    .line 334
    iget-object v5, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 338
    :pswitch_2
    const/4 v2, 0x2

    .line 339
    iget-object v5, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mBatteryInfoFragment:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    invoke-static {v1, v5}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 340
    iget-object v5, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mStaticsFragment:Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-static {v1, v5}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 341
    iget-object v5, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mModeSettingsFragment:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    invoke-static {v1, v5}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 342
    iget-object v5, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    if-eq v5, v2, :cond_0

    .line 343
    iget-object v5, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/zte/heartyservice/power/BatteryService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 60
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "select_tab"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 61
    .local v1, tabIndex:I
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    if-ltz v1, :cond_0

    .line 62
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 63
    .restart local p1
    const-string v2, "navBar.selectedTab"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->createViewsAndFragments(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 246
    iget-object v1, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mActionBarAdapter:Lcom/zte/heartyservice/power/ActionBarAdapter;

    invoke-virtual {v1, p0}, Lcom/zte/heartyservice/power/ActionBarAdapter;->setListener(Lcom/zte/heartyservice/power/ActionBarAdapter$Listener;)V

    .line 247
    invoke-direct {p0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->updateFragmentsVisibility()V

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/heartyservice/power/BatteryService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 251
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 252
    return-void
.end method

.method public onSelectedTabChanged()V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->updateFragmentsVisibility()V

    .line 299
    return-void
.end method
