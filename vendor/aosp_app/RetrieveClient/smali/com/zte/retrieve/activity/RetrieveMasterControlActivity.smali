.class public Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;
.super Landroid/app/Activity;
.source "RetrieveMasterControlActivity.java"

# interfaces
.implements Lcom/zte/retrieve/iview/IRetrieveMasterControlView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;,
        Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;
    }
.end annotation


# static fields
.field private static final CLOUD_TAB:I = 0x1

.field private static final LOCAL_TAB:I = 0x0

.field private static final TAB_UNSELECT:I = -0x66000001


# instance fields
.field DIALOG_DISABLE:I

.field activeView:Landroid/widget/ImageView;

.field private cloudActionView:Landroid/view/View;

.field private cloudFragment:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

.field private cloudTextView:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field private localActionView:Landroid/view/View;

.field private localFragment:Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;

.field private localTextView:Landroid/widget/TextView;

.field private mActionBarListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mPresenter:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

.field private mTabPagerAdapter:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;

.field private final mTabPagerListener:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->DIALOG_DISABLE:I

    .line 58
    new-instance v0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;-><init>(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;)V

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mTabPagerListener:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;

    .line 64
    new-instance v0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$1;-><init>(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)V

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->handler:Landroid/os/Handler;

    .line 186
    new-instance v0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$2;-><init>(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)V

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mActionBarListener:Landroid/view/View$OnClickListener;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localFragment:Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;

    return-object v0
.end method

