.class public Lcom/zte/retrieve/activity/PasswordModifyActivity;
.super Lcom/zte/retrieve/activity/PasswordRelatedActivity;
.source "PasswordModifyActivity.java"

# interfaces
.implements Lcom/zte/retrieve/iview/IView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/zte/retrieve/activity/PasswordRelatedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finishView()V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/PasswordModifyActivity;->finish()V

    .line 41
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v3, 0x7f030008

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/PasswordModifyActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/PasswordModifyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 25
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 26
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/PasswordModifyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/16 v4, 0x10

    .line 27
    const/16 v5, 0x1e

    .line 26
    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 30
    new-instance v2, Lcom/zte/retrieve/activity/SecurityPasswordFragment;

    invoke-direct {v2}, Lcom/zte/retrieve/activity/SecurityPasswordFragment;-><init>()V

    .line 31
    .local v2, mEditFragment:Lcom/zte/retrieve/activity/SecurityPasswordFragment;
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/PasswordModifyActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 33
    .local v1, fragmentTransaction:Landroid/app/FragmentTransaction;
    const v3, 0x7f090007

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 34
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 35
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 36
    return-void
.end method
