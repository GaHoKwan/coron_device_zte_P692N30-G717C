.class Lcom/android/email/activity/UIControllerOnePane;
.super Lcom/android/email/activity/UIControllerBase;
.source "UIControllerOnePane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/UIControllerOnePane$1;,
        Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_PREVIOUS_FRAGMENT:Ljava/lang/String; = "UIControllerOnePane.PREVIOUS_FRAGMENT"


# instance fields
.field private mPreviousFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/EmailActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/android/email/activity/UIControllerBase;-><init>(Lcom/android/email/activity/EmailActivity;)V

    .line 294
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/UIControllerOnePane;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->isInboxShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/UIControllerOnePane;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->getMailboxId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/UIControllerOnePane;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->showAllMailboxes()V

    return-void
.end method

.method private getInstalledFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMailboxListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v0

    .line 435
    :goto_0
    return-object v0

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    goto :goto_0

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    goto :goto_0

    .line 435
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMailboxId()J
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v0

    .line 342
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private isInboxShown()Z
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->isInboxList()Z

    move-result v0

    goto :goto_0
.end method

.method private openMailboxList(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerBase;->setListContext(Lcom/android/email/MessageListContext;)V

    .line 447
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/email/activity/MailboxListFragment;->newInstance(JJZ)Lcom/android/email/activity/MailboxListFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/UIControllerOnePane;->showFragment(Landroid/app/Fragment;)V

    .line 448
    return-void
.end method

.method private openMessage(J)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 451
    invoke-static {p1, p2}, Lcom/android/email/activity/MessageViewFragment;->newInstance(J)Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/UIControllerOnePane;->showFragment(Landroid/app/Fragment;)V

    .line 452
    return-void
.end method

.method private popFromBackStack()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 578
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    if-nez v2, :cond_0

    .line 602
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 582
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->getInstalledFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 584
    .local v1, installed:Landroid/app/Fragment;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " backstack: [pop] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/Logging;->fragment(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/UIControllerBase;->removeFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 590
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/android/email/activity/MailboxListFragment;

    if-eqz v2, :cond_1

    .line 591
    invoke-virtual {p0, v4}, Lcom/android/email/activity/UIControllerBase;->setListContext(Lcom/android/email/MessageListContext;)V

    .line 598
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 599
    const/16 v2, 0x2002

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 600
    iput-object v4, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    .line 601
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerBase;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    goto :goto_0

    .line 592
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/android/email/activity/MessageListFragment;

    if-eqz v2, :cond_2

    .line 593
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getListContext()Lcom/android/email/MessageListContext;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/UIControllerBase;->setListContext(Lcom/android/email/MessageListContext;)V

    goto :goto_1

    .line 595
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Message view should never be in backstack"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private shouldPopFromBackStack(Z)Z
    .locals 5
    .parameter "isSystemBackKey"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 531
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    if-nez v2, :cond_0

    move v2, v3

    .line 569
    :goto_0
    return v2

    .line 534
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/android/email/activity/MessageViewFragment;

    if-eqz v2, :cond_1

    .line 535
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Message view should never be in backstack"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 537
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->getInstalledFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 538
    .local v0, installed:Landroid/app/Fragment;
    if-nez v0, :cond_2

    move v2, v3

    .line 540
    goto :goto_0

    .line 546
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/android/email/activity/MessageListFragment;

    if-eqz v2, :cond_3

    .line 547
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getListContext()Lcom/android/email/MessageListContext;

    move-result-object v1

    .line 549
    .local v1, listContext:Lcom/android/email/MessageListContext;
    invoke-virtual {v1}, Lcom/android/email/MessageListContext;->isRemoteSearch()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    .line 550
    goto :goto_0

    .line 557
    .end local v1           #listContext:Lcom/android/email/MessageListContext;
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->isInboxShown()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    .line 559
    goto :goto_0

    .line 564
    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/android/email/activity/MessageListFragment;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->isInboxList()Z

    move-result v2

    if-nez v2, :cond_5

    instance-of v2, v0, Lcom/android/email/activity/MailboxListFragment;

    if-eqz v2, :cond_5

    move v2, v3

    .line 567
    goto :goto_0

    :cond_5
    move v2, v4

    .line 569
    goto :goto_0
.end method

.method private showAllMailboxes()V
    .locals 2

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isAccountSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    :goto_0
    return-void

    .line 609
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->getUIAccountId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/UIControllerOnePane;->openMailboxList(J)V

    goto :goto_0
.end method

.method private showFragment(Landroid/app/Fragment;)V
    .locals 5
    .parameter "fragment"

    .prologue
    .line 463
    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 464
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->getInstalledFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 465
    .local v1, installed:Landroid/app/Fragment;
    instance-of v3, v1, Lcom/android/email/activity/MessageViewFragment;

    if-eqz v3, :cond_0

    instance-of v3, p1, Lcom/android/email/activity/MessageViewFragment;

    if-eqz v3, :cond_0

    .line 470
    if-eqz v1, :cond_2

    .line 471
    instance-of v3, v1, Lcom/android/email/activity/MessageViewFragment;

    if-eqz v3, :cond_2

    .line 474
    const-string v3, "MessageViewFragment reload"

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->fragment(Ljava/lang/String;)V

    move-object v2, v1

    .line 476
    check-cast v2, Lcom/android/email/activity/MessageViewFragment;

    .line 477
    .local v2, mf:Lcom/android/email/activity/MessageViewFragment;
    invoke-virtual {p1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragment;->setMessageId(Landroid/os/Bundle;)V

    .line 478
    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->resetPartialLoading()V

    .line 479
    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->loadMessage()V

    .line 523
    .end local v2           #mf:Lcom/android/email/activity/MessageViewFragment;
    :goto_0
    return-void

    .line 486
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " backstack: [push] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->getInstalledFragment()Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->fragment(Ljava/lang/String;)V

    .line 489
    iget-object v3, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_1

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showFragment: destroying previous fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->fragment(Ljava/lang/String;)V

    .line 494
    iget-object v3, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    invoke-virtual {p0, v0, v3}, Lcom/android/email/activity/UIControllerBase;->removeFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 495
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    .line 498
    :cond_1
    if-eqz v1, :cond_2

    .line 499
    instance-of v3, v1, Lcom/android/email/activity/MessageViewFragment;

    if-eqz v3, :cond_3

    .line 502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showFragment: removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->fragment(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 518
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showFragment: replacing with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->fragment(Ljava/lang/String;)V

    .line 520
    const v3, 0x7f0f0096

    invoke-virtual {v0, v3, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 521
    const/16 v3, 0x1001

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 522
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerBase;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    goto/16 :goto_0

    .line 507
    :cond_3
    iput-object v1, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    .line 509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showFragment: detaching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->fragment(Ljava/lang/String;)V

    .line 512
    iget-object v3, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method


# virtual methods
.method protected canStopRefreshIcon(Z)Z
    .locals 2
    .parameter "isSynchronizeEnvelopeFinished"

    .prologue
    const/4 v0, 0x0

    .line 707
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isRefreshEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 714
    :cond_0
    :goto_0
    return v0

    .line 710
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected createActionBarController(Landroid/app/Activity;)Lcom/android/email/activity/ActionBarController;
    .locals 5
    .parameter "activity"

    .prologue
    .line 302
    new-instance v0, Lcom/android/email/activity/ActionBarController;

    invoke-virtual {p1}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;-><init>(Lcom/android/email/activity/UIControllerOnePane;Lcom/android/email/activity/UIControllerOnePane$1;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/email/activity/ActionBarController;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;Landroid/app/ActionBar;Lcom/android/email/activity/ActionBarController$Callback;)V

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 324
    const v0, 0x7f04002f

    return v0
.end method

.method protected getMailboxSettingsMailboxId()J
    .locals 2

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getUIAccountId()J
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    iget-wide v0, v0, Lcom/android/email/MessageListContext;->mAccountId:J

    .line 335
    :goto_0
    return-wide v0

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMailboxListInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v0

    goto :goto_0

    .line 335
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected installMailboxListFragment(Lcom/android/email/activity/MailboxListFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->stopMessageOrderManager()V

    .line 615
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->installMailboxListFragment(Lcom/android/email/activity/MailboxListFragment;)V

    .line 616
    return-void
.end method

.method protected installMessageListFragment(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->stopMessageOrderManager()V

    .line 621
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->installMessageListFragment(Lcom/android/email/activity/MessageListFragment;)V

    .line 622
    return-void
.end method

.method protected isRefreshEnabled()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 682
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isActualAccountSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 685
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMailboxListInstalled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v1}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isRefreshInProgress()Z
    .locals 3

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isRefreshEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    const/4 v0, 0x0

    .line 725
    :goto_0
    return v0

    .line 722
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->getMailboxId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v0

    goto :goto_0

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getActualAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->isMailboxListRefreshing(J)Z

    move-result v0

    goto :goto_0
.end method

.method protected navigateToMessage(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 730
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/UIControllerOnePane;->openMessage(J)V

    .line 731
    return-void
.end method

.method public onAccountSelected(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/activity/UIControllerBase;->switchAccount(JZ)V

    .line 64
    return-void
.end method

.method public onAdvancingOpAccepted(Ljava/util/Set;)V
    .locals 0
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
    .line 85
    .local p1, affectedMessages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 6
    .parameter "isSystemBackKey"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 348
    sget-boolean v2, Lcom/android/emailcommon/Configuration;->mIsRunTestcase:Z

    if-eqz v2, :cond_1

    .line 349
    const-string v1, " Run Testcase, not handle back key event."

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 406
    :cond_0
    :goto_0
    return v0

    .line 353
    :cond_1
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 355
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onBackPressed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v2, p1}, Lcom/android/email/activity/ActionBarController;->onBackPressed(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 359
    goto :goto_0

    .line 362
    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMailboxListInstalled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment;->navigateUp()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Back: back handled by mailbox list"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->fragment(Ljava/lang/String;)V

    move v0, v1

    .line 366
    goto :goto_0

    .line 371
    :cond_4
    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v2}, Lcom/android/email/activity/ActionBarController;->isRemoteSearchMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 373
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v0, v1

    .line 374
    goto :goto_0

    .line 379
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/email/activity/UIControllerOnePane;->shouldPopFromBackStack(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Back: Popping from back stack"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->fragment(Ljava/lang/String;)V

    .line 383
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->popFromBackStack()V

    move v0, v1

    .line 384
    goto/16 :goto_0

    .line 388
    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Back: Message view -> Message List"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->fragment(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    iget-wide v2, v0, Lcom/android/email/MessageListContext;->mAccountId:J

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/email/activity/UIControllerBase;->openMailbox(JJ)V

    move v0, v1

    .line 395
    goto/16 :goto_0

    .line 396
    :cond_7
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMailboxListInstalled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 398
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/email/activity/UIControllerBase;->switchAccount(JZ)V

    move v0, v1

    .line 399
    goto/16 :goto_0

    .line 400
    :cond_8
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->isInboxShown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v2}, Lcom/android/email/activity/ActionBarController;->isRemoteSearchMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    iget-wide v2, v0, Lcom/android/email/MessageListContext;->mAccountId:J

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/email/activity/UIControllerBase;->switchAccount(JZ)V

    move v0, v1

    .line 404
    goto/16 :goto_0
.end method

.method public onCalendarLinkClicked(J)V
    .locals 1
    .parameter "epochEventStartTime"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/ActivityHelper;->openCalendar(Landroid/app/Activity;J)V

    .line 133
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .locals 2
    .parameter "inflater"
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    .line 635
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    const v1, 0x7f0e0005

    invoke-virtual {p1, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 643
    :goto_0
    return v0

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 640
    const v1, 0x7f0e0007

    invoke-virtual {p1, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 643
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDragEnded()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onDragStarted()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public onForward()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 115
    return-void
.end method

.method public onLoadMessageError(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMessage"

    .prologue
    .line 145
    return-void
.end method

.method public onLoadMessageFinished()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public onLoadMessageStarted()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onMailboxSelected(JJZ)V
    .locals 0
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "nestedNavigation"

    .prologue
    .line 69
    if-eqz p5, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/email/activity/UIControllerBase;->openMailbox(JJ)V

    goto :goto_0
.end method

.method public onMessageOpen(JJJI)V
    .locals 1
    .parameter "messageId"
    .parameter "messageMailboxId"
    .parameter "listMailboxId"
    .parameter "type"

    .prologue
    .line 91
    const/4 v0, 0x1

    if-ne p7, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->actionEditDraft(Landroid/content/Context;J)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/email/activity/UIControllerBase;->open(Lcom/android/email/MessageListContext;J)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 669
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 674
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 671
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->showAllMailboxes()V

    .line 672
    const/4 v0, 0x1

    goto :goto_0

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0126
        :pswitch_0
    .end packed-switch
.end method

.method public onParentMailboxChanged(JJ)V
    .locals 0
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->refreshActionBar()V

    .line 79
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .locals 7
    .parameter "inflater"
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 649
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/UIControllerBase;->onPrepareOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z

    .line 650
    const v3, 0x7f0f0126

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 651
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 652
    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v3}, Lcom/android/email/activity/ActionBarController;->isLocalSearchMode()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v3}, Lcom/android/email/activity/ActionBarController;->isRemoteSearchMode()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    :goto_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 655
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v1

    .line 656
    .local v1, messageViewVisible:Z
    if-eqz v1, :cond_2

    .line 657
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageOrderManager()Lcom/android/email/activity/MessageOrderManager;

    move-result-object v2

    .line 660
    .local v2, om:Lcom/android/email/activity/MessageOrderManager;
    iget-object v6, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/email/activity/MessageOrderManager;->canMoveToNewer()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Lcom/android/email/activity/ActionBarController;->setSwitchNewerEnable(Z)V

    .line 661
    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/email/activity/MessageOrderManager;->canMoveToOlder()Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v4

    :cond_1
    invoke-virtual {v3, v5}, Lcom/android/email/activity/ActionBarController;->setSwitchOlderEnable(Z)V

    .line 664
    .end local v2           #om:Lcom/android/email/activity/MessageOrderManager;
    :cond_2
    return v4

    .end local v1           #messageViewVisible:Z
    :cond_3
    move v3, v5

    .line 652
    goto :goto_0

    .restart local v1       #messageViewVisible:Z
    .restart local v2       #om:Lcom/android/email/activity/MessageOrderManager;
    :cond_4
    move v3, v5

    .line 660
    goto :goto_1
.end method

.method protected onRefresh()V
    .locals 6

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isRefreshEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    :goto_0
    return-void

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 694
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->isRemoteSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
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

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getActualAccountId()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->getMailboxId()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    goto :goto_0

    .line 701
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
    .line 120
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 121
    return-void
.end method

.method public onReplyAll()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 127
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 317
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 318
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "UIControllerOnePane.PREVIOUS_FRAGMENT"

    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    .line 320
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 308
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 309
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "UIControllerOnePane.PREVIOUS_FRAGMENT"

    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 313
    :cond_0
    return-void
.end method

.method public onUrlInMessageClicked(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getActualAccountId()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/android/email/activity/ActivityHelper;->openUrlInMessage(Landroid/app/Activity;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public openInternal(Lcom/android/email/MessageListContext;J)V
    .locals 3
    .parameter "listContext"
    .parameter "messageId"

    .prologue
    .line 411
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 417
    invoke-direct {p0, p2, p3}, Lcom/android/email/activity/UIControllerOnePane;->openMessage(J)V

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-static {p1}, Lcom/android/email/activity/MessageListFragment;->newInstance(Lcom/android/email/MessageListContext;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/UIControllerOnePane;->showFragment(Landroid/app/Fragment;)V

    goto :goto_0
.end method

.method protected updateNavigationArrows()V
    .locals 0

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->refreshActionBar()V

    .line 735
    return-void
.end method
