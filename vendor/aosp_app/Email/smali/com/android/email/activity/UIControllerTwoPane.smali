.class Lcom/android/email/activity/UIControllerTwoPane;
.super Lcom/android/email/activity/UIControllerBase;
.source "UIControllerTwoPane.java"

# interfaces
.implements Lcom/android/email/activity/ThreePaneLayout$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/UIControllerTwoPane$1;,
        Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;,
        Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;,
        Lcom/android/email/activity/UIControllerTwoPane$CommandButtonCallback;
    }
.end annotation


# static fields
.field static final INBOX_AUTO_REFRESH_MIN_INTERVAL:I = 0x2710
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAILBOX_REFRESH_MIN_INTERVAL:I = 0x7530
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mInMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

.field private mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

.field protected mThreePane:Lcom/android/email/activity/ThreePaneLayout;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/EmailActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/email/activity/UIControllerBase;-><init>(Lcom/android/email/activity/EmailActivity;)V

    .line 65
    return-void
.end method

.method private getMailboxId()J
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v0

    .line 592
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private goBackToMailbox()V
    .locals 1

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()Z

    .line 435
    :cond_0
    return-void
.end method

.method private unselectMessage()V
    .locals 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerBase;->removeMessageViewFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerBase;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    .line 503
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->setSelectedMessage(J)V

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->stopMessageOrderManager()V

    .line 507
    return-void
.end method

