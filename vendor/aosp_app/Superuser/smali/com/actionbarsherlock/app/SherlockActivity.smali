.class public Lcom/actionbarsherlock/app/SherlockActivity;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeFinishedListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnCreatePanelMenuListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnMenuItemSelectedListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnPreparePanelListener;


# instance fields
.field private final mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>(I)V

    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    invoke-static {p0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->wrap(Landroid/app/Activity;I)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Lcom/actionbarsherlock/ActionBarSherlock;>(ILjava/lang/Class<TT;>;)V"
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    invoke-static {p0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->wrap(Landroid/app/Activity;ILjava/lang/Class;)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    .line 35
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchCloseOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 163
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchInvalidateOptionsMenu()V

    .line 130
    return-void
.end method

.method public onActionModeFinished(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActionModeStarted(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 64
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 65
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePanelMenu(ILcom/actionbarsherlock/view/Menu;)Z
    .locals 1

    .line 0
    if-nez p1, :cond_0

    .line 173
    invoke-virtual {p0, p2}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0

    .line 175
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemSelected(ILcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .line 0
    if-nez p1, :cond_0

    .line 197
    invoke-virtual {p0, p2}, Lcom/actionbarsherlock/app/SherlockActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 199
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPanelClosed(ILandroid/view/Menu;)V

    .line 108
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 109
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPause()V

    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 77
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPostCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 89
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 0
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 70
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPostResume()V

    .line 71
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1

    .line 0
    if-nez p1, :cond_0

    .line 185
    invoke-virtual {p0, p3}, Lcom/actionbarsherlock/app/SherlockActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0

    .line 187
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onStop()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchStop()V

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 83
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchTitleChanged(Ljava/lang/CharSequence;I)V

    .line 94
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 95
    return-void
.end method

.method public openOptionsMenu()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchOpenOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 156
    :cond_0
    return-void
.end method

.method public requestWindowFeature(J)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->requestFeature(I)Z

    .line 233
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(I)V

    .line 219
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(Landroid/view/View;)V

    .line 229
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    return-void
.end method

.method public setSupportProgress(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgress(I)V

    .line 242
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminate(Z)V

    .line 246
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 250
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarVisibility(Z)V

    .line 254
    return-void
.end method

.method public setSupportSecondaryProgress(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setSecondaryProgress(I)V

    .line 258
    return-void
.end method

.method public startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->invalidateOptionsMenu()V

    .line 134
    return-void
.end method