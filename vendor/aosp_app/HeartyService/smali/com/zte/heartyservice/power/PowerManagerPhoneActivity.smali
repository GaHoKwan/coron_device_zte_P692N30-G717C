.class public Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;
.super Landroid/app/Activity;
.source "PowerManagerPhoneActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/power/ActionBarAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/power/PowerManagerPhoneActivity$1;
    }
.end annotation


# static fields
.field private static final tag:Ljava/lang/String; = "PowerManagerPhoneActivity"


# instance fields
.field private MODE_BASE_URI:Landroid/net/Uri;

.field private bar:Landroid/app/ActionBar;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mActionBarAdapter:Lcom/zte/heartyservice/power/ActionBarAdapter;

.field private mBatteryInfoFragment:Lcom/zte/heartyservice/power/BatteryInfoFragment;

.field private mModeSettingsFragment:Lcom/zte/heartyservice/power/ModeSettingsFragment;

.field private mStaticsFragment:Lcom/zte/heartyservice/power/NewStaticsFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    sget-object v0, Lcom/zte/heartyservice/power/Modes$ModeColumns;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->MODE_BASE_URI:Landroid/net/Uri;

    return-void
.end method

.method private createViewsAndFragments(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedState"

    .prologue
    const v5, 0x7f0e0089

    .line 80
    const v3, 0x7f0300b0

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 83
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 85
    .local v2, transaction:Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mBatteryInfoFragment:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    if-nez v3, :cond_3

    .line 86
    const-string v3, "BatteryInfoFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 87
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 90
    :cond_0
    const-string v3, "StaticsFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 94
    :cond_1
    const-string v3, "ModeSettingsFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 98
    :cond_2
    new-instance v3, Lcom/zte/heartyservice/power/BatteryInfoFragment;

    invoke-direct {v3}, Lcom/zte/heartyservice/power/BatteryInfoFragment;-><init>()V

    iput-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mBatteryInfoFragment:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    .line 99
    new-instance v3, Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-direct {v3}, Lcom/zte/heartyservice/power/NewStaticsFragment;-><init>()V

    iput-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mStaticsFragment:Lcom/zte/heartyservice/power/NewStaticsFragment;

    .line 100
    new-instance v3, Lcom/zte/heartyservice/power/ModeSettingsFragment;

    invoke-direct {v3}, Lcom/zte/heartyservice/power/ModeSettingsFragment;-><init>()V

    iput-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mModeSettingsFragment:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    .line 101
    iget-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mBatteryInfoFragment:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    const-string v4, "BatteryInfoFragment"

    invoke-virtual {v2, v5, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 102
    iget-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mStaticsFragment:Lcom/zte/heartyservice/power/NewStaticsFragment;

    const-string v4, "StaticsFragment"

    invoke-virtual {v2, v5, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 103
    iget-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mModeSettingsFragment:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    const-string v4, "ModeSettingsFragment"

    invoke-virtual {v2, v5, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 106
    .end local v0           #f:Landroid/app/Fragment;
    :cond_3
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 107
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 109
    new-instance v3, Lcom/zte/heartyservice/power/ActionBarAdapter;

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/zte/heartyservice/power/ActionBarAdapter;-><init>(Landroid/app/ActionBar;)V

    iput-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mActionBarAdapter:Lcom/zte/heartyservice/power/ActionBarAdapter;

    .line 110
    iget-object v3, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mActionBarAdapter:Lcom/zte/heartyservice/power/ActionBarAdapter;

    invoke-virtual {v3, p1}, Lcom/zte/heartyservice/power/ActionBarAdapter;->initialize(Landroid/os/Bundle;)V

    .line 111
    return-void
.end method

.method protected static hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V
    .locals 1
    .parameter "ft"
    .parameter "f"

    .prologue
    .line 168
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 171
    :cond_0
    return-void
.end method

.method protected static showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V
    .locals 1
    .parameter "ft"
    .parameter "f"

    .prologue
    .line 162
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 165
    :cond_0
    return-void
.end method

.method private updateFragmentsVisibility()V
    .locals 6

    .prologue
    .line 125
    iget-object v4, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mActionBarAdapter:Lcom/zte/heartyservice/power/ActionBarAdapter;

    invoke-virtual {v4}, Lcom/zte/heartyservice/power/ActionBarAdapter;->getCurrentTab()Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    move-result-object v2

    .line 127
    .local v2, tab:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 128
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 130
    .local v1, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v2}, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->ordinal()I

    move-result v3

    .line 132
    .local v3, testIndex:I
    sget-object v4, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity$1;->$SwitchMap$com$zte$heartyservice$power$ActionBarAdapter$TabState:[I

    invoke-virtual {v2}, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 153
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 154
    const-string v4, "PowerManagerPhoneActivity"

    const-string v5, "fragmentTransaction != null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 156
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 158
    :cond_0
    return-void

    .line 134
    :pswitch_0
    iget-object v4, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mBatteryInfoFragment:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    invoke-static {v1, v4}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 135
    iget-object v4, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mStaticsFragment:Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-static {v1, v4}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 136
    iget-object v4, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mModeSettingsFragment:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    invoke-static {v1, v4}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v4, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mBatteryInfoFragment:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    invoke-static {v1, v4}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 141
    iget-object v4, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mStaticsFragment:Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-static {v1, v4}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 142
    iget-object v4, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mModeSettingsFragment:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    invoke-static {v1, v4}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v4, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mBatteryInfoFragment:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    invoke-static {v1, v4}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 147
    iget-object v4, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mStaticsFragment:Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-static {v1, v4}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 148
    iget-object v4, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mModeSettingsFragment:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    invoke-static {v1, v4}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto :goto_0

    .line 132
    nop

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
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/zte/heartyservice/power/BatteryService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 51
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "select_tab"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 52
    .local v1, tabIndex:I
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    if-ltz v1, :cond_0

    .line 53
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 54
    .restart local p1
    const-string v2, "navBar.selectedTab"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->createViewsAndFragments(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 71
    iget-object v1, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->mActionBarAdapter:Lcom/zte/heartyservice/power/ActionBarAdapter;

    invoke-virtual {v1, p0}, Lcom/zte/heartyservice/power/ActionBarAdapter;->setListener(Lcom/zte/heartyservice/power/ActionBarAdapter$Listener;)V

    .line 72
    invoke-direct {p0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->updateFragmentsVisibility()V

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/heartyservice/power/BatteryService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 76
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 77
    return-void
.end method

.method public onSelectedTabChanged()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;->updateFragmentsVisibility()V

    .line 118
    return-void
.end method