.method private updateMailboxList(Landroid/app/FragmentTransaction;Z)V
    .locals 7
    .parameter "ft"
    .parameter "clearDependentPane"

    .prologue
    .line 410
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " updateMailboxList "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 413
    iget-object v5, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    iget-wide v0, v5, Lcom/android/email/MessageListContext;->mAccountId:J

    .line 414
    .local v0, accountId:J
    iget-object v5, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v5}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v3

    .line 415
    .local v3, mailboxId:J
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getUIAccountId()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMailboxListMailboxId()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_1

    .line 416
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerBase;->removeMailboxListFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    .line 417
    iget-object v5, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v5}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v2, 0x1

    .line 418
    .local v2, enableHighlight:Z
    :goto_0
    iget-object v5, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v5}, Lcom/android/email/activity/ThreePaneLayout;->getLeftPaneId()I

    move-result v5

    invoke-static {v0, v1, v3, v4, v2}, Lcom/android/email/activity/MailboxListFragment;->newInstance(JJZ)Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 421
    .end local v2           #enableHighlight:Z
    :cond_1
    if-eqz p2, :cond_2

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerBase;->removeMessageListFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerBase;->removeMessageViewFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    .line 425
    :cond_2
    return-void

    .line 417
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateMessageList(Landroid/app/FragmentTransaction;Z)V
    .locals 4
    .parameter "ft"
    .parameter "clearDependentPane"

    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " updateMessageList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListMailboxId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerBase;->removeMessageListFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    .line 449
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->getMiddlePaneId()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->newInstance(Lcom/android/email/MessageListContext;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 451
    :cond_0
    if-eqz p2, :cond_1

    .line 452
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerBase;->removeMessageViewFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    .line 454
    :cond_1
    return-void
.end method

.method private updateMessageList(Z)V
    .locals 2
    .parameter "clearDependentPane"

    .prologue
    .line 461
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 462
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-direct {p0, v0, p1}, Lcom/android/email/activity/UIControllerTwoPane;->updateMessageList(Landroid/app/FragmentTransaction;Z)V

    .line 463
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerBase;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    .line 464
    return-void
.end method

.method private updateMessageView(Landroid/app/FragmentTransaction;J)V
    .locals 2
    .parameter "ft"
    .parameter "messageId"

    .prologue
    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " updateMessageView messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 476
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageId()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 487
    :goto_0
    return-void

    .line 484
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerBase;->removeMessageViewFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    .line 486
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->getRightPaneId()I

    move-result v0

    invoke-static {p2, p3}, Lcom/android/email/activity/MessageViewFragment;->newInstance(J)Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method


# virtual methods
.method protected canStopRefreshIcon(Z)Z
    .locals 4
    .parameter "isSynchronizeEnvelopeFinished"

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListMailboxId()J

    move-result-wide v0

    .line 324
    .local v0, messageListMailboxId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected createActionBarController(Landroid/app/Activity;)Lcom/android/email/activity/ActionBarController;
    .locals 5
    .parameter "activity"

    .prologue
    .line 301
    new-instance v0, Lcom/android/email/activity/ActionBarController;

    invoke-virtual {p1}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;-><init>(Lcom/android/email/activity/UIControllerTwoPane;Lcom/android/email/activity/UIControllerTwoPane$1;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/email/activity/ActionBarController;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;Landroid/app/ActionBar;Lcom/android/email/activity/ActionBarController$Callback;)V

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f040030

    return v0
.end method

.method public getMailboxSettingsMailboxId()J
    .locals 2

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListMailboxId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUIAccountId()J
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMailboxListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected installMessageListFragment(Lcom/android/email/activity/MessageListFragment;)V
    .locals 3
    .parameter "fragment"

    .prologue
    .line 361
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->installMessageListFragment(Lcom/android/email/activity/MessageListFragment;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMailboxListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MailboxListFragment;->setHighlightedMailbox(J)V

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListFragment;->setLayout(Lcom/android/email/activity/ThreePaneLayout;)V

    .line 368
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getListContext()Lcom/android/email/MessageListContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/MessageListContext;->isRemoteSearch()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setIsSearch(Z)V

    .line 369
    return-void
.end method

.method protected installMessageViewFragment(Lcom/android/email/activity/MessageViewFragment;)V
    .locals 3
    .parameter "fragment"

    .prologue
    .line 373
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->installMessageViewFragment(Lcom/android/email/activity/MessageViewFragment;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragment;->getMessageId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->setSelectedMessage(J)V

    .line 378
    :cond_0
    return-void
.end method

.method protected isRefreshEnabled()Z
    .locals 4

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getActualAccountId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRefreshInProgress()Z
    .locals 4

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListMailboxId()J

    move-result-wide v0

    .line 333
    .local v0, messageListMailboxId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected navigateToMessage(J)V
    .locals 2
    .parameter "messageId"

    .prologue
    .line 493
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 494
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/email/activity/UIControllerTwoPane;->updateMessageView(Landroid/app/FragmentTransaction;J)V

    .line 495
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerBase;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    .line 496
    return-void
.end method

.method public onAccountSelected(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/activity/UIControllerBase;->switchAccount(JZ)V

    .line 136
    return-void
.end method

.method public onActivityViewReady()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-super {p0}, Lcom/android/email/activity/UIControllerBase;->onActivityViewReady()V

    .line 290
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    const v1, 0x7f0f0097

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/ThreePaneLayout;

    iput-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    .line 291
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/ThreePaneLayout;->setCallback(Lcom/android/email/activity/ThreePaneLayout$Callback;)V

    .line 293
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->getMessageCommandButtons()Lcom/android/email/activity/MessageCommandButtonView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    .line 294
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    new-instance v1, Lcom/android/email/activity/UIControllerTwoPane$CommandButtonCallback;

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/UIControllerTwoPane$CommandButtonCallback;-><init>(Lcom/android/email/activity/UIControllerTwoPane;Lcom/android/email/activity/UIControllerTwoPane$1;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCommandButtonView;->setCallback(Lcom/android/email/activity/MessageCommandButtonView$Callback;)V

    .line 295
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->getInMessageCommandButtons()Lcom/android/email/activity/MessageCommandButtonView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mInMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    .line 296
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mInMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    new-instance v1, Lcom/android/email/activity/UIControllerTwoPane$CommandButtonCallback;

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/UIControllerTwoPane$CommandButtonCallback;-><init>(Lcom/android/email/activity/UIControllerTwoPane;Lcom/android/email/activity/UIControllerTwoPane$1;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCommandButtonView;->setCallback(Lcom/android/email/activity/MessageCommandButtonView$Callback;)V

    .line 297
    return-void
.end method

.method public onAdvancingOpAccepted(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, affectedMessages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageOrderManager()Lcom/android/email/activity/MessageOrderManager;

    move-result-object v1

    .line 180
    .local v1, orderManager:Lcom/android/email/activity/MessageOrderManager;
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getAutoAdvanceDirection()I

    move-result v0

    .line 181
    .local v0, autoAdvanceDir:I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-nez v1, :cond_3

    .line 182
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerTwoPane;->goBackToMailbox()V

    goto :goto_0

    .line 189
    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 191
    :cond_4
    :pswitch_0
    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 192
    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->moveToNewer()Z

    move-result v2

    if-nez v2, :cond_4

    .line 193
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerTwoPane;->goBackToMailbox()V

    goto :goto_0

    .line 197
    :cond_5
    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/UIControllerTwoPane;->navigateToMessage(J)V

    goto :goto_0

    .line 201
    :cond_6
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 202
    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->moveToOlder()Z

    move-result v2

    if-nez v2, :cond_6

    .line 203
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerTwoPane;->goBackToMailbox()V

    goto :goto_0

    .line 207
    :cond_7
    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/UIControllerTwoPane;->navigateToMessage(J)V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed(Z)Z
    .locals 2
    .parameter "isSystemBackKey"

    .prologue
    const/4 v0, 0x1

    .line 543
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->isPaneCollapsible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 544
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/ActionBarController;->onBackPressed(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    :cond_0
    :goto_0
    return v0

    .line 548
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()Z

    move-result v1

    if-nez v1, :cond_0

    .line 553
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMailboxListInstalled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxListFragment;->navigateUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCalendarLinkClicked(J)V
    .locals 1
    .parameter "epochEventStartTime"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/ActivityHelper;->openCalendar(Landroid/app/Activity;J)V

    .line 262
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .locals 6
    .parameter "inflater"
    .parameter "menu"

    .prologue
    .line 103
    iget-object v5, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v5}, Lcom/android/email/activity/ThreePaneLayout;->getPaneState()I

    move-result v4

    .line 104
    .local v4, state:I
    const/4 v2, 0x0

    .line 105
    .local v2, handled:Z
    const/4 v3, -0x1

    .line 106
    .local v3, menuId:I
    packed-switch v4, :pswitch_data_0

    .line 124
    :goto_0
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 125
    invoke-virtual {p1, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 127
    :cond_0
    return v2

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    .line 109
    .local v1, fragment:Lcom/android/email/activity/MessageListFragment;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 111
    .local v0, context:Lcom/android/email/MessageListContext;
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 112
    const v3, 0x7f0e0006

    .line 116
    :goto_2
    const/4 v2, 0x1

    .line 117
    goto :goto_0

    .line 109
    .end local v0           #context:Lcom/android/email/MessageListContext;
    :cond_1
    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getListContext()Lcom/android/email/MessageListContext;

    move-result-object v0

    goto :goto_1

    .line 114
    .restart local v0       #context:Lcom/android/email/MessageListContext;
    :cond_2
    const v3, 0x7f0e0005

    goto :goto_2

    .line 120
    .end local v0           #context:Lcom/android/email/MessageListContext;
    .end local v1           #fragment:Lcom/android/email/activity/MessageListFragment;
    :pswitch_1
    const v3, 0x7f0e0007

    .line 121
    const/4 v2, 0x1

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onDragEnded()V
    .locals 2

    .prologue
    .line 231
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "Email"

    const-string v1, "Drag ended"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    return-void
.end method

.method public onDragStarted()Z
    .locals 2

    .prologue
    .line 215
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "Email"

    const-string v1, "Drag started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->isLeftPaneVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 222
    :cond_2
    const/4 v0, 0x0

    .line 225
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onForward()V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 268
    return-void
.end method

.method public onLoadMessageError(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMessage"

    .prologue
    .line 256
    return-void
.end method

.method public onLoadMessageFinished()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public onLoadMessageStarted()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public onMailboxSelected(JJZ)V
    .locals 4
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "nestedNavigation"

    .prologue
    .line 93
    invoke-static {p1, p2, p3, p4}, Lcom/android/email/MessageListContext;->forMailbox(JJ)Lcom/android/email/MessageListContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerBase;->setListContext(Lcom/android/email/MessageListContext;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListMailboxId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v2}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/UIControllerTwoPane;->updateMessageList(Z)V

    .line 97
    :cond_0
    return-void
.end method

.method public onMessageOpen(JJJI)V
    .locals 2
    .parameter "messageId"
    .parameter "messageMailboxId"
    .parameter "listMailboxId"
    .parameter "type"

    .prologue
    .line 157
    const/4 v0, 0x1

    if-ne p7, v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->actionEditDraft(Landroid/content/Context;J)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/UIControllerTwoPane;->navigateToMessage(J)V

    .line 162
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()Z

    goto :goto_0
.end method

.method public onParentMailboxChanged(JJ)V
    .locals 4
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->refreshActionBar()V

    .line 144
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p1, p2, p3, p4}, Lcom/android/email/MessageListContext;->forMailbox(JJ)Lcom/android/email/MessageListContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerBase;->setListContext(Lcom/android/email/MessageListContext;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListMailboxId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v2}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/UIControllerTwoPane;->updateMessageList(Z)V

    .line 151
    :cond_0
    return-void
.end method

.method protected onRefresh()V
    .locals 6

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->isRefreshEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    :goto_0
    return-void

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->isRemoteSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v0

    iget-object v0, v0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v1}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v1

    iget-object v1, v1, Lcom/android/emailcommon/service/SearchParams;->mField:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/UIControllerBase;->onSearchSubmit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getActualAccountId()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMailboxId()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    goto :goto_0

    .line 584
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getActualAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->refreshMailboxList(J)Z

    goto :goto_0
.end method

.method public onReply()V
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 274
    return-void
.end method

.method public onReplyAll()V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 280
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 356
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 357
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 350
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 351
    return-void
.end method

.method public onUrlInMessageClicked(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getActualAccountId()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/android/email/activity/ActivityHelper;->openUrlInMessage(Landroid/app/Activity;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public onVisiblePanesChanged(I)V
    .locals 3
    .parameter "previousVisiblePanes"

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v0

    .line 78
    .local v0, visiblePanes:I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerTwoPane;->unselectMessage()V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v2

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/email/activity/MessageListFragment;->onHidden(Z)V

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->refreshActionBar()V

    .line 88
    return-void

    .line 85
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openInternal(Lcom/android/email/MessageListContext;J)V
    .locals 4
    .parameter "listContext"
    .parameter "messageId"

    .prologue
    const/4 v3, 0x1

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 387
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/UIControllerTwoPane;->updateMailboxList(Landroid/app/FragmentTransaction;Z)V

    .line 388
    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/UIControllerTwoPane;->updateMessageList(Landroid/app/FragmentTransaction;Z)V

    .line 390
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    .line 391
    invoke-direct {p0, v0, p2, p3}, Lcom/android/email/activity/UIControllerTwoPane;->updateMessageView(Landroid/app/FragmentTransaction;J)V

    .line 392
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()Z

    .line 397
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerBase;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    .line 398
    return-void

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()Z

    goto :goto_0
.end method

.method protected updateNavigationArrows()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 525
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageOrderManager()Lcom/android/email/activity/MessageOrderManager;

    move-result-object v0

    .line 526
    .local v0, orderManager:Lcom/android/email/activity/MessageOrderManager;
    if-nez v0, :cond_0

    .line 528
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/android/email/activity/MessageCommandButtonView;->enableNavigationButtons(ZZII)V

    .line 529
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mInMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/android/email/activity/MessageCommandButtonView;->enableNavigationButtons(ZZII)V

    .line 538
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->canMoveToNewer()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->canMoveToOlder()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->getCurrentPosition()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->getTotalMessageCount()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/email/activity/MessageCommandButtonView;->enableNavigationButtons(ZZII)V

    .line 534
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mInMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->canMoveToNewer()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->canMoveToOlder()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->getCurrentPosition()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->getTotalMessageCount()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/email/activity/MessageCommandButtonView;->enableNavigationButtons(ZZII)V

    goto :goto_0
.end method
