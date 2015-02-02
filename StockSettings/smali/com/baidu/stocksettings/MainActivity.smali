.class public Lcom/baidu/stocksettings/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# instance fields
.field a:Lcom/baidu/stocksettings/b;

.field b:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/baidu/stocksettings/MainActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/baidu/stocksettings/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {p0}, Lcom/baidu/stocksettings/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    new-instance v3, Lcom/baidu/stocksettings/b;

    invoke-direct {v3, p0, v0}, Lcom/baidu/stocksettings/b;-><init>(Lcom/baidu/stocksettings/MainActivity;Landroid/app/FragmentManager;)V

    iput-object v3, p0, Lcom/baidu/stocksettings/MainActivity;->a:Lcom/baidu/stocksettings/b;

    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/baidu/stocksettings/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/baidu/stocksettings/MainActivity;->b:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/baidu/stocksettings/MainActivity;->b:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/baidu/stocksettings/MainActivity;->a:Lcom/baidu/stocksettings/b;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/baidu/stocksettings/MainActivity;->b:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/baidu/stocksettings/a;

    invoke-direct {v3, p0, v2}, Lcom/baidu/stocksettings/a;-><init>(Lcom/baidu/stocksettings/MainActivity;Landroid/app/ActionBar;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/baidu/stocksettings/MainActivity;->a:Lcom/baidu/stocksettings/b;

    invoke-virtual {v1}, Lcom/baidu/stocksettings/b;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/stocksettings/MainActivity;->a:Lcom/baidu/stocksettings/b;

    invoke-virtual {v3, v0}, Lcom/baidu/stocksettings/b;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/stocksettings/MainActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method
