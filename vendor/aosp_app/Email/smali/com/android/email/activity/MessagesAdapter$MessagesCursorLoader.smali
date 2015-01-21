.class Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessagesCursorLoader"
.end annotation


# instance fields
.field private final mAccountId:J

.field protected final mContext:Landroid/content/Context;

.field private final mMailboxId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/MessageListContext;)V
    .locals 7
    .parameter "context"
    .parameter "listContext"

    .prologue
    const/4 v4, 0x0

    .line 454
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v6, "timeStamp DESC"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iput-object p1, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    .line 458
    iget-wide v0, p2, Lcom/android/email/MessageListContext;->mAccountId:J

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mAccountId:J

    .line 459
    invoke-virtual {p2}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    .line 460
    return-void
.end method

.method private loadExtras(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 10
    .parameter "baseCursor"

    .prologue
    .line 494
    const/4 v2, 0x0

    .line 495
    .local v2, found:Z
    const/4 v3, 0x0

    .line 496
    .local v3, account:Lcom/android/emailcommon/provider/Account;
    const/4 v4, 0x0

    .line 497
    .local v4, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    const/4 v5, 0x0

    .line 498
    .local v5, isEasAccount:Z
    const/4 v6, 0x0

    .line 500
    .local v6, isRefreshable:Z
    iget-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-gez v0, :cond_1

    .line 502
    const/4 v2, 0x1

    .line 516
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v7

    .local v7, countAccounts:I
    move-object v0, p0

    move-object v1, p1

    .line 517
    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->wrapCursor(Landroid/database/Cursor;ZLcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZI)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 504
    .end local v7           #countAccounts:I
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    invoke-static {v0, v8, v9}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v4

    .line 505
    if-eqz v4, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v8, v4, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v0, v8, v9}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    .line 507
    if-eqz v3, :cond_2

    .line 508
    const/4 v2, 0x1

    .line 509
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/provider/Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v5

    .line 510
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    invoke-static {v0, v8, v9}, Lcom/android/emailcommon/provider/Mailbox;->isRefreshable(Landroid/content/Context;J)Z

    move-result v6

    goto :goto_0

    .line 512
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 10

    .prologue
    .line 464
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getPriority()I

    move-result v4

    .line 465
    .local v4, priority:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 466
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MessageListFragment] MessagesAdapter loadInBg mailboxId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " selectedSet="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/email/activity/MessagesAdapter;->sDeletedSet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mAccountId:J

    iget-wide v8, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Message;->buildMessageListSelection(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 472
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v3

    .line 475
    .local v3, messages:Landroid/database/Cursor;
    iget-wide v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    const-wide/16 v7, -0x7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 476
    invoke-static {v3}, Lcom/mediatek/email/emailvip/VipMemberCache;->filterVipMessages(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3

    .line 479
    :cond_0
    const/4 v1, 0x0

    .line 480
    .local v1, filteredCursor:Landroid/database/MatrixCursor;
    const/4 v2, 0x0

    .line 481
    .local v2, isDeleted:Z
    sget-object v6, Lcom/android/email/activity/MessagesAdapter;->sDeletedSet:Ljava/util/HashSet;

    monitor-enter v6

    .line 482
    :try_start_0
    sget-object v5, Lcom/android/email/activity/MessagesAdapter;->sDeletedSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v2, 0x1

    .line 483
    :goto_0
    if-eqz v2, :cond_1

    .line 484
    #calls: Lcom/android/email/activity/MessagesAdapter;->buildFilteredMessages(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    invoke-static {v3}, Lcom/android/email/activity/MessagesAdapter;->access$000(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v1

    .line 486
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    if-eqz v2, :cond_3

    .end local v1           #filteredCursor:Landroid/database/MatrixCursor;
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->loadExtras(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 489
    .local v0, c:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 490
    return-object v0

    .line 482
    .end local v0           #c:Landroid/database/Cursor;
    .restart local v1       #filteredCursor:Landroid/database/MatrixCursor;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 486
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_3
    move-object v1, v3

    .line 488
    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->loadInBackground()Landroid/database/Cursor;

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
    .line 530
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
