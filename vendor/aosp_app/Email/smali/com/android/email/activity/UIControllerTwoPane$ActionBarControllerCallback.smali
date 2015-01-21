.class Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;
.super Ljava/lang/Object;
.source "UIControllerTwoPane.java"

# interfaces
.implements Lcom/android/email/activity/ActionBarController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UIControllerTwoPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/UIControllerTwoPane;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/UIControllerTwoPane;)V
    .locals 0
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/UIControllerTwoPane;Lcom/android/email/activity/UIControllerTwoPane$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;-><init>(Lcom/android/email/activity/UIControllerTwoPane;)V

    return-void
.end method


# virtual methods
.method public getMailboxId()J
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->getMessageListMailboxId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 762
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSearchHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->getSearchHint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleMode()I
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    iget-object v0, v0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->isLeftPaneVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    const/16 v0, 0x10

    .line 754
    :goto_0
    return v0

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    iget-object v0, v0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->isRightPaneVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    iget-object v0, v0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->isMiddlePaneVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 751
    const/4 v0, 0x3

    goto :goto_0

    .line 754
    :cond_1
    const/16 v0, 0x12

    goto :goto_0
.end method

.method public getUIAccountId()J
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerTwoPane;->getUIAccountId()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAccountSelected()Z
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->isAccountSelected()Z

    move-result v0

    return v0
.end method

.method public onAccountSelected(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/email/activity/UIControllerBase;->switchAccount(JZ)V

    .line 727
    return-void
.end method

.method public onLocalSearchSubmit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "queryTerm"
    .parameter "queryField"

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    :goto_0
    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/UIControllerBase;->onLocalSearchSubmit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMailboxSelected(JJ)V
    .locals 2
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->getMailboxId()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 736
    :goto_0
    return-void

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/activity/UIControllerBase;->openMailbox(JJ)V

    goto :goto_0
.end method

.method public onNoAccountsFound()V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    iget-object v0, v0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 741
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    iget-object v0, v0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 742
    return-void
.end method

.method public onSearchExit()V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->onSearchExit()V

    .line 800
    return-void
.end method

.method public onSearchStarted()V
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->onSearchStarted()V

    .line 782
    return-void
.end method

.method public onSearchSubmit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "queryTerm"
    .parameter "queryField"

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/UIControllerBase;->onSearchSubmit(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method public onUpPressed()V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/UIControllerTwoPane;->onBackPressed(Z)Z

    .line 817
    return-void
.end method

.method public shouldShowUp()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 768
    iget-object v4, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    iget-object v4, v4, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v4}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v1

    .line 769
    .local v1, visiblePanes:I
    and-int/lit8 v4, v1, 0x4

    if-nez v4, :cond_2

    move v0, v3

    .line 770
    .local v0, leftPaneHidden:Z
    :goto_0
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v4}, Lcom/android/email/activity/UIControllerBase;->isMailboxListInstalled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v4}, Lcom/android/email/activity/UIControllerBase;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/MailboxListFragment;->canNavigateUp()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    .end local v0           #leftPaneHidden:Z
    :cond_2
    move v0, v2

    .line 769
    goto :goto_0
.end method

.method public switchMail(Z)V
    .locals 1
    .parameter "toNewer"

    .prologue
    .line 807
    if-eqz p1, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->moveToNewer()Z

    .line 812
    :goto_0
    return-void

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->moveToOlder()Z

    goto :goto_0
.end method
