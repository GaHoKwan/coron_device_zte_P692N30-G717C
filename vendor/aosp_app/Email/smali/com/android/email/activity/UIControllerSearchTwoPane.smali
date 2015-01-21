.class public Lcom/android/email/activity/UIControllerSearchTwoPane;
.super Lcom/android/email/activity/UIControllerTwoPane;
.source "UIControllerSearchTwoPane.java"


# direct methods
.method public constructor <init>(Lcom/android/email/activity/EmailActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/email/activity/UIControllerTwoPane;-><init>(Lcom/android/email/activity/EmailActivity;)V

    .line 27
    return-void
.end method


# virtual methods
.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getLayoutId()I
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getLayoutId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMailboxSettingsMailboxId()J
    .locals 2

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMailboxSettingsMailboxId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getUIAccountId()J
    .locals 2

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getUIAccountId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic onAccountSelected(J)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/UIControllerTwoPane;->onAccountSelected(J)V

    return-void
.end method

.method public bridge synthetic onActivityCreated()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerBase;->onActivityCreated()V

    return-void
.end method

.method public bridge synthetic onActivityDestroy()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerBase;->onActivityDestroy()V

    return-void
.end method

.method public bridge synthetic onActivityPause()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerBase;->onActivityPause()V

    return-void
.end method

.method public bridge synthetic onActivityResume()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerBase;->onActivityResume()V

    return-void
.end method

.method public bridge synthetic onActivityStart()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerBase;->onActivityStart()V

    return-void
.end method

.method public bridge synthetic onActivityStop()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerBase;->onActivityStop()V

    return-void
.end method

.method public bridge synthetic onActivityViewReady()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerTwoPane;->onActivityViewReady()V

    return-void
.end method

.method public bridge synthetic onAdvancingOpAccepted(Ljava/util/Set;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerTwoPane;->onAdvancingOpAccepted(Ljava/util/Set;)V

    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 1
    .parameter "isSystemBackKey"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerTwoPane;->onBackPressed(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onBeforeMessageGone()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerBase;->onBeforeMessageGone()V

    return-void
.end method

.method public bridge synthetic onCalendarLinkClicked(J)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/UIControllerTwoPane;->onCalendarLinkClicked(J)V

    return-void
.end method

.method public bridge synthetic onCheckIsEasRemoteMessage()Z
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerBase;->onCheckIsEasRemoteMessage()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/UIControllerTwoPane;->onCreateOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onDragEnded()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerTwoPane;->onDragEnded()V

    return-void
.end method

.method public bridge synthetic onDragStarted()Z
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerTwoPane;->onDragStarted()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onForward()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerTwoPane;->onForward()V

    return-void
.end method

.method public bridge synthetic onGetQueryTerm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerBase;->onGetQueryTerm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onLoadMessageError(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerTwoPane;->onLoadMessageError(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onLoadMessageFinished()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerTwoPane;->onLoadMessageFinished()V

    return-void
.end method

.method public bridge synthetic onLoadMessageStarted()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerTwoPane;->onLoadMessageStarted()V

    return-void
.end method

.method public bridge synthetic onMailboxNotFound(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->onMailboxNotFound(Z)V

    return-void
.end method

.method public bridge synthetic onMailboxSelected(JJZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-super/range {p0 .. p5}, Lcom/android/email/activity/UIControllerTwoPane;->onMailboxSelected(JJZ)V

    return-void
.end method

.method public bridge synthetic onMessageNotExists()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerBase;->onMessageNotExists()V

    return-void
.end method

.method public bridge synthetic onMessageOpen(JJJI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 23
    invoke-super/range {p0 .. p7}, Lcom/android/email/activity/UIControllerTwoPane;->onMessageOpen(JJJI)V

    return-void
.end method

.method public bridge synthetic onMessageSetUnread()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerBase;->onMessageSetUnread()V

    return-void
.end method

.method public bridge synthetic onMessagesLoadFinish(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->onMessagesLoadFinish(Z)V

    return-void
.end method

.method public bridge synthetic onNeedUpdateAtionBarTitle()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerBase;->onNeedUpdateAtionBarTitle()V

    return-void
.end method

.method public bridge synthetic onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onParentMailboxChanged(JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/email/activity/UIControllerTwoPane;->onParentMailboxChanged(JJ)V

    return-void
.end method

.method public bridge synthetic onPrepareOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/UIControllerBase;->onPrepareOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onReply()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerTwoPane;->onReply()V

    return-void
.end method

.method public bridge synthetic onReplyAll()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerTwoPane;->onReplyAll()V

    return-void
.end method

.method public bridge synthetic onRespondedToInvite(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->onRespondedToInvite(I)V

    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerTwoPane;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerTwoPane;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onSearchRequested(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->onSearchRequested(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSearchStarted()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerBase;->onSearchStarted()V

    return-void
.end method

.method public bridge synthetic onUrlInMessageClicked(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerTwoPane;->onUrlInMessageClicked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onVisiblePanesChanged(I)V
    .locals 1
    .parameter "previousVisiblePanes"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerTwoPane;->onVisiblePanesChanged(I)V

    .line 41
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 42
    return-void
.end method

.method public bridge synthetic openInternal(Lcom/android/email/MessageListContext;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/UIControllerTwoPane;->openInternal(Lcom/android/email/MessageListContext;J)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic updateRefreshIcon()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/email/activity/UIControllerBase;->updateRefreshIcon()V

    return-void
.end method
