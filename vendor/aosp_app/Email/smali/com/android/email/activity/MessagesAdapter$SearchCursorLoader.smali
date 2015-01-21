.class public Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;
.super Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchCursorLoader"
.end annotation


# instance fields
.field private mIsFirstLoad:Z

.field private final mListContext:Lcom/android/email/MessageListContext;

.field private mResultsCount:I

.field private mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/MessageListContext;)V
    .locals 1
    .parameter "context"
    .parameter "listContext"

    .prologue
    .line 571
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;-><init>(Landroid/content/Context;Lcom/android/email/MessageListContext;)V

    .line 566
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mResultsCount:I

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mIsFirstLoad:Z

    .line 572
    invoke-virtual {p2}, Lcom/android/email/MessageListContext;->isRemoteSearch()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 573
    iput-object p2, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mListContext:Lcom/android/email/MessageListContext;

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mIsFirstLoad:Z

    .line 575
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 579
    iget-boolean v2, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mIsFirstLoad:Z

    if-nez v2, :cond_0

    .line 584
    invoke-super {p0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v2

    .line 605
    :goto_0
    return-object v2

    .line 587
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-nez v2, :cond_1

    .line 588
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v3}, Lcom/android/email/MessageListContext;->getSearchedMailbox()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 594
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 596
    .local v0, controller:Lcom/android/email/Controller;
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mListContext:Lcom/android/email/MessageListContext;

    iget-wide v2, v2, Lcom/android/email/MessageListContext;->mAccountId:J

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v4}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/email/Controller;->searchMessages(JLcom/android/emailcommon/service/SearchParams;)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mResultsCount:I
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mIsFirstLoad:Z

    .line 605
    invoke-super {p0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 598
    :catch_0
    move-exception v1

    .line 599
    .local v1, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v2, "Email"

    const-string v3, "MessagingException when search messages in loadInBackground method"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected wrapCursor(Landroid/database/Cursor;ZLcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZI)Landroid/database/Cursor;
    .locals 11
    .parameter "cursor"
    .parameter "found"
    .parameter "account"
    .parameter "mailbox"
    .parameter "isEasAccount"
    .parameter "isRefreshable"
    .parameter "countTotalAccounts"

    .prologue
    .line 612
    new-instance v0, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;

    iget-object v8, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mResultsCount:I

    const/4 v10, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;-><init>(Landroid/database/Cursor;ZLcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZILcom/android/emailcommon/provider/Mailbox;ILcom/android/email/activity/MessagesAdapter$1;)V

    return-object v0
.end method
