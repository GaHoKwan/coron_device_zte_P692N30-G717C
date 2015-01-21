.class public Lcom/zte/retrieve/activity/SecurityNumberModifyActivity;
.super Lcom/zte/retrieve/activity/PasswordRelatedActivity;
.source "SecurityNumberModifyActivity.java"

# interfaces
.implements Lcom/zte/retrieve/iview/IView;


# instance fields
.field private mEditFragment:Lcom/zte/retrieve/activity/SecurityNumberFragment;


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
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityNumberModifyActivity;->finish()V

    .line 41
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/SecurityNumberModifyActivity;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityNumberModifyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x10

    .line 27
    const/16 v3, 0x1e

    .line 26
    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 30
    new-instance v1, Lcom/zte/retrieve/activity/SecurityNumberFragment;

    invoke-direct {v1}, Lcom/zte/retrieve/activity/SecurityNumberFragment;-><init>()V

    iput-object v1, p0, Lcom/zte/retrieve/activity/SecurityNumberModifyActivity;->mEditFragment:Lcom/zte/retrieve/activity/SecurityNumberFragment;

    .line 31
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityNumberModifyActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 33
    .local v0, fragmentTransaction:Landroid/app/FragmentTransaction;
    const v1, 0x7f090007

    iget-object v2, p0, Lcom/zte/retrieve/activity/SecurityNumberModifyActivity;->mEditFragment:Lcom/zte/retrieve/activity/SecurityNumberFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 34
    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityNumberModifyActivity;->mEditFragment:Lcom/zte/retrieve/activity/SecurityNumberFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 35
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 36
    return-void
.end method
