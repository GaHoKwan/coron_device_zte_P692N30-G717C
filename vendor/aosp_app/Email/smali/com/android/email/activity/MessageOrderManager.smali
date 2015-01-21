.class public Lcom/android/email/activity/MessageOrderManager;
.super Ljava/lang/Object;
.source "MessageOrderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;,
        Lcom/android/email/activity/MessageOrderManager$PostingCallback;,
        Lcom/android/email/activity/MessageOrderManager$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

.field private mClosed:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMessageId:J

.field private mCurrentPosition:I

.field private mCursor:Landroid/database/Cursor;

.field private final mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;

.field private final mListContext:Lcom/android/email/MessageListContext;

.field private mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mTotalMessageCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/MessageListContext;Lcom/android/email/activity/MessageOrderManager$Callback;)V
    .locals 2
    .parameter "context"
    .parameter "listContext"
    .parameter "callback"

    .prologue
    .line 129
    new-instance v0, Lcom/android/emailcommon/utility/DelayedOperations;

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/DelayedOperations;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/email/activity/MessageOrderManager;-><init>(Landroid/content/Context;Lcom/android/email/MessageListContext;Lcom/android/email/activity/MessageOrderManager$Callback;Lcom/android/emailcommon/utility/DelayedOperations;)V

    .line 130
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/email/MessageListContext;Lcom/android/email/activity/MessageOrderManager$Callback;Lcom/android/emailcommon/utility/DelayedOperations;)V
    .locals 5
    .parameter "context"
    .parameter "listContext"
    .parameter "callback"
    .parameter "delayedOperations"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v3, -0x1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-wide v3, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    .line 76
    iput-boolean v0, p0, Lcom/android/email/activity/MessageOrderManager;->mClosed:Z

    .line 135
    invoke-virtual {p2}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContext:Landroid/content/Context;

    .line 137
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 138
    iput-object p4, p0, Lcom/android/email/activity/MessageOrderManager;->mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;

    .line 139
    iput-object p2, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    .line 140
    new-instance v0, Lcom/android/email/activity/MessageOrderManager$PostingCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, v1}, Lcom/android/email/activity/MessageOrderManager$PostingCallback;-><init>(Lcom/android/email/activity/MessageOrderManager;Lcom/android/email/activity/MessageOrderManager$Callback;Lcom/android/email/activity/MessageOrderManager$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    .line 141
    new-instance v0, Lcom/android/email/activity/MessageOrderManager$1;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->getHandlerForContentObserver()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageOrderManager$1;-><init>(Lcom/android/email/activity/MessageOrderManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mObserver:Landroid/database/ContentObserver;

    .line 149
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->startTask()V

    .line 150
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageOrderManager;)Lcom/android/emailcommon/utility/DelayedOperations;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageOrderManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/email/activity/MessageOrderManager;->mClosed:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageOrderManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->onContentChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageOrderManager;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->openNewCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private adjustCursorPosition()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 252
    iput v4, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    .line 253
    iget-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 263
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 264
    iget v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    goto :goto_1

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    iput v4, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    .line 268
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageOrderManager$Callback;->onMessageNotFound()V

    goto :goto_0

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageOrderManager$Callback;->onMessagesChanged()V

    goto :goto_0
.end method

.method private cancelTask()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    .line 205
    return-void
.end method

.method private closeCursor()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    .line 212
    :cond_0
    return-void
.end method

.method private isTaskRunning()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onContentChanged()V
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->isTaskRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->startTask()V

    .line 224
    :cond_0
    return-void
.end method

.method private openNewCursor()Landroid/database/Cursor;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 361
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v0

    const-wide/16 v2, -0x7

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->isLocalSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v9, p0, Lcom/android/email/activity/MessageOrderManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v11, v0

    const/4 v0, 0x1

    const-string v1, "fromList"

    aput-object v1, v11, v0

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    iget-wide v1, v1, Lcom/android/email/MessageListContext;->mAccountId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v3}, Lcom/android/email/MessageListContext;->getSearchedMailbox()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v5}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v5

    iget-object v5, v5, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v6}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v6

    iget-object v6, v6, Lcom/android/emailcommon/service/SearchParams;->mField:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->buildLocalSearchSelection(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "timeStamp DESC"

    move-object v0, v9

    move-object v1, v10

    move-object v2, v11

    move-object v4, v12

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 370
    .local v8, sourceCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/mediatek/email/emailvip/VipMemberCache;->filterVipMessages(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v7

    .line 392
    .end local v8           #sourceCursor:Landroid/database/Cursor;
    :goto_0
    return-object v7

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    iget-wide v1, v1, Lcom/android/email/MessageListContext;->mAccountId:J

    invoke-static {v0, v1, v2}, Lcom/mediatek/email/emailvip/VipMemberCache;->getVipMessagesIds(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0

    .line 376
    :cond_1
    const/4 v7, 0x0

    .line 377
    .local v7, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->isLocalSearch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    iget-object v9, p0, Lcom/android/email/activity/MessageOrderManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v11, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    iget-wide v1, v1, Lcom/android/email/MessageListContext;->mAccountId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v3}, Lcom/android/email/MessageListContext;->getSearchedMailbox()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v5}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v5

    iget-object v5, v5, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v6}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v6

    iget-object v6, v6, Lcom/android/emailcommon/service/SearchParams;->mField:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->buildLocalSearchSelection(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "timeStamp DESC"

    move-object v0, v9

    move-object v1, v10

    move-object v2, v11

    move-object v4, v12

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/activity/MessageOrderManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    iget-wide v4, v4, Lcom/android/email/MessageListContext;->mAccountId:J

    iget-object v6, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v6}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v9

    invoke-static {v3, v4, v5, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Message;->buildMessageListSelection(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    const-string v5, "timeStamp DESC"

    move-object v4, v12

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0
.end method

.method private setCurrentMessageIdFromCursor()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    .line 218
    :cond_0
    return-void
.end method

.method private startTask()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->cancelTask()V

    .line 190
    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->startQuery()V

    .line 191
    return-void
.end method


# virtual methods
.method public canMoveToNewer()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canMoveToOlder()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageOrderManager;->mClosed:Z

    .line 231
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/DelayedOperations;->removeCallbacks()V

    .line 232
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->cancelTask()V

    .line 233
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->closeCursor()V

    .line 234
    return-void
.end method

.method public getCurrentMessageId()J
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    return-wide v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    return v0
.end method

.method getHandlerForContentObserver()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 181
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public getListContext()Lcom/android/email/MessageListContext;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    return-object v0
.end method

.method public getMailboxId()J
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalMessageCount()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/email/activity/MessageOrderManager;->mTotalMessageCount:I

    return v0
.end method

.method public moveTo(J)V
    .locals 2
    .parameter "messageId"

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 246
    iput-wide p1, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    .line 247
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->adjustCursorPosition()V

    .line 249
    :cond_0
    return-void
.end method

.method public moveToNewer()Z
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->canMoveToNewer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    .line 315
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->setCurrentMessageIdFromCursor()V

    .line 316
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageOrderManager$Callback;->onMessagesChanged()V

    .line 317
    const/4 v0, 0x1

    .line 319
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToOlder()Z
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->canMoveToOlder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    .line 299
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->setCurrentMessageIdFromCursor()V

    .line 300
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageOrderManager$Callback;->onMessagesChanged()V

    .line 301
    const/4 v0, 0x1

    .line 303
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCursorOpenDone(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 402
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->closeCursor()V

    .line 403
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mTotalMessageCount:I

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    iput-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    .line 416
    :goto_0
    return-void

    .line 408
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    .line 409
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mTotalMessageCount:I

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCursorOpenDone update cursor with count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageOrderManager;->mTotalMessageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/email/activity/MessageOrderManager;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 412
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->adjustCursorPosition()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    iput-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    throw v0
.end method

.method startQuery()V
    .locals 2

    .prologue
    .line 198
    new-instance v0, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;-><init>(Lcom/android/email/activity/MessageOrderManager;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    .line 199
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 200
    return-void
.end method
