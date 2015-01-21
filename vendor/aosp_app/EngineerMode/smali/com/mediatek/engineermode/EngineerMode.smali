.class public Lcom/mediatek/engineermode/EngineerMode;
.super Landroid/app/Activity;
.source "EngineerMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;
    }
.end annotation


# static fields
.field private static final TAB_COUNT:I = 0x6

.field private static final TAB_TITLE_IDS:[I = null

.field private static final TAG:Ljava/lang/String; = "EM/MainView"


# instance fields
.field private mTabs:[Lcom/mediatek/engineermode/PrefsFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/engineermode/EngineerMode;->TAB_TITLE_IDS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x8t 0x7ft
        0x6t 0x0t 0x8t 0x7ft
        0x7t 0x0t 0x8t 0x7ft
        0x8t 0x0t 0x8t 0x7ft
        0x9t 0x0t 0x8t 0x7ft
        0xat 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mediatek/engineermode/PrefsFragment;

    iput-object v0, p0, Lcom/mediatek/engineermode/EngineerMode;->mTabs:[Lcom/mediatek/engineermode/PrefsFragment;

    .line 110
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/mediatek/engineermode/EngineerMode;->TAB_TITLE_IDS:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/EngineerMode;)[Lcom/mediatek/engineermode/PrefsFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/engineermode/EngineerMode;->mTabs:[Lcom/mediatek/engineermode/PrefsFragment;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0b02ce

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v6, 0x7f030054

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 83
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 85
    .local v4, transaction:Landroid/app/FragmentTransaction;
    const-string v6, "EM/MainView"

    const-string v7, "new fregments"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v6, 0x6

    if-ge v1, v6, :cond_0

    .line 87
    iget-object v6, p0, Lcom/mediatek/engineermode/EngineerMode;->mTabs:[Lcom/mediatek/engineermode/PrefsFragment;

    new-instance v7, Lcom/mediatek/engineermode/PrefsFragment;

    invoke-direct {v7}, Lcom/mediatek/engineermode/PrefsFragment;-><init>()V

    aput-object v7, v6, v1

    .line 88
    iget-object v6, p0, Lcom/mediatek/engineermode/EngineerMode;->mTabs:[Lcom/mediatek/engineermode/PrefsFragment;

    aget-object v6, v6, v1

    invoke-virtual {v6, v1}, Lcom/mediatek/engineermode/PrefsFragment;->setResource(I)V

    .line 89
    iget-object v6, p0, Lcom/mediatek/engineermode/EngineerMode;->mTabs:[Lcom/mediatek/engineermode/PrefsFragment;

    aget-object v6, v6, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v8, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 90
    iget-object v6, p0, Lcom/mediatek/engineermode/EngineerMode;->mTabs:[Lcom/mediatek/engineermode/PrefsFragment;

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    .line 97
    .local v5, viewPager:Landroid/support/v4/view/ViewPager;
    const v6, 0x7f0b02cf

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/PagerTabStrip;

    .line 98
    .local v3, pagerTabStrip:Landroid/support/v4/view/PagerTabStrip;
    const v6, 0x1060012

    invoke-virtual {v3, v6}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 101
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 102
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 104
    new-instance v2, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;-><init>(Lcom/mediatek/engineermode/EngineerMode;)V

    .line 105
    .local v2, pagerAdapter:Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;
    invoke-virtual {v5, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 106
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 108
    return-void
.end method
