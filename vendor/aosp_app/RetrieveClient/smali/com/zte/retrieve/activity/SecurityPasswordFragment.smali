.class public Lcom/zte/retrieve/activity/SecurityPasswordFragment;
.super Landroid/app/Fragment;
.source "SecurityPasswordFragment.java"

# interfaces
.implements Lcom/zte/retrieve/iview/IView;


# instance fields
.field private mActionBarListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/app/Activity;

.field mPresenter:Lcom/zte/retrieve/presenter/PasswordResetPresenter;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 56
    new-instance v0, Lcom/zte/retrieve/activity/SecurityPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/activity/SecurityPasswordFragment$1;-><init>(Lcom/zte/retrieve/activity/SecurityPasswordFragment;)V

    iput-object v0, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    .line 24
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 105
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 95
    iput-object p1, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment;->mContext:Landroid/app/Activity;

    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Lcom/zte/retrieve/presenter/PasswordResetPresenter;

    invoke-direct {v0}, Lcom/zte/retrieve/presenter/PasswordResetPresenter;-><init>()V

    iput-object v0, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment;->mPresenter:Lcom/zte/retrieve/presenter/PasswordResetPresenter;

    .line 35
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment;->mPresenter:Lcom/zte/retrieve/presenter/PasswordResetPresenter;

    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/presenter/PasswordResetPresenter;->setContext(Landroid/content/Context;)V

    .line 36
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment;->mPresenter:Lcom/zte/retrieve/presenter/PasswordResetPresenter;

    invoke-virtual {v0, p0}, Lcom/zte/retrieve/presenter/PasswordResetPresenter;->setView(Lcom/zte/retrieve/iview/IView;)V

    .line 37
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 41
    const v3, 0x7f03001c

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment;->mView:Landroid/view/View;

    .line 42
    iget-object v3, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment;->mView:Landroid/view/View;

    const v4, 0x7f090005

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 44
    const v3, 0x7f030009

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, actionBarButtons:Landroid/view/View;
    iget-object v3, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 47
    const v3, 0x7f09001d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, cancelActionView:Landroid/view/View;
    iget-object v3, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v3, 0x7f09001f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 51
    .local v2, doneActionView:Landroid/view/View;
    iget-object v3, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v3, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment;->mView:Landroid/view/View;

    return-object v3
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 90
    return-void
.end method
