.class public Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalSearchCursorLoader"
.end annotation


# instance fields
.field private final mAccountId:J

.field protected final mContext:Landroid/content/Context;

.field private mIsFirstLoad:Z

.field private final mListContext:Lcom/android/email/MessageListContext;

.field private final mMailboxId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/MessageListContext;)V
    .locals 7
    .parameter "context"
    .parameter "listContext"

    .prologue
    const/4 v4, 0x0

    .line 629
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v6, "timeStamp DESC"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->mIsFirstLoad:Z

    .line 632
    iput-object p1, p0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->mContext:Landroid/content/Context;

    .line 633
    iget-wide v0, p2, Lcom/android/email/MessageListContext;->mAccountId:J

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->mAccountId:J

    .line 634
    invoke-virtual {p2}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->mMailboxId:J

    .line 635
    iput-object p2, p0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->mListContext:Lcom/android/email/MessageListContext;

    .line 636
    return-void
.end method

.method private loadExtras(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 10
    .parameter "baseCursor"

    .prologue
    .line 670
    const/4 v2, 0x0

    .line 671
    .local v2, found:Z
    const/4 v3, 0x0

    .line 672
    .local v3, account:Lcom/android/emailcommon/provider/Account;
    const/4 v4, 0x0

    .line 673
    .local v4, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    const/4 v5, 0x0

    .line 674
    .local v5, isEasAccount:Z
    const/4 v6, 0x0

    .line 676
    .local v6, isRefreshable:Z
    iget-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->mMailboxId:J

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-gez v0, :cond_1

    .line 678
    const/4 v2, 0x1

    .line 692
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v7

    .local v7, countAccounts:I
    move-object v0, p0

    move-object v1, p1

    .line 693
    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->wrapCursor(Landroid/database/Cursor;ZLcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZI)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 680
    .end local v7           #countAccounts:I
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->mMailboxId:J

    invoke-static {v0, v8, v9}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v4

    .line 681
    if-eqz v4, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v8, v4, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v0, v8, v9}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    .line 683
    if-eqz v3, :cond_2

    .line 684
    const/4 v2, 0x1

    .line 685
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/provider/Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v5

    .line 686
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->mMailboxId:J

    invoke-static {v0, v8, v9}, Lcom/android/emailcommon/provider/Mailbox;->isRefreshable(Landroid/content/Context;J)Z

    move-result v6

    goto :goto_0

    .line 688
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 640
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v11

    .line 641
    .local v11, priority:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 643
    sput-boolean v12, Lcom/android/emailcommon/provider/EmailContent$Message;->sNewLocalSearchStarted:Z

    .line 644
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->mAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->mMailboxId:J

    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v5}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v5

    iget-object v5, v5, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v6}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v6

    iget-object v6, v6, Lcom/android/emailcommon/service/SearchParams;->mField:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->buildLocalSearchSelection(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 646
    sget-boolean v0, Lcom/android/emailcommon/provider/EmailContent$Message;->sNewLocalSearchStarted:Z

    if-eqz v0, :cond_0

    .line 647
    const/4 v7, 0x0

    .line 666
    :goto_0
    return-object v7

    .line 650
    :cond_0
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v10

    .line 652
    .local v10, messages:Landroid/database/Cursor;
    iget-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->mMailboxId:J

    const-wide/16 v2, -0x7

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 653
    invoke-static {v10}, Lcom/mediatek/email/emailvip/VipMemberCache;->filterVipMessages(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v10

    .line 655
    :cond_1
    const/4 v8, 0x0

    .line 656
    .local v8, filteredCursor:Landroid/database/MatrixCursor;
    const/4 v9, 0x0

    .line 657
    .local v9, isDeleted:Z
    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sDeletedSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 658
    :try_start_0
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sDeletedSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v9, 0x1

    .line 659
    :goto_1
    if-eqz v9, :cond_2

    .line 660
    #calls: Lcom/android/email/activity/MessagesAdapter;->buildFilteredMessages(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    invoke-static {v10}, Lcom/android/email/activity/MessagesAdapter;->access$000(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 662
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    if-eqz v9, :cond_4

    .end local v8           #filteredCursor:Landroid/database/MatrixCursor;
    :goto_2
    invoke-direct {p0, v8}, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->loadExtras(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v7

    .line 665
    .local v7, c:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0

    .end local v7           #c:Landroid/database/Cursor;
    .restart local v8       #filteredCursor:Landroid/database/MatrixCursor;
    :cond_3
    move v9, v12

    .line 658
    goto :goto_1

    .line 662
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move-object v8, v10

    .line 664
    goto :goto_2
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected wrapCursor(Landroid/database/Cursor;ZLcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZI)Landroid/database/Cursor;
    .locals 9
    .parameter "cursor"
    .parameter "found"
    .parameter "account"
    .parameter "mailbox"
    .parameter "isEasAccount"
    .parameter "isRefreshable"
    .parameter "countTotalAccounts"

    .prologue
    .line 700
    new-instance v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;-><init>(Landroid/database/Cursor;ZLcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZILcom/android/email/activity/MessagesAdapter$1;)V

    return-object v0
.end method