.method static synthetic access$5(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudFragment:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    return-object v0
.end method

.method static synthetic access$6(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudActionView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localActionView:Landroid/view/View;

    return-object v0
.end method

.method private bindActionMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Landroid/view/View$OnClickListener;)V
    .locals 5
    .parameter "context"
    .parameter "menuItem"
    .parameter "clickListener"

    .prologue
    .line 218
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 219
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/high16 v3, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 220
    .local v2, view:Landroid/view/View;
    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 221
    .local v0, img:Landroid/widget/ImageView;
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 223
    const/4 v3, 0x1

    invoke-interface {p2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 224
    return-void
.end method

.method private createTabView()V
    .locals 4

    .prologue
    const v3, 0x7f090007

    .line 170
    new-instance v1, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;

    invoke-direct {v1}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;-><init>()V

    iput-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localFragment:Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;

    .line 171
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 172
    .local v0, fragmentTransaction:Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localActionView:Landroid/view/View;

    const v2, 0x7f02004b

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 173
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localFragment:Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;

    const-string v2, "local"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 174
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localFragment:Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 176
    new-instance v1, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    invoke-direct {v1}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;-><init>()V

    iput-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudFragment:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    .line 177
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getInstance()Lcom/zte/retrieve/utils/config/RetrieveConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isSupportCloud()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudFragment:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    const-string v2, "cloud"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 179
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudFragment:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 180
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->textColorSelected(I)V

    .line 183
    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 184
    return-void
.end method

.method private initTabView()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->createTabView()V

    .line 120
    invoke-direct {p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->setTabViewStatus()V

    .line 121
    return-void
.end method

.method private setActionCustomBar()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x10

    .line 147
    const/16 v3, 0x1e

    .line 146
    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 150
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 151
    const v2, 0x7f030016

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 150
    check-cast v0, Landroid/view/ViewGroup;

    .line 152
    .local v0, actionBarView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 154
    const v1, 0x7f090057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localActionView:Landroid/view/View;

    .line 155
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localActionView:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localTextView:Landroid/widget/TextView;

    .line 158
    const v1, 0x7f090059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudActionView:Landroid/view/View;

    .line 159
    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudTextView:Landroid/widget/TextView;

    .line 161
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getInstance()Lcom/zte/retrieve/utils/config/RetrieveConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isSupportCloud()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudActionView:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudActionView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTabViewStatus()V
    .locals 4

    .prologue
    const v3, -0x66000001

    .line 124
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->getActiveTabStatus()Z

    move-result v0

    .line 125
    .local v0, tabActiveFlag:Z
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 127
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 131
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0
.end method

.method private setViewPager()V
    .locals 2

    .prologue
    .line 137
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 138
    new-instance v0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;-><init>(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)V

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mTabPagerAdapter:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;

    .line 139
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mTabPagerAdapter:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 140
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mTabPagerListener:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 141
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->setContentView(I)V

    .line 98
    invoke-direct {p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->setViewPager()V

    .line 99
    invoke-direct {p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->setActionCustomBar()V

    .line 101
    new-instance v0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    invoke-direct {v0}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;-><init>()V

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    .line 102
    iput-object p0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mContext:Landroid/content/Context;

    .line 103
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->setContext(Landroid/content/Context;)V

    .line 104
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    invoke-virtual {v0, p0}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->setView(Lcom/zte/retrieve/iview/IView;)V

    .line 105
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->init()V

    .line 107
    invoke-direct {p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->initTabView()V

    .line 109
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->queryCloudStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->regAccountManagerReceiver()V

    .line 111
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->setSwitchThread(Landroid/os/Handler;)V

    .line 114
    invoke-static {}, Lcom/zte/retrieve/utils/TrackInfoManager;->send2Server()V

    .line 116
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 212
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 214
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 491
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 492
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->unRegAccountManagerReceiver()V

    .line 493
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 228
    const v1, 0x7f09007b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 229
    .local v0, menuItem:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$3;

    invoke-direct {v2, p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$3;-><init>(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->bindActionMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->clearPendingView()V

    .line 242
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->queryCloudStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/cloud/account/AccountManager;->init(Landroid/content/Context;)V

    .line 245
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->listenAccountChanging(Landroid/os/Handler;)V

    .line 247
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 248
    return-void
.end method

.method public setActiveViewSwitch(Z)V
    .locals 2
    .parameter "status"

    .prologue
    .line 439
    if-eqz p1, :cond_0

    .line 440
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudFragment:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    iget-object v0, v0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->activeView:Landroid/widget/TextView;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 441
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudFragment:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    iget-object v0, v0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->activeView:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 446
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudFragment:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    iget-object v0, v0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->activeView:Landroid/widget/TextView;

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 444
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudFragment:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    iget-object v0, v0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->activeView:Landroid/widget/TextView;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method

.method public showResultDialog(IILandroid/content/Context;)V
    .locals 7
    .parameter "nocardtitle"
    .parameter "nosdcard"
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 526
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 527
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p3

    move v5, v4

    .line 526
    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 529
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 531
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$9;-><init>(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    return-void
.end method

.method public showUidNullDialog(Ljava/lang/String;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 451
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 452
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v3, p1

    .line 451
    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 453
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 455
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$4;-><init>(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    return-void
.end method

.method public showUpdateDialog()V
    .locals 8

    .prologue
    const v7, 0x7f090012

    const/4 v4, 0x0

    .line 466
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0600b7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v5, v4

    .line 466
    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 468
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 470
    .local v6, dialogLayout:Landroid/view/View;
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0600b9

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 471
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$5;-><init>(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    const v1, 0x7f090011

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$6;-><init>(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    return-void
.end method

.method public showUpdatePromptDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .parameter "title"
    .parameter "msg"
    .parameter "context"

    .prologue
    const v4, 0x7f090012

    .line 498
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;

    const/4 v2, 0x0

    invoke-direct {v0, p3, p1, p2, v2}, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 499
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;->getDialogLayout()Landroid/view/View;

    move-result-object v1

    .line 501
    .local v1, dialogLayout:Landroid/view/View;
    new-instance v2, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;

    invoke-direct {v2, p3, p2, v1}, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    .line 503
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0600b9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 505
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$7;

    invoke-direct {v3, p0, v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$7;-><init>(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$8;

    invoke-direct {v3, p0, v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$8;-><init>(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    return-void
.end method

.method public textColorSelected(I)V
    .locals 4
    .parameter "index"

    .prologue
    const v3, 0x7f05000d

    const v2, -0x66000001

    .line 427
    if-nez p1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 429
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 430
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 436
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 433
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 434
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
