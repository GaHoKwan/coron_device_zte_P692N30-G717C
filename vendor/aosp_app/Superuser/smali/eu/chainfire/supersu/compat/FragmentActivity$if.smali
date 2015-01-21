.class public final Leu/chainfire/supersu/compat/FragmentActivity$if;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source ""

# interfaces
.implements Landroid/support/v4/view/ViewPager$ˮ͈;
.implements Lcom/actionbarsherlock/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/supersu/compat/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/supersu/compat/FragmentActivity$if$鷭;
    }
.end annotation


# instance fields
.field private final ȃ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Leu/chainfire/supersu/compat/FragmentActivity$if$\u9ded;>;"
        }
    .end annotation
.end field

.field private final ˮ͈:Landroid/support/v4/view/ViewPager;

.field private final 櫯:Landroid/content/Context;

.field final synthetic 鷭:Leu/chainfire/supersu/compat/FragmentActivity;


# direct methods
.method public constructor <init>(Leu/chainfire/supersu/compat/FragmentActivity;Leu/chainfire/supersu/compat/FragmentActivity;Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->鷭:Leu/chainfire/supersu/compat/FragmentActivity;

    .line 117
    invoke-virtual {p1}, Leu/chainfire/supersu/compat/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->ȃ:Ljava/util/ArrayList;

    .line 118
    iput-object p2, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->櫯:Landroid/content/Context;

    .line 119
    iput-object p3, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->ˮ͈:Landroid/support/v4/view/ViewPager;

    .line 120
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->ˮ͈:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Lo/ċ;)V

    .line 121
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->ˮ͈:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$ˮ͈;)V

    .line 122
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->ˮ͈:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 123
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->ȃ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->鷭:Leu/chainfire/supersu/compat/FragmentActivity;

    invoke-static {v0}, Leu/chainfire/supersu/compat/FragmentActivity;->櫯(Leu/chainfire/supersu/compat/FragmentActivity;)Leu/chainfire/supersu/compat/FragmentActivity$鷭;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->鷭:Leu/chainfire/supersu/compat/FragmentActivity;

    invoke-static {v0}, Leu/chainfire/supersu/compat/FragmentActivity;->櫯(Leu/chainfire/supersu/compat/FragmentActivity;)Leu/chainfire/supersu/compat/FragmentActivity$鷭;

    move-result-object v0

    invoke-interface {v0, p1}, Leu/chainfire/supersu/compat/FragmentActivity$鷭;->櫯(I)Lo/囃;

    move-result-object v3

    .line 143
    if-eqz v3, :cond_0

    instance-of v0, v3, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    move-object v0, v3

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0

    .line 146
    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->ȃ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/compat/FragmentActivity$if$鷭;

    move-object v3, v0

    .line 147
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->櫯:Landroid/content/Context;

    iget-object v1, v3, Leu/chainfire/supersu/compat/FragmentActivity$if$鷭;->鷭:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Leu/chainfire/supersu/compat/FragmentActivity$if$鷭;->櫯:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 149
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->鷭:Leu/chainfire/supersu/compat/FragmentActivity;

    invoke-static {v0}, Leu/chainfire/supersu/compat/FragmentActivity;->櫯(Leu/chainfire/supersu/compat/FragmentActivity;)Leu/chainfire/supersu/compat/FragmentActivity$鷭;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->鷭:Leu/chainfire/supersu/compat/FragmentActivity;

    invoke-static {v0}, Leu/chainfire/supersu/compat/FragmentActivity;->櫯(Leu/chainfire/supersu/compat/FragmentActivity;)Leu/chainfire/supersu/compat/FragmentActivity$鷭;

    move-result-object v0

    invoke-interface {v0, p1, v3}, Leu/chainfire/supersu/compat/FragmentActivity$鷭;->鷭(ILandroid/support/v4/app/Fragment;)V

    .line 150
    :cond_1
    return-object v3
.end method

.method public final onTabReselected(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final onTabSelected(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 0
    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 169
    const/4 v3, 0x0

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->ȃ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_1

    .line 171
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->ˮ͈:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 169
    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->ȃ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_0

    .line 174
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->鷭:Leu/chainfire/supersu/compat/FragmentActivity;

    invoke-static {v0}, Leu/chainfire/supersu/compat/FragmentActivity;->櫯(Leu/chainfire/supersu/compat/FragmentActivity;)Leu/chainfire/supersu/compat/FragmentActivity$鷭;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->鷭:Leu/chainfire/supersu/compat/FragmentActivity;

    invoke-static {v0}, Leu/chainfire/supersu/compat/FragmentActivity;->櫯(Leu/chainfire/supersu/compat/FragmentActivity;)Leu/chainfire/supersu/compat/FragmentActivity$鷭;

    move-result-object v0

    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Leu/chainfire/supersu/compat/FragmentActivity$鷭;->鷭(I)V

    .line 175
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 176
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->鷭:Leu/chainfire/supersu/compat/FragmentActivity;

    invoke-virtual {v0}, Leu/chainfire/supersu/compat/FragmentActivity;->invalidateOptionsMenu()V

    .line 178
    :cond_3
    return-void
.end method

.method public final onTabUnselected(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final 櫯(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public final 鷭(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->鷭:Leu/chainfire/supersu/compat/FragmentActivity;

    invoke-static {v0}, Leu/chainfire/supersu/compat/FragmentActivity;->鷭(Leu/chainfire/supersu/compat/FragmentActivity;)Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 160
    return-void
.end method

.method public final 鷭(IF)V
    .locals 0

    .line 0
    return-void
.end method

.method public final 鷭(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class<*>;)V"
        }
    .end annotation

    .line 0
    new-instance v0, Leu/chainfire/supersu/compat/FragmentActivity$if$鷭;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Leu/chainfire/supersu/compat/FragmentActivity$if$鷭;-><init>(Leu/chainfire/supersu/compat/FragmentActivity$if;Ljava/lang/Class;Landroid/os/Bundle;)V

    move-object p2, v0

    .line 127
    invoke-virtual {p1, p2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 128
    invoke-virtual {p1, p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 129
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->ȃ:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity$if;->鷭:Leu/chainfire/supersu/compat/FragmentActivity;

    invoke-static {v0}, Leu/chainfire/supersu/compat/FragmentActivity;->鷭(Leu/chainfire/supersu/compat/FragmentActivity;)Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 131
    invoke-virtual {p0}, Leu/chainfire/supersu/compat/FragmentActivity$if;->notifyDataSetChanged()V

    .line 132
    return-void
.end method
