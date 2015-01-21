.class public Leu/chainfire/supersu/compat/FragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/supersu/compat/FragmentActivity$鷭;,
        Leu/chainfire/supersu/compat/FragmentActivity$if;
    }
.end annotation


# instance fields
.field public Ą:Landroid/support/v4/view/ViewPager;

.field public ą:Leu/chainfire/supersu/compat/FragmentActivity$if;

.field public Ć:Leu/chainfire/supersu/compat/FragmentActivity$鷭;

.field public ȃ:Lcom/actionbarsherlock/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->ȃ:Lcom/actionbarsherlock/app/ActionBar;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->Ą:Landroid/support/v4/view/ViewPager;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->ą:Leu/chainfire/supersu/compat/FragmentActivity$if;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->Ć:Leu/chainfire/supersu/compat/FragmentActivity$鷭;

    .line 19
    return-void
.end method

.method static synthetic 櫯(Leu/chainfire/supersu/compat/FragmentActivity;)Leu/chainfire/supersu/compat/FragmentActivity$鷭;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->Ć:Leu/chainfire/supersu/compat/FragmentActivity$鷭;

    return-object v0
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/compat/FragmentActivity;)Lcom/actionbarsherlock/app/ActionBar;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->ȃ:Lcom/actionbarsherlock/app/ActionBar;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Leu/chainfire/supersu/compat/FragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->ȃ:Lcom/actionbarsherlock/app/ActionBar;

    .line 36
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->ȃ:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 38
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->Ą:Landroid/support/v4/view/ViewPager;

    .line 39
    new-instance v0, Leu/chainfire/supersu/compat/FragmentActivity$if;

    iget-object v1, p0, Leu/chainfire/supersu/compat/FragmentActivity;->Ą:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0, p0, v1}, Leu/chainfire/supersu/compat/FragmentActivity$if;-><init>(Leu/chainfire/supersu/compat/FragmentActivity;Leu/chainfire/supersu/compat/FragmentActivity;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->ą:Leu/chainfire/supersu/compat/FragmentActivity$if;

    .line 40
    return-void
.end method

.method public final onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1

    .line 0
    invoke-virtual {p0, p1}, Leu/chainfire/supersu/compat/FragmentActivity;->鷭(Lcom/actionbarsherlock/view/Menu;)V

    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public 鷭(Lcom/actionbarsherlock/view/Menu;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final 鷭(Lcom/actionbarsherlock/view/Menu;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 2

    .line 0
    move-object v0, p1

    check-cast v0, Lcom/actionbarsherlock/view/Menu;

    .line 75
    invoke-interface {v0, p2}, Lcom/actionbarsherlock/view/Menu;->add(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 76
    new-instance v1, Lo/廂;

    invoke-direct {v1, p0, p4}, Lo/廂;-><init>(Leu/chainfire/supersu/compat/FragmentActivity;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setOnMenuItemClickListener(Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 87
    invoke-interface {v0, p3}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 88
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 89
    return-void
.end method
