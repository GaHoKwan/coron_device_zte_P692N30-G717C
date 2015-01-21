.class public Lcom/android/email/MessagingController;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/MessagingController$LoadUnsyncMessageTask;,
        Lcom/android/email/MessagingController$SyncResults;,
        Lcom/android/email/MessagingController$Command;,
        Lcom/android/email/MessagingController$CancelableRunnable;,
        Lcom/android/email/MessagingController$SortableMessage;,
        Lcom/android/email/MessagingController$LocalMessageInfo;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_TAG:Ljava/lang/String; = "Attachment"

.field private static final CORE_POOL_SIZE:I = 0x28

.field private static final FLAG_LIST_ANSWERED:[Lcom/android/emailcommon/mail/Flag; = null

.field private static final FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag; = null

.field private static final FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag; = null

.field private static final HTMLTEXT_MIMETYPE:Ljava/lang/String; = "text/html"

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOCAL_SERVERID_PREFIX:Ljava/lang/String; = "Local-"

.field private static final MAILBOX_COLUMN_ID:I = 0x0

.field private static final MAILBOX_COLUMN_SERVER_ID:I = 0x1

.field private static final MAILBOX_COLUMN_TYPE:I = 0x2

.field private static final MAILBOX_PROJECTION:[Ljava/lang/String; = null

.field private static final MAXIMUM_POOL_SIZE:I = 0x28

.field private static final MAX_ACCOUNT_SYNC_THREADS:I = 0x8

.field private static final MAX_SMALL_MESSAGE_SIZE:I = 0x1400

.field private static final MESSAGE_SYNC_THREAD_POOL:Ljava/util/concurrent/ThreadPoolExecutor; = null

.field private static final PLAINTEXT_MIMETYPE:Ljava/lang/String; = "text/plain"

.field private static final POOL_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues; = null

.field private static final QUEUE_SIZE:I = 0x78

.field private static final THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static sInstance:Lcom/android/email/MessagingController;

.field private static final sSearchResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "[",
            "Lcom/android/email/MessagingController$SortableMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;

.field private mBusy:Z

.field public final mCancelledAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommands:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/email/MessagingController$Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/email/Controller;

.field private mDownloadingAttachmentId:J

.field private mLastSearchAccountKey:J

.field private mLastSearchRemoteMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field private mLastSearchServerId:Ljava/lang/String;

.field private final mListeners:Lcom/android/email/GroupMessagingListener;

.field private mMessagingException:Lcom/android/emailcommon/mail/MessagingException;

.field private mRunningCommand:Lcom/android/email/MessagingController$Command;

.field private mRunningSyncThreadCount:I

.field private mSendStatus:I

.field public mUnsyncedMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v1, 0x28

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 124
    new-array v0, v8, [Lcom/android/emailcommon/mail/Flag;

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v9

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

    .line 125
    new-array v0, v8, [Lcom/android/emailcommon/mail/Flag;

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v9

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

    .line 126
    new-array v0, v8, [Lcom/android/emailcommon/mail/Flag;

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v9

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_ANSWERED:[Lcom/android/emailcommon/mail/Flag;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/MessagingController;->sSearchResults:Ljava/util/HashMap;

    .line 148
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    .line 150
    sget-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    const-string v2, "contentUri"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    .line 196
    new-instance v0, Lcom/android/email/MessagingController$1;

    invoke-direct {v0}, Lcom/android/email/MessagingController$1;-><init>()V

    sput-object v0, Lcom/android/email/MessagingController;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    .line 204
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x78

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/android/email/MessagingController;->POOL_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    .line 210
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/android/email/MessagingController;->POOL_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/android/email/MessagingController;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/android/email/MessagingController;->MESSAGE_SYNC_THREAD_POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 214
    sget-object v0, Lcom/android/email/MessagingController;->MESSAGE_SYNC_THREAD_POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 310
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v9

    const-string v1, "serverId"

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/MessagingController;->MAILBOX_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/email/Controller;)V
    .locals 5
    .parameter "context"
    .parameter "controller"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mUnsyncedMessages:Ljava/util/ArrayList;

    .line 138
    iput v2, p0, Lcom/android/email/MessagingController;->mRunningSyncThreadCount:I

    .line 154
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    .line 158
    iput v2, p0, Lcom/android/email/MessagingController;->mSendStatus:I

    .line 164
    new-instance v0, Lcom/android/email/GroupMessagingListener;

    invoke-direct {v0}, Lcom/android/email/GroupMessagingListener;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    .line 173
    iput-wide v3, p0, Lcom/android/email/MessagingController;->mLastSearchAccountKey:J

    .line 174
    iput-object v1, p0, Lcom/android/email/MessagingController;->mLastSearchServerId:Ljava/lang/String;

    .line 175
    iput-object v1, p0, Lcom/android/email/MessagingController;->mLastSearchRemoteMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    .line 183
    iput-object v1, p0, Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;

    .line 186
    iput-wide v3, p0, Lcom/android/email/MessagingController;->mDownloadingAttachmentId:J

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    .line 223
    iput-object p2, p0, Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;

    .line 225
    sget-object v0, Lcom/android/email/MessagingController;->MESSAGE_SYNC_THREAD_POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/MessagingController;)Lcom/android/emailcommon/mail/Folder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/email/MessagingController;Lcom/android/emailcommon/mail/Folder;)Lcom/android/emailcommon/mail/Folder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/email/MessagingController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/android/email/MessagingController;->mDownloadingAttachmentId:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/email/MessagingController;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/email/MessagingController;Lcom/android/emailcommon/mail/MessagingException;)Lcom/android/emailcommon/mail/MessagingException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/email/MessagingController;->mMessagingException:Lcom/android/emailcommon/mail/MessagingException;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/email/MessagingController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/android/email/MessagingController;->mRunningSyncThreadCount:I

    return v0
.end method

.method static synthetic access$1510(Lcom/android/email/MessagingController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/android/email/MessagingController;->mRunningSyncThreadCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/email/MessagingController;->mRunningSyncThreadCount:I

    return v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/email/MessagingController;->MAILBOX_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/MessagingController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/android/email/MessagingController;->mSendStatus:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/Account;)V

    return-void
.end method

.method private getAccountSentMaiboxIds(Lcom/android/emailcommon/provider/Account;)J
    .locals 4
    .parameter "account"

    .prologue
    .line 2770
    if-eqz p1, :cond_0

    .line 2771
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 2774
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private getAccountSentMessageIds(Lcom/android/emailcommon/provider/Account;)[J
    .locals 2
    .parameter "account"

    .prologue
    .line 2759
    if-eqz p1, :cond_0

    .line 2760
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/MessagingController;->getSentMessageIds(J)[J

    move-result-object v0

    .line 2762
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/email/Controller;)Lcom/android/email/MessagingController;
    .locals 2
    .parameter "context"
    .parameter "controller"

    .prologue
    .line 234
    const-class v1, Lcom/android/email/MessagingController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lcom/android/email/MessagingController;

    invoke-direct {v0, p0, p1}, Lcom/android/email/MessagingController;-><init>(Landroid/content/Context;Lcom/android/email/Controller;)V

    sput-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    .line 237
    :cond_0
    sget-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRemoteMailboxForMessage(Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 13
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 1495
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1496
    iget-wide v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 1497
    .local v6, accountKey:J
    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    .line 1498
    .local v10, protocolSearchInfo:Ljava/lang/String;
    iget-wide v0, p0, Lcom/android/email/MessagingController;->mLastSearchAccountKey:J

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/MessagingController;->mLastSearchServerId:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1500
    iget-object v9, p0, Lcom/android/email/MessagingController;->mLastSearchRemoteMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 1521
    .end local v6           #accountKey:J
    .end local v10           #protocolSearchInfo:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 1502
    .restart local v6       #accountKey:J
    .restart local v10       #protocolSearchInfo:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "serverId=? and accountKey=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v4, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1507
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1508
    new-instance v9, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 1509
    .local v9, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual {v9, v8}, Lcom/android/emailcommon/provider/Mailbox;->restore(Landroid/database/Cursor;)V

    .line 1510
    iput-wide v6, p0, Lcom/android/email/MessagingController;->mLastSearchAccountKey:J

    .line 1511
    iput-object v10, p0, Lcom/android/email/MessagingController;->mLastSearchServerId:Ljava/lang/String;

    .line 1512
    iput-object v9, p0, Lcom/android/email/MessagingController;->mLastSearchRemoteMailbox:Lcom/android/emailcommon/provider/Mailbox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1518
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v9, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1521
    .end local v6           #accountKey:J
    .end local v8           #c:Landroid/database/Cursor;
    .end local v10           #protocolSearchInfo:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v9

    goto :goto_0
.end method

.method private getSentMessageIds(J)[J
    .locals 19
    .parameter "accountId"

    .prologue
    .line 2946
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v4, 0x4

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1, v4}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v16

    .line 2947
    .local v16, outboxId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v16, v3

    if-nez v3, :cond_1

    .line 2948
    const/4 v14, 0x0

    .line 2987
    :cond_0
    :goto_0
    return-object v14

    .line 2950
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2951
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v5, "mailboxKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2956
    .local v8, c:Landroid/database/Cursor;
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 2959
    .local v15, messageSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-gtz v3, :cond_3

    .line 2960
    :cond_2
    const/4 v14, 0x0

    .line 2976
    if-eqz v8, :cond_0

    .line 2977
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2963
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2964
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2965
    .local v12, messageId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3, v12, v13}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2966
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 2967
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t send #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; unloaded attachments"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2976
    .end local v12           #messageId:J
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_4

    .line 2977
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3

    .line 2972
    .restart local v12       #messageId:J
    :cond_5
    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2976
    .end local v12           #messageId:J
    :cond_6
    if-eqz v8, :cond_7

    .line 2977
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2981
    :cond_7
    invoke-virtual {v15}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v14, v3, [J

    .line 2982
    .local v14, messageIds:[J
    const/4 v9, 0x0

    .line 2983
    .local v9, i:I
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 2984
    .local v12, messageId:Ljava/lang/Long;
    add-int/lit8 v10, v9, 0x1

    .end local v9           #i:I
    .local v10, i:I
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v14, v9

    move v9, v10

    .end local v10           #i:I
    .restart local v9       #i:I
    goto :goto_2
.end method

.method private imapPartialFetchMessage(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;)Z
    .locals 16
    .parameter "message"
    .parameter "remoteFolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 584
    new-instance v2, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v2}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 585
    .local v2, fp:Lcom/android/emailcommon/mail/FetchProfile;
    const/4 v6, 0x0

    .line 591
    .local v6, isPartialDownload:Z
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v12, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v1, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v12, v1}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 597
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v9, plainTexts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .local v3, htmlTexts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    const/4 v10, 0x0

    .line 600
    .local v10, plainTextsSize:I
    const/4 v4, 0x0

    .line 601
    .local v4, htmlTextsSize:I
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/emailcommon/mail/Part;

    .line 602
    .local v7, part:Lcom/android/emailcommon/mail/Part;
    const-string v13, "text/plain"

    invoke-interface {v7}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 603
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-interface {v7}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v13

    add-int/2addr v10, v13

    .line 606
    :cond_1
    const-string v13, "text/html"

    invoke-interface {v7}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 607
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    invoke-interface {v7}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v13

    add-int/2addr v4, v13

    goto :goto_0

    .line 612
    .end local v7           #part:Lcom/android/emailcommon/mail/Part;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    .line 613
    const/16 v13, 0x1400

    if-gt v4, v13, :cond_3

    .line 614
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/emailcommon/mail/Part;

    .line 615
    .restart local v7       #part:Lcom/android/emailcommon/mail/Part;
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 616
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/android/emailcommon/mail/Message;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2, v14}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_1

    .line 620
    .end local v7           #part:Lcom/android/emailcommon/mail/Part;
    :cond_3
    const/4 v11, 0x0

    .line 621
    .local v11, totalSize:I
    const/4 v8, 0x0

    .line 622
    .local v8, partSize:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/emailcommon/mail/Part;

    .line 623
    .restart local v7       #part:Lcom/android/emailcommon/mail/Part;
    const/4 v8, 0x0

    .line 624
    invoke-interface {v7}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v8

    .line 625
    add-int/2addr v11, v8

    .line 626
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 627
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    const/16 v13, 0x1400

    if-gt v11, v13, :cond_4

    .line 629
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/android/emailcommon/mail/Message;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2, v14}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_2

    .line 631
    :cond_4
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/android/emailcommon/mail/Message;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x0

    rsub-int v15, v11, 0x1400

    add-int/2addr v15, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2, v14, v15}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V

    .line 636
    .end local v7           #part:Lcom/android/emailcommon/mail/Part;
    :cond_5
    const/4 v6, 0x1

    .line 665
    .end local v8           #partSize:I
    .end local v11           #totalSize:I
    :cond_6
    :goto_3
    return v6

    .line 639
    :cond_7
    const/16 v13, 0x1400

    if-gt v10, v13, :cond_8

    .line 640
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/emailcommon/mail/Part;

    .line 641
    .restart local v7       #part:Lcom/android/emailcommon/mail/Part;
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 642
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/android/emailcommon/mail/Message;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2, v14}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_4

    .line 646
    .end local v7           #part:Lcom/android/emailcommon/mail/Part;
    :cond_8
    const/4 v11, 0x0

    .line 647
    .restart local v11       #totalSize:I
    const/4 v8, 0x0

    .line 648
    .restart local v8       #partSize:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/emailcommon/mail/Part;

    .line 649
    .restart local v7       #part:Lcom/android/emailcommon/mail/Part;
    const/4 v8, 0x0

    .line 650
    invoke-interface {v7}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v8

    .line 651
    add-int/2addr v11, v8

    .line 652
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 653
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    const/16 v13, 0x1400

    if-gt v11, v13, :cond_9

    .line 655
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/android/emailcommon/mail/Message;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2, v14}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_5

    .line 657
    :cond_9
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/android/emailcommon/mail/Message;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x0

    rsub-int v15, v11, 0x1400

    add-int/2addr v15, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2, v14, v15}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V

    .line 662
    .end local v7           #part:Lcom/android/emailcommon/mail/Part;
    :cond_a
    const/4 v6, 0x1

    goto :goto_3
.end method

.method public static injectMockController(Lcom/android/email/MessagingController;)V
    .locals 0
    .parameter "mockController"

    .prologue
    .line 244
    sput-object p0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    .line 245
    return-void
.end method

.method private isActiveListener(Lcom/android/email/MessagingListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->isActiveListener(Lcom/android/email/MessagingListener;)Z

    move-result v0

    return v0
.end method

.method private processPendingActionsSynchronous(Lcom/android/emailcommon/provider/Account;)V
    .locals 5
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1472
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1473
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1474
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1477
    .local v0, accountIdArgs:[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/MessagingController;->processPendingDeletesSynchronous(Lcom/android/emailcommon/provider/Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 1480
    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/MessagingController;->processPendingUploadsSynchronous(Lcom/android/emailcommon/provider/Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 1483
    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/MessagingController;->processPendingUpdatesSynchronous(Lcom/android/emailcommon/provider/Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 1484
    return-void
.end method

.method private processPendingAppend(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z
    .locals 25
    .parameter "remoteStore"
    .parameter "account"
    .parameter "newMailbox"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2110
    const/16 v19, 0x0

    .line 2111
    .local v19, updateInternalDate:Z
    const/16 v20, 0x0

    .line 2112
    .local v20, updateMessage:Z
    const/4 v5, 0x0

    .line 2115
    .local v5, deleteMessage:Z
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v14

    .line 2116
    .local v14, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-virtual {v14}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v22

    if-nez v22, :cond_3

    .line 2117
    sget-object v22, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/emailcommon/mail/Folder;->canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 2120
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_1

    .line 2121
    :cond_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Local-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 2122
    sget-object v22, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v23, v0

    invoke-static/range {v22 .. v24}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 2124
    .local v21, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2125
    .local v4, cv:Landroid/content/ContentValues;
    const-string v22, "syncServerId"

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2128
    .end local v4           #cv:Landroid/content/ContentValues;
    .end local v21           #uri:Landroid/net/Uri;
    :cond_1
    const/16 v22, 0x1

    .line 2244
    :goto_0
    return v22

    .line 2130
    :cond_2
    sget-object v22, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 2132
    const/16 v22, 0x0

    goto :goto_0

    .line 2135
    :cond_3
    sget-object v22, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 2136
    invoke-virtual {v14}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v22

    sget-object v23, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 2137
    const/16 v22, 0x0

    goto :goto_0

    .line 2141
    :cond_4
    const/4 v15, 0x0

    .line 2142
    .local v15, remoteMessage:Lcom/android/emailcommon/mail/Message;
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_9

    .line 2145
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v15

    .line 2158
    :cond_5
    :goto_1
    if-nez v15, :cond_a

    .line 2160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;

    move-result-object v10

    .line 2163
    .local v10, localMessage:Lcom/android/emailcommon/mail/Message;
    new-instance v6, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v6}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 2164
    .local v6, fp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v22, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2165
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/emailcommon/mail/Folder;->appendMessages([Lcom/android/emailcommon/mail/Message;)V

    .line 2168
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 2169
    const/16 v19, 0x1

    .line 2170
    const/16 v20, 0x1

    .line 2207
    .end local v10           #localMessage:Lcom/android/emailcommon/mail/Message;
    :goto_2
    if-eqz v19, :cond_d

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 2209
    :try_start_0
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v16

    .line 2210
    .local v16, remoteMessage2:Lcom/android/emailcommon/mail/Message;
    if-eqz v16, :cond_6

    .line 2211
    new-instance v7, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v7}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 2212
    .local v7, fp2:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v22, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2213
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v16, v22, v23

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v7, v1}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 2214
    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v8

    .line 2215
    .local v8, internalDate:Ljava/util/Date;
    if-eqz v8, :cond_c

    .line 2216
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p4

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2217
    const/16 v20, 0x1

    .line 2231
    .end local v7           #fp2:Lcom/android/emailcommon/mail/FetchProfile;
    .end local v8           #internalDate:Ljava/util/Date;
    .end local v16           #remoteMessage2:Lcom/android/emailcommon/mail/Message;
    :cond_6
    :goto_3
    if-nez v5, :cond_7

    if-eqz v20, :cond_8

    .line 2232
    :cond_7
    sget-object v22, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v23, v0

    invoke-static/range {v22 .. v24}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 2233
    .restart local v21       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 2234
    .local v17, resolver:Landroid/content/ContentResolver;
    if-eqz v5, :cond_e

    .line 2235
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2244
    .end local v17           #resolver:Landroid/content/ContentResolver;
    .end local v21           #uri:Landroid/net/Uri;
    :cond_8
    :goto_4
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2146
    .end local v6           #fp:Lcom/android/emailcommon/mail/FetchProfile;
    :cond_9
    instance-of v0, v14, Lcom/android/email/mail/store/ImapFolder;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 2149
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "HEADER Message-Id \""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .local v18, searchString:Ljava/lang/String;
    move-object/from16 v22, v14

    .line 2150
    check-cast v22, Lcom/android/email/mail/store/ImapFolder;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 2151
    .local v12, newIdArray:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 2152
    const/16 v22, 0x0

    aget-object v22, v12, v22

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 2153
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v15

    goto/16 :goto_1

    .line 2173
    .end local v12           #newIdArray:[Ljava/lang/String;
    .end local v18           #searchString:Ljava/lang/String;
    :cond_a
    new-instance v6, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v6}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 2174
    .restart local v6       #fp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v22, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2175
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v15, v22, v23

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v6, v1}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 2176
    new-instance v9, Ljava/util/Date;

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 2177
    .local v9, localDate:Ljava/util/Date;
    invoke-virtual {v15}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v13

    .line 2178
    .local v13, remoteDate:Ljava/util/Date;
    if-eqz v13, :cond_b

    invoke-virtual {v13, v9}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v22

    if-lez v22, :cond_b

    .line 2181
    const-string v22, "processPendingAppend remote message is newer than ours"

    invoke-static/range {v22 .. v22}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 2182
    const/16 v19, 0x1

    .line 2183
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 2188
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;

    move-result-object v10

    .line 2191
    .restart local v10       #localMessage:Lcom/android/emailcommon/mail/Message;
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2192
    new-instance v6, Lcom/android/emailcommon/mail/FetchProfile;

    .end local v6           #fp:Lcom/android/emailcommon/mail/FetchProfile;
    invoke-direct {v6}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 2193
    .restart local v6       #fp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v22, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2194
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/emailcommon/mail/Folder;->appendMessages([Lcom/android/emailcommon/mail/Message;)V

    .line 2197
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 2198
    const/16 v19, 0x1

    .line 2199
    const/16 v20, 0x1

    .line 2202
    sget-object v22, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    goto/16 :goto_2

    .line 2219
    .end local v9           #localDate:Ljava/util/Date;
    .end local v10           #localMessage:Lcom/android/emailcommon/mail/Message;
    .end local v13           #remoteDate:Ljava/util/Date;
    .restart local v7       #fp2:Lcom/android/emailcommon/mail/FetchProfile;
    .restart local v8       #internalDate:Ljava/util/Date;
    .restart local v16       #remoteMessage2:Lcom/android/emailcommon/mail/Message;
    :cond_c
    :try_start_1
    const-string v22, "update message internalDate failed."

    invoke-static/range {v22 .. v22}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 2222
    .end local v7           #fp2:Lcom/android/emailcommon/mail/FetchProfile;
    .end local v8           #internalDate:Ljava/util/Date;
    .end local v16           #remoteMessage2:Lcom/android/emailcommon/mail/Message;
    :catch_0
    move-exception v11

    .line 2224
    .local v11, me:Lcom/android/emailcommon/mail/MessagingException;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MessagingException catched: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2226
    .end local v11           #me:Lcom/android/emailcommon/mail/MessagingException;
    :cond_d
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_6

    .line 2227
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 2236
    .restart local v17       #resolver:Landroid/content/ContentResolver;
    .restart local v21       #uri:Landroid/net/Uri;
    :cond_e
    if-eqz v20, :cond_8

    .line 2237
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2238
    .restart local v4       #cv:Landroid/content/ContentValues;
    const-string v22, "syncServerId"

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    const-string v22, "syncServerTimeStamp"

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2240
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private processPendingDataChange(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Mailbox;ZZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 10
    .parameter "remoteStore"
    .parameter "mailbox"
    .parameter "changeRead"
    .parameter "changeFlagged"
    .parameter "changeMailbox"
    .parameter "changeAnswered"
    .parameter "oldMessage"
    .parameter "newMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1848
    instance-of v6, p1, Lcom/android/email/mail/store/Pop3Store;

    if-eqz v6, :cond_1

    .line 1931
    :cond_0
    :goto_0
    return-void

    .line 1854
    :cond_1
    move-object v2, p2

    .line 1856
    .local v2, newMailbox:Lcom/android/emailcommon/provider/Mailbox;
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/email/MessagingController;->getRemoteMailboxForMessage(Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object p2

    .line 1859
    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v6, :cond_0

    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v7, "Local-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p2, :cond_0

    .line 1865
    iget v6, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    iget v6, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    .line 1870
    iget-object v6, p2, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    .line 1871
    .local v3, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1874
    sget-object v6, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v3, v6}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1875
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-ne v6, v7, :cond_0

    .line 1880
    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v4

    .line 1881
    .local v4, remoteMessage:Lcom/android/emailcommon/mail/Message;
    if-eqz v4, :cond_0

    .line 1884
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 1885
    const-string v7, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update for msg id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " read="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    iget-boolean v8, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " flagged="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    iget-boolean v8, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " answered="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p8

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v9, 0x4

    and-int/2addr v6, v9

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " new mailbox="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :cond_2
    const/4 v6, 0x1

    new-array v1, v6, [Lcom/android/emailcommon/mail/Message;

    const/4 v6, 0x0

    aput-object v4, v1, v6

    .line 1894
    .local v1, messages:[Lcom/android/emailcommon/mail/Message;
    if-eqz p3, :cond_3

    .line 1895
    sget-object v6, Lcom/android/email/MessagingController;->FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p8

    iget-boolean v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v3, v1, v6, v7}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1897
    :cond_3
    if-eqz p4, :cond_4

    .line 1898
    sget-object v6, Lcom/android/email/MessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p8

    iget-boolean v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v3, v1, v6, v7}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1900
    :cond_4
    if-eqz p6, :cond_5

    .line 1901
    sget-object v7, Lcom/android/email/MessagingController;->FLAG_LIST_ANSWERED:[Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p8

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v8, 0x4

    and-int/2addr v6, v8

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v3, v1, v7, v6}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1904
    :cond_5
    if-eqz p5, :cond_6

    .line 1905
    iget-object v6, v2, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v5

    .line 1906
    .local v5, toFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1910
    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/android/emailcommon/mail/Message;->setMessageId(Ljava/lang/String;)V

    .line 1912
    new-instance v6, Lcom/android/email/MessagingController$9;

    move-object/from16 v0, p8

    invoke-direct {v6, p0, v0}, Lcom/android/email/MessagingController$9;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    invoke-virtual {v3, v1, v5, v6}, Lcom/android/emailcommon/mail/Folder;->copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V

    .line 1927
    sget-object v6, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1928
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 1930
    .end local v5           #toFolder:Lcom/android/emailcommon/mail/Folder;
    :cond_6
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 1885
    .end local v1           #messages:[Lcom/android/emailcommon/mail/Message;
    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    .line 1901
    .restart local v1       #messages:[Lcom/android/emailcommon/mail/Message;
    :cond_8
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private processPendingDeleteFromTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 5
    .parameter "remoteStore"
    .parameter "account"
    .parameter "oldMailbox"
    .parameter "oldMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2066
    iget v2, p3, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 2093
    :cond_0
    :goto_0
    return-void

    .line 2071
    :cond_1
    iget-object v2, p3, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    .line 2072
    .local v1, remoteTrashFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2076
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 2077
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v2, v3, :cond_2

    .line 2078
    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 2083
    :cond_2
    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    .line 2084
    .local v0, remoteMessage:Lcom/android/emailcommon/mail/Message;
    if-nez v0, :cond_3

    .line 2085
    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 2090
    :cond_3
    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 2091
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 2092
    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0
.end method

.method private processPendingDeletesSynchronous(Lcom/android/emailcommon/provider/Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 17
    .parameter "account"
    .parameter "resolver"
    .parameter "accountIdArgs"

    .prologue
    .line 1535
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v5, "accountKey=?"

    const-string v7, "mailboxKey"

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1539
    .local v9, deletes:Landroid/database/Cursor;
    const-wide/16 v10, -0x1

    .line 1542
    .local v10, lastMessageId:J
    const/4 v15, 0x0

    .line 1544
    .local v15, remoteStore:Lcom/android/email/mail/Store;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1545
    const/4 v8, 0x0

    .line 1547
    .local v8, deleteFromTrash:Z
    const-class v2, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v9, v2}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v14

    check-cast v14, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1550
    .local v14, oldMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v14, :cond_0

    .line 1551
    iget-wide v10, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 1553
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/email/MessagingController;->getRemoteMailboxForMessage(Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v12

    .line 1554
    .local v12, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v12, :cond_0

    .line 1557
    iget v2, v12, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    const/4 v8, 0x1

    .line 1560
    :goto_1
    if-nez v15, :cond_1

    if-eqz v8, :cond_1

    .line 1561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v15

    .line 1565
    :cond_1
    if-eqz v8, :cond_2

    .line 1567
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v15, v1, v12, v14}, Lcom/android/email/MessagingController;->processPendingDeleteFromTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 1571
    :cond_2
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 1573
    .local v16, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1576
    .end local v8           #deleteFromTrash:Z
    .end local v12           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v14           #oldMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v16           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v13

    .line 1579
    .local v13, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_1
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1580
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to process pending delete for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1584
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1586
    .end local v13           #me:Lcom/android/emailcommon/mail/MessagingException;
    :goto_2
    return-void

    .line 1557
    .restart local v8       #deleteFromTrash:Z
    .restart local v12       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v14       #oldMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 1584
    .end local v8           #deleteFromTrash:Z
    .end local v12           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v14           #oldMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private processPendingMoveToTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 9
    .parameter "remoteStore"
    .parameter "account"
    .parameter "newMailbox"
    .parameter "oldMessage"
    .parameter "newMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1947
    iget-object v5, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v6, "Local-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2051
    :cond_0
    :goto_0
    return-void

    .line 1954
    :cond_1
    invoke-direct {p0, p4}, Lcom/android/email/MessagingController;->getRemoteMailboxForMessage(Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 1955
    .local v0, oldMailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_0

    .line 1960
    iget v5, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_0

    .line 1970
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/Account;->getDeletePolicy()I

    move-result v5

    if-nez v5, :cond_2

    .line 1971
    new-instance v4, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v4}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 1972
    .local v4, sentinel:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-wide v5, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 1973
    iget-wide v5, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iput-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 1974
    const/4 v5, 0x3

    iput v5, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1975
    iput-boolean v8, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 1976
    iget-object v5, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 1977
    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0

    .line 1985
    .end local v4           #sentinel:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2
    iget-object v5, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    .line 1986
    .local v1, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1990
    sget-object v5, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1991
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v5, v6, :cond_3

    .line 1992
    invoke-virtual {v1, v7}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 1997
    :cond_3
    iget-object v5, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    .line 1998
    .local v2, remoteMessage:Lcom/android/emailcommon/mail/Message;
    if-nez v2, :cond_4

    .line 1999
    invoke-virtual {v1, v7}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 2004
    :cond_4
    iget-object v5, p3, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    .line 2005
    .local v3, remoteTrashFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2009
    sget-object v5, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v3, v5}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    .line 2014
    :cond_5
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2018
    sget-object v5, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v3, v5}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 2019
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v5, v6, :cond_6

    .line 2020
    invoke-virtual {v1, v7}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 2021
    invoke-virtual {v3, v7}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 2025
    :cond_6
    new-array v5, v8, [Lcom/android/emailcommon/mail/Message;

    aput-object v2, v5, v7

    new-instance v6, Lcom/android/email/MessagingController$10;

    invoke-direct {v6, p0, p5}, Lcom/android/email/MessagingController$10;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    invoke-virtual {v1, v5, v3, v6}, Lcom/android/emailcommon/mail/Folder;->copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V

    .line 2044
    invoke-virtual {v3, v7}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 2048
    :cond_7
    sget-object v5, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v2, v5, v8}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 2049
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 2050
    invoke-virtual {v1, v7}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0
.end method

.method private processPendingUpdatesSynchronous(Lcom/android/emailcommon/provider/Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 23
    .parameter "account"
    .parameter "resolver"
    .parameter "accountIdArgs"

    .prologue
    .line 1705
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v5, "accountKey=?"

    const-string v7, "mailboxKey"

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1709
    .local v21, updates:Landroid/database/Cursor;
    const-wide/16 v18, -0x1

    .line 1712
    .local v18, lastMessageId:J
    const/4 v3, 0x0

    .line 1714
    .local v3, remoteStore:Lcom/android/email/mail/Store;
    const/4 v5, 0x0

    .line 1716
    .local v5, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1717
    const/16 v17, 0x0

    .line 1718
    .local v17, changeMoveToTrash:Z
    const/4 v11, 0x0

    .line 1719
    .local v11, changeRead:Z
    const/4 v12, 0x0

    .line 1720
    .local v12, changeFlagged:Z
    const/4 v13, 0x0

    .line 1721
    .local v13, changeMailbox:Z
    const/4 v14, 0x0

    .line 1723
    .local v14, changeAnswered:Z
    const-class v2, Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v6

    check-cast v6, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1725
    .local v6, oldMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v18, v0

    .line 1726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v8, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    .line 1728
    .local v7, newMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v7, :cond_2

    .line 1729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v8, v9}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v5

    .line 1730
    if-eqz v5, :cond_0

    .line 1733
    iget-wide v8, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v15, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v2, v8, v15

    if-eqz v2, :cond_1

    .line 1734
    iget v2, v5, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_7

    .line 1735
    const/16 v17, 0x1

    .line 1740
    :cond_1
    :goto_1
    iget-boolean v2, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    iget-boolean v4, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v2, v4, :cond_8

    const/4 v11, 0x1

    .line 1741
    :goto_2
    iget-boolean v2, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    iget-boolean v4, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-eq v2, v4, :cond_9

    const/4 v12, 0x1

    .line 1742
    :goto_3
    iget v2, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v4, 0x4

    and-int/2addr v2, v4

    iget v4, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v8, 0x4

    and-int/2addr v4, v8

    if-eq v2, v4, :cond_a

    const/4 v14, 0x1

    .line 1747
    :cond_2
    :goto_4
    if-nez v3, :cond_4

    if-nez v17, :cond_3

    if-nez v11, :cond_3

    if-nez v12, :cond_3

    if-nez v13, :cond_3

    if-eqz v14, :cond_4

    .line 1750
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v3

    .line 1754
    :cond_4
    if-eqz v17, :cond_b

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    .line 1756
    invoke-direct/range {v2 .. v7}, Lcom/android/email/MessagingController;->processPendingMoveToTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 1764
    :cond_5
    :goto_5
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 1766
    .local v22, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1769
    .end local v6           #oldMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v7           #newMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v11           #changeRead:Z
    .end local v12           #changeFlagged:Z
    .end local v13           #changeMailbox:Z
    .end local v14           #changeAnswered:Z
    .end local v17           #changeMoveToTrash:Z
    .end local v22           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v20

    .line 1772
    .local v20, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_1
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 1773
    const-string v2, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to process pending update for id="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ": "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1777
    :cond_6
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1779
    .end local v20           #me:Lcom/android/emailcommon/mail/MessagingException;
    :goto_6
    return-void

    .line 1737
    .restart local v6       #oldMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v7       #newMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v11       #changeRead:Z
    .restart local v12       #changeFlagged:Z
    .restart local v13       #changeMailbox:Z
    .restart local v14       #changeAnswered:Z
    .restart local v17       #changeMoveToTrash:Z
    :cond_7
    const/4 v13, 0x1

    goto :goto_1

    .line 1740
    :cond_8
    const/4 v11, 0x0

    goto :goto_2

    .line 1741
    :cond_9
    const/4 v12, 0x0

    goto :goto_3

    .line 1742
    :cond_a
    const/4 v14, 0x0

    goto :goto_4

    .line 1758
    :cond_b
    if-nez v11, :cond_c

    if-nez v12, :cond_c

    if-nez v13, :cond_c

    if-eqz v14, :cond_5

    :cond_c
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v5

    move-object v15, v6

    move-object/from16 v16, v7

    .line 1759
    :try_start_2
    invoke-direct/range {v8 .. v16}, Lcom/android/email/MessagingController;->processPendingDataChange(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Mailbox;ZZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 1777
    .end local v6           #oldMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v7           #newMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v11           #changeRead:Z
    .end local v12           #changeFlagged:Z
    .end local v13           #changeMailbox:Z
    .end local v14           #changeAnswered:Z
    .end local v17           #changeMoveToTrash:Z
    :catchall_0
    move-exception v2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_d
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto :goto_6
.end method

.method private processPendingUploadsSynchronous(Lcom/android/emailcommon/provider/Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 22
    .parameter "account"
    .parameter "resolver"
    .parameter "accountIdArgs"

    .prologue
    .line 1606
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "accountKey=? and type=5"

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1610
    .local v18, mailboxes:Landroid/database/Cursor;
    const-wide/16 v14, -0x1

    .line 1613
    .local v14, lastMessageId:J
    const/4 v9, 0x0

    .line 1614
    .local v9, remoteStore:Lcom/android/email/mail/Store;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1615
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1616
    .local v16, mailboxId:J
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1618
    .local v6, mailboxKeyArgs:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 1621
    .local v11, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "mailboxKey=? and (syncServerId is null or syncServerId=\'\')"

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 1629
    .local v20, upsyncs1:Landroid/database/Cursor;
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1631
    if-nez v9, :cond_2

    .line 1632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v9

    .line 1635
    :cond_2
    if-nez v11, :cond_3

    .line 1636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v11

    .line 1637
    if-eqz v11, :cond_1

    .line 1642
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1643
    .local v12, id:J
    move-wide v14, v12

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v10, p1

    .line 1644
    invoke-direct/range {v7 .. v13}, Lcom/android/email/MessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1647
    .end local v12           #id:J
    :catchall_0
    move-exception v2

    if-eqz v20, :cond_4

    .line 1648
    :try_start_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1681
    .end local v6           #mailboxKeyArgs:[Ljava/lang/String;
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v16           #mailboxId:J
    .end local v20           #upsyncs1:Landroid/database/Cursor;
    :catch_0
    move-exception v19

    .line 1684
    .local v19, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_3
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 1685
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to process pending upsync for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1689
    :cond_5
    if-eqz v18, :cond_6

    .line 1690
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1693
    .end local v19           #me:Lcom/android/emailcommon/mail/MessagingException;
    :cond_6
    :goto_2
    return-void

    .line 1647
    .restart local v6       #mailboxKeyArgs:[Ljava/lang/String;
    .restart local v11       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v16       #mailboxId:J
    .restart local v20       #upsyncs1:Landroid/database/Cursor;
    :cond_7
    if-eqz v20, :cond_8

    .line 1648
    :try_start_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1653
    :cond_8
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "mailboxKey=?"

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v21

    .line 1658
    .local v21, upsyncs2:Landroid/database/Cursor;
    :cond_9
    :goto_3
    :try_start_5
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1660
    if-nez v9, :cond_a

    .line 1661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v9

    .line 1664
    :cond_a
    if-nez v11, :cond_b

    .line 1665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v11

    .line 1666
    if-eqz v11, :cond_9

    .line 1671
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1672
    .restart local v12       #id:J
    move-wide v14, v12

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v10, p1

    .line 1673
    invoke-direct/range {v7 .. v13}, Lcom/android/email/MessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 1676
    .end local v12           #id:J
    :catchall_1
    move-exception v2

    if-eqz v21, :cond_c

    .line 1677
    :try_start_6
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1689
    .end local v6           #mailboxKeyArgs:[Ljava/lang/String;
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v16           #mailboxId:J
    .end local v20           #upsyncs1:Landroid/database/Cursor;
    .end local v21           #upsyncs2:Landroid/database/Cursor;
    :catchall_2
    move-exception v2

    if-eqz v18, :cond_d

    .line 1690
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2

    .line 1676
    .restart local v6       #mailboxKeyArgs:[Ljava/lang/String;
    .restart local v11       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v16       #mailboxId:J
    .restart local v20       #upsyncs1:Landroid/database/Cursor;
    .restart local v21       #upsyncs2:Landroid/database/Cursor;
    :cond_e
    if-eqz v21, :cond_0

    .line 1677
    :try_start_7
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 1689
    .end local v6           #mailboxKeyArgs:[Ljava/lang/String;
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v16           #mailboxId:J
    .end local v20           #upsyncs1:Landroid/database/Cursor;
    .end local v21           #upsyncs2:Landroid/database/Cursor;
    :cond_f
    if-eqz v18, :cond_6

    .line 1690
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;J)V
    .locals 8
    .parameter "resolver"
    .parameter "remoteStore"
    .parameter "account"
    .parameter "mailbox"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1802
    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3, p5, p6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 1804
    .local v1, newMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    const/4 v0, 0x0

    .line 1805
    .local v0, deleteUpdate:Z
    if-nez v1, :cond_1

    .line 1806
    const/4 v0, 0x1

    .line 1807
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upsync failed for null message, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :goto_0
    if-eqz v0, :cond_0

    .line 1826
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1828
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p1, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1830
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    return-void

    .line 1808
    :cond_1
    iget v3, p4, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1809
    const/4 v0, 0x0

    .line 1810
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upsync skipped for mailbox=drafts, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1811
    :cond_2
    iget v3, p4, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 1812
    const/4 v0, 0x0

    .line 1813
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upsync skipped for mailbox=outbox, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1814
    :cond_3
    iget v3, p4, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 1815
    const/4 v0, 0x0

    .line 1816
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upsync skipped for mailbox=trash, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1817
    :cond_4
    if-eqz v1, :cond_5

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v5, p4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 1818
    const/4 v0, 0x0

    .line 1819
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upsync skipped; mailbox changed, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1821
    :cond_5
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upsyc triggered for message id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/android/email/MessagingController;->processPendingAppend(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "description"
    .parameter "listener"
    .parameter "runnable"

    .prologue
    .line 282
    :try_start_0
    new-instance v0, Lcom/android/email/MessagingController$Command;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/email/MessagingController$Command;-><init>(Lcom/android/email/MessagingController$1;)V

    .line 283
    .local v0, command:Lcom/android/email/MessagingController$Command;
    iput-object p2, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    .line 284
    iput-object p3, v0, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    .line 285
    iput-object p1, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    .line 286
    iget-object v2, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    return-void

    .line 288
    .end local v0           #command:Lcom/android/email/MessagingController$Command;
    :catch_0
    move-exception v1

    .line 289
    .local v1, ie:Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V
    .locals 1
    .parameter "content"
    .parameter "context"

    .prologue
    .line 569
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 574
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private searchMailboxImpl(JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 33
    .parameter "accountId"
    .parameter "searchParams"
    .parameter "destMailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 953
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v8

    .line 954
    .local v8, account:Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-wide v5, v0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v19

    .line 955
    .local v19, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p4

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v10

    .line 956
    .local v10, destMailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v8, :cond_0

    if-eqz v19, :cond_0

    if-nez v10, :cond_2

    .line 957
    :cond_0
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted search for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but account or mailbox information was missing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const/16 v23, 0x0

    .line 1070
    :cond_1
    :goto_0
    return v23

    .line 963
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v5, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 965
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v8, v4}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v28

    .line 966
    .local v28, remoteStore:Lcom/android/email/mail/Store;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v26

    .line 967
    .local v26, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 969
    const/4 v4, 0x0

    new-array v0, v4, [Lcom/android/email/MessagingController$SortableMessage;

    move-object/from16 v32, v0

    .line 970
    .local v32, sortableMessages:[Lcom/android/email/MessagingController$SortableMessage;
    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    if-nez v4, :cond_5

    .line 972
    const/4 v4, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/android/emailcommon/mail/Folder;->getMessages(Lcom/android/emailcommon/service/SearchParams;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v27

    .line 973
    .local v27, remoteMessages:[Lcom/android/emailcommon/mail/Message;
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v25, v0

    .line 974
    .local v25, remoteCount:I
    if-lez v25, :cond_4

    .line 975
    move/from16 v0, v25

    new-array v0, v0, [Lcom/android/email/MessagingController$SortableMessage;

    move-object/from16 v32, v0

    .line 976
    const/4 v14, 0x0

    .line 977
    .local v14, i:I
    move-object/from16 v9, v27

    .local v9, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v0, v9

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    move v15, v14

    .end local v14           #i:I
    .local v15, i:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v22, v9, v16

    .line 978
    .local v22, msg:Lcom/android/emailcommon/mail/Message;
    add-int/lit8 v14, v15, 0x1

    .end local v15           #i:I
    .restart local v14       #i:I
    new-instance v4, Lcom/android/email/MessagingController$SortableMessage;

    invoke-virtual/range {v22 .. v22}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object/from16 v0, v22

    invoke-direct {v4, v0, v5, v6}, Lcom/android/email/MessagingController$SortableMessage;-><init>(Lcom/android/emailcommon/mail/Message;J)V

    aput-object v4, v32, v15

    .line 977
    add-int/lit8 v16, v16, 0x1

    move v15, v14

    .end local v14           #i:I
    .restart local v15       #i:I
    goto :goto_1

    .line 983
    .end local v22           #msg:Lcom/android/emailcommon/mail/Message;
    :cond_3
    new-instance v4, Lcom/android/email/MessagingController$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/email/MessagingController$7;-><init>(Lcom/android/email/MessagingController;)V

    move-object/from16 v0, v32

    invoke-static {v0, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 989
    sget-object v4, Lcom/android/email/MessagingController;->sSearchResults:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    .end local v9           #arr$:[Lcom/android/emailcommon/mail/Message;
    .end local v15           #i:I
    .end local v16           #i$:I
    .end local v18           #len$:I
    .end local v25           #remoteCount:I
    .end local v27           #remoteMessages:[Lcom/android/emailcommon/mail/Message;
    :cond_4
    :goto_2
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v23, v0

    .line 996
    .local v23, numSearchResults:I
    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    sub-int v4, v23, v4

    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 998
    .local v24, numToLoad:I
    if-gtz v24, :cond_6

    .line 999
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 992
    .end local v23           #numSearchResults:I
    .end local v24           #numToLoad:I
    :cond_5
    sget-object v4, Lcom/android/email/MessagingController;->sSearchResults:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    .end local v32           #sortableMessages:[Lcom/android/email/MessagingController$SortableMessage;
    check-cast v32, [Lcom/android/email/MessagingController$SortableMessage;

    .restart local v32       #sortableMessages:[Lcom/android/email/MessagingController$SortableMessage;
    goto :goto_2

    .line 1002
    .restart local v23       #numSearchResults:I
    .restart local v24       #numToLoad:I
    :cond_6
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    .local v21, messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    move-object/from16 v0, p3

    iget v14, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .restart local v14       #i:I
    :goto_3
    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    add-int v4, v4, v24

    if-ge v14, v4, :cond_7

    .line 1004
    aget-object v4, v32, v14

    #getter for: Lcom/android/email/MessagingController$SortableMessage;->mMessage:Lcom/android/emailcommon/mail/Message;
    invoke-static {v4}, Lcom/android/email/MessagingController$SortableMessage;->access$700(Lcom/android/email/MessagingController$SortableMessage;)Lcom/android/emailcommon/mail/Message;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1008
    :cond_7
    new-instance v13, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v13}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1009
    .local v13, fp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v30, v0

    .line 1014
    .local v30, searchingMessages:[Lcom/android/emailcommon/mail/Message;
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1015
    const/4 v4, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v13, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1016
    move-object/from16 v9, v30

    .restart local v9       #arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v0, v9

    move/from16 v18, v0

    .restart local v18       #len$:I
    const/16 v16, 0x0

    .restart local v16       #i$:I
    :goto_4
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    aget-object v3, v9, v16

    .line 1018
    .local v3, message:Lcom/android/emailcommon/mail/Message;
    const/16 v17, 0x0

    .line 1019
    .local v17, isPartial:Z
    :try_start_0
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v4

    const/16 v5, 0x1400

    if-gt v4, v5, :cond_8

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v4

    if-nez v4, :cond_b

    .line 1020
    :cond_8
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v4

    if-nez v4, :cond_a

    .line 1023
    const-string v4, "Email"

    const-string v5, "POP doesn\'t support search mode."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :goto_5
    new-instance v2, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    .local v2, localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_start_1
    iget-wide v4, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static/range {v2 .. v7}, Lcom/android/email/LegacyConversions;->updateMessageFields(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJ)Z

    .line 1042
    move-wide/from16 v0, p4

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 1046
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    .line 1049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 1051
    const/4 v12, 0x1

    .line 1052
    .local v12, flag:I
    if-eqz v17, :cond_9

    .line 1053
    const/4 v12, 0x2

    .line 1055
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v12, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;ILandroid/content/Context;)V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1016
    .end local v12           #flag:I
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1025
    .end local v2           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v3, v1}, Lcom/android/email/MessagingController;->imapPartialFetchMessage(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;)Z

    move-result v17

    goto :goto_5

    .line 1028
    :cond_b
    new-instance v31, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct/range {v31 .. v31}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1029
    .local v31, smallfp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v1, v5}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 1060
    .end local v31           #smallfp:Lcom/android/emailcommon/mail/FetchProfile;
    :catch_0
    move-exception v11

    .line 1061
    .local v11, e:Ljava/lang/Exception;
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while downloaded searching messages."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    .line 1065
    .local v29, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mailboxKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1067
    const/16 v23, -0x1

    goto/16 :goto_0

    .line 1056
    .end local v11           #e:Ljava/lang/Exception;
    .end local v29           #resolver:Landroid/content/ContentResolver;
    .restart local v2       #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_1
    move-exception v20

    .line 1057
    .local v20, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_3
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while copying downloaded message."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6
.end method

.method private synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/email/MessagingController$SyncResults;
    .locals 58
    .parameter "account"
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1091
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1093
    .local v9, unseenMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v3, "Email"

    const-string v4, "*** synchronizeMailboxGeneric ***"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1097
    .local v2, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 1098
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/provider/EmailContent;->getUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v4, v5, v11}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v52

    .line 1099
    .local v52, totalMessages:I
    new-instance v3, Lcom/android/email/MessagingController$SyncResults;

    move/from16 v0, v52

    invoke-direct {v3, v0, v9}, Lcom/android/email/MessagingController$SyncResults;-><init>(ILjava/util/ArrayList;)V

    .line 1307
    .end local v52           #totalMessages:I
    :goto_0
    return-object v3

    .line 1104
    :cond_1
    const/16 v32, 0x0

    .line 1105
    .local v32, localUidCursor:Landroid/database/Cursor;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1108
    .local v8, localMessageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    :try_start_0
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/MessagingController$LocalMessageInfo;->access$800()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "accountKey=? AND mailboxKey=?"

    const/4 v11, 0x2

    new-array v6, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v11

    const/4 v11, 0x1

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v11

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 1118
    :goto_1
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1119
    new-instance v23, Lcom/android/email/MessagingController$LocalMessageInfo;

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/email/MessagingController$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    .line 1120
    .local v23, info:Lcom/android/email/MessagingController$LocalMessageInfo;
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v8, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1123
    .end local v23           #info:Lcom/android/email/MessagingController$LocalMessageInfo;
    :catchall_0
    move-exception v3

    if-eqz v32, :cond_2

    .line 1124
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3

    .line 1123
    :cond_3
    if-eqz v32, :cond_4

    .line 1124
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 1130
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v13

    .line 1132
    .local v13, remoteStore:Lcom/android/email/mail/Store;
    if-nez v13, :cond_5

    const/4 v3, 0x0

    goto :goto_0

    .line 1133
    :cond_5
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v13, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v6

    .line 1142
    .local v6, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_6

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_6

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 1144
    :cond_6
    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1145
    sget-object v3, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v6, v3}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1146
    new-instance v3, Lcom/android/email/MessagingController$SyncResults;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v9}, Lcom/android/email/MessagingController$SyncResults;-><init>(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1152
    :cond_7
    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v6, v3}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1158
    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Folder;->getMessageCount()I

    move-result v43

    .line 1161
    .local v43, remoteMessageCount:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mVisibleLimit:I

    move/from16 v57, v0

    .line 1162
    .local v57, visibleLimit:I
    if-gtz v57, :cond_8

    .line 1163
    const/16 v57, 0x19

    .line 1167
    :cond_8
    const/4 v3, 0x0

    new-array v0, v3, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v44, v0

    .line 1168
    .local v44, remoteMessages:[Lcom/android/emailcommon/mail/Message;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    .local v7, unsyncedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    new-instance v50, Ljava/util/HashMap;

    invoke-direct/range {v50 .. v50}, Ljava/util/HashMap;-><init>()V

    .line 1171
    .local v50, remoteUidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/mail/Message;>;"
    const/16 v37, 0x0

    .line 1172
    .local v37, newMessageCount:I
    if-lez v43, :cond_d

    .line 1176
    const/4 v3, 0x0

    sub-int v4, v43, v57

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v46, v3, 0x1

    .line 1177
    .local v46, remoteStart:I
    move/from16 v40, v43

    .line 1178
    .local v40, remoteEnd:I
    const/4 v3, 0x0

    move/from16 v0, v46

    move/from16 v1, v40

    invoke-virtual {v6, v0, v1, v3}, Lcom/android/emailcommon/mail/Folder;->getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v44

    .line 1180
    move-object/from16 v17, v44

    .local v17, arr$:[Lcom/android/emailcommon/mail/Message;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    .local v25, len$:I
    const/16 v22, 0x0

    .local v22, i$:I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    aget-object v34, v17, v22

    .line 1181
    .local v34, message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual/range {v34 .. v34}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 1192
    .end local v34           #message:Lcom/android/emailcommon/mail/Message;
    :cond_9
    move-object/from16 v0, v44

    array-length v3, v0

    add-int/lit8 v21, v3, -0x1

    .local v21, i:I
    :goto_3
    if-ltz v21, :cond_d

    .line 1193
    aget-object v3, v44, v21

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 1194
    .local v29, localMessage:Lcom/android/email/MessagingController$LocalMessageInfo;
    if-nez v29, :cond_a

    .line 1195
    add-int/lit8 v37, v37, 0x1

    .line 1203
    :cond_a
    if-eqz v29, :cond_b

    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    if-nez v3, :cond_c

    .line 1205
    :cond_b
    aget-object v3, v44, v21

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    :cond_c
    add-int/lit8 v21, v21, -0x1

    goto :goto_3

    .line 1215
    .end local v17           #arr$:[Lcom/android/emailcommon/mail/Message;
    .end local v21           #i:I
    .end local v22           #i$:I
    .end local v25           #len$:I
    .end local v29           #localMessage:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v40           #remoteEnd:I
    .end local v46           #remoteStart:I
    :cond_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 1216
    const/4 v10, 0x0

    .line 1217
    .local v10, isImapAccount:Z
    instance-of v3, v6, Lcom/android/email/mail/store/ImapFolder;

    if-eqz v3, :cond_e

    .line 1218
    const/4 v10, 0x1

    :cond_e
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 1220
    invoke-virtual/range {v3 .. v10}, Lcom/android/email/MessagingController;->downloadFlagAndEnvelope(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Z)V

    .line 1225
    .end local v10           #isImapAccount:Z
    :cond_f
    new-instance v20, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct/range {v20 .. v20}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1226
    .local v20, fp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    const/4 v3, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1, v3}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1228
    const/16 v49, 0x0

    .line 1229
    .local v49, remoteSupportsSeen:Z
    const/16 v48, 0x0

    .line 1230
    .local v48, remoteSupportsFlagged:Z
    const/16 v47, 0x0

    .line 1231
    .local v47, remoteSupportsAnswered:Z
    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Folder;->getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v17

    .local v17, arr$:[Lcom/android/emailcommon/mail/Flag;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v22, 0x0

    .restart local v22       #i$:I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_13

    aget-object v19, v17, v22

    .line 1232
    .local v19, flag:Lcom/android/emailcommon/mail/Flag;
    sget-object v3, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_10

    .line 1233
    const/16 v49, 0x1

    .line 1235
    :cond_10
    sget-object v3, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_11

    .line 1236
    const/16 v48, 0x1

    .line 1238
    :cond_11
    sget-object v3, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_12

    .line 1239
    const/16 v47, 0x1

    .line 1231
    :cond_12
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 1243
    .end local v19           #flag:Lcom/android/emailcommon/mail/Flag;
    :cond_13
    if-nez v49, :cond_14

    if-nez v48, :cond_14

    if-eqz v47, :cond_1d

    .line 1244
    :cond_14
    move-object/from16 v17, v44

    .local v17, arr$:[Lcom/android/emailcommon/mail/Message;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_1d

    aget-object v42, v17, v22

    .line 1245
    .local v42, remoteMessage:Lcom/android/emailcommon/mail/Message;
    invoke-virtual/range {v42 .. v42}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 1246
    .local v30, localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    if-nez v30, :cond_16

    .line 1244
    :cond_15
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 1249
    :cond_16
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagRead:Z

    move/from16 v31, v0

    .line 1250
    .local v31, localSeen:Z
    sget-object v3, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v45

    .line 1251
    .local v45, remoteSeen:Z
    if-eqz v49, :cond_18

    move/from16 v0, v45

    move/from16 v1, v31

    if-eq v0, v1, :cond_18

    const/16 v38, 0x1

    .line 1252
    .local v38, newSeen:Z
    :goto_7
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagFavorite:Z

    move/from16 v27, v0

    .line 1253
    .local v27, localFlagged:Z
    sget-object v3, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v41

    .line 1254
    .local v41, remoteFlagged:Z
    if-eqz v48, :cond_19

    move/from16 v0, v27

    move/from16 v1, v41

    if-eq v0, v1, :cond_19

    const/16 v36, 0x1

    .line 1255
    .local v36, newFlagged:Z
    :goto_8
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlags:I

    move/from16 v28, v0

    .line 1256
    .local v28, localFlags:I
    const/high16 v3, 0x4

    and-int v3, v3, v28

    if-eqz v3, :cond_1a

    const/16 v26, 0x1

    .line 1257
    .local v26, localAnswered:Z
    :goto_9
    sget-object v3, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v39

    .line 1258
    .local v39, remoteAnswered:Z
    if-eqz v47, :cond_1b

    move/from16 v0, v26

    move/from16 v1, v39

    if-eq v0, v1, :cond_1b

    const/16 v35, 0x1

    .line 1259
    .local v35, newAnswered:Z
    :goto_a
    if-nez v38, :cond_17

    if-nez v36, :cond_17

    if-eqz v35, :cond_15

    .line 1260
    :cond_17
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v30

    iget-wide v4, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v55

    .line 1262
    .local v55, uri:Landroid/net/Uri;
    new-instance v54, Landroid/content/ContentValues;

    invoke-direct/range {v54 .. v54}, Landroid/content/ContentValues;-><init>()V

    .line 1263
    .local v54, updateValues:Landroid/content/ContentValues;
    const-string v3, "flagRead"

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1264
    const-string v3, "flagFavorite"

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1265
    if-eqz v39, :cond_1c

    .line 1266
    const/high16 v3, 0x4

    or-int v28, v28, v3

    .line 1270
    :goto_b
    const-string v3, "flags"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1271
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v55

    move-object/from16 v1, v54

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1251
    .end local v26           #localAnswered:Z
    .end local v27           #localFlagged:Z
    .end local v28           #localFlags:I
    .end local v35           #newAnswered:Z
    .end local v36           #newFlagged:Z
    .end local v38           #newSeen:Z
    .end local v39           #remoteAnswered:Z
    .end local v41           #remoteFlagged:Z
    .end local v54           #updateValues:Landroid/content/ContentValues;
    .end local v55           #uri:Landroid/net/Uri;
    :cond_18
    const/16 v38, 0x0

    goto/16 :goto_7

    .line 1254
    .restart local v27       #localFlagged:Z
    .restart local v38       #newSeen:Z
    .restart local v41       #remoteFlagged:Z
    :cond_19
    const/16 v36, 0x0

    goto :goto_8

    .line 1256
    .restart local v28       #localFlags:I
    .restart local v36       #newFlagged:Z
    :cond_1a
    const/16 v26, 0x0

    goto :goto_9

    .line 1258
    .restart local v26       #localAnswered:Z
    .restart local v39       #remoteAnswered:Z
    :cond_1b
    const/16 v35, 0x0

    goto :goto_a

    .line 1268
    .restart local v35       #newAnswered:Z
    .restart local v54       #updateValues:Landroid/content/ContentValues;
    .restart local v55       #uri:Landroid/net/Uri;
    :cond_1c
    const v3, -0x40001

    and-int v28, v28, v3

    goto :goto_b

    .line 1277
    .end local v17           #arr$:[Lcom/android/emailcommon/mail/Message;
    .end local v26           #localAnswered:Z
    .end local v27           #localFlagged:Z
    .end local v28           #localFlags:I
    .end local v30           #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v31           #localSeen:Z
    .end local v35           #newAnswered:Z
    .end local v36           #newFlagged:Z
    .end local v38           #newSeen:Z
    .end local v39           #remoteAnswered:Z
    .end local v41           #remoteFlagged:Z
    .end local v42           #remoteMessage:Lcom/android/emailcommon/mail/Message;
    .end local v45           #remoteSeen:Z
    .end local v54           #updateValues:Landroid/content/ContentValues;
    .end local v55           #uri:Landroid/net/Uri;
    :cond_1d
    new-instance v33, Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1278
    .local v33, localUidsToDelete:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {v50 .. v50}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    .line 1279
    invoke-virtual/range {v33 .. v33}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    .line 1280
    .local v53, uidToDelete:Ljava/lang/String;
    move-object/from16 v0, v53

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 1284
    .local v24, infoToDelete:Lcom/android/email/MessagingController$LocalMessageInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v24

    iget-wide v11, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v3, v4, v5, v11, v12}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 1288
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v56

    .line 1290
    .local v56, uriToDelete:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v56

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1293
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v51

    .line 1295
    .local v51, syncRowToDelete:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1296
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 1298
    .local v18, deletERowToDelete:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_c

    .end local v18           #deletERowToDelete:Landroid/net/Uri;
    .end local v24           #infoToDelete:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v51           #syncRowToDelete:Landroid/net/Uri;
    .end local v53           #uidToDelete:Ljava/lang/String;
    .end local v56           #uriToDelete:Landroid/net/Uri;
    :cond_1e
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, p2

    .line 1302
    invoke-virtual/range {v11 .. v16}, Lcom/android/email/MessagingController;->loadUnsyncedMessages(Lcom/android/emailcommon/provider/Account;Lcom/android/email/mail/Store;Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 1305
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 1307
    new-instance v3, Lcom/android/email/MessagingController$SyncResults;

    move/from16 v0, v43

    invoke-direct {v3, v0, v9}, Lcom/android/email/MessagingController$SyncResults;-><init>(ILjava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 10
    .parameter "account"
    .parameter "folder"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 489
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 490
    iget v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJIILjava/util/ArrayList;)V

    .line 493
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/MessagingController;->mSendStatus:I

    .line 529
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v8

    .line 498
    .local v8, nc:Lcom/android/email/NotificationController;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/Account;)V

    .line 501
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/email/MessagingController$SyncResults;

    move-result-object v9

    .line 504
    .local v9, results:Lcom/android/email/MessagingController$SyncResults;
    if-eqz v9, :cond_3

    .line 505
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/MessagingController;->mSendStatus:I

    .line 512
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget v5, v9, Lcom/android/email/MessagingController$SyncResults;->mTotalMessages:I

    iget-object v6, v9, Lcom/android/email/MessagingController$SyncResults;->mAddedMessages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, v9, Lcom/android/email/MessagingController$SyncResults;->mAddedMessages:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJIILjava/util/ArrayList;)V

    .line 517
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v0, v1}, Lcom/android/email/NotificationController;->cancelLoginFailedNotification(J)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 518
    .end local v9           #results:Lcom/android/email/MessagingController$SyncResults;
    :catch_0
    move-exception v5

    .line 519
    .local v5, e:Lcom/android/emailcommon/mail/MessagingException;
    sget-boolean v0, Lcom/android/emailcommon/Logging;->LOGD:Z

    if-eqz v0, :cond_1

    .line 520
    const-string v0, "Email"

    const-string v1, "synchronizeMailbox"

    invoke-static {v0, v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    :cond_1
    instance-of v0, v5, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v0, :cond_2

    .line 524
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v0, v1}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 526
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/MessagingController;->mSendStatus:I

    .line 527
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V

    goto :goto_0

    .line 507
    .end local v5           #e:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v9       #results:Lcom/android/email/MessagingController$SyncResults;
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/android/email/MessagingController;->mSendStatus:I
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/email/MessagingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->addListener(Lcom/android/email/MessagingListener;)V

    .line 295
    return-void
.end method

.method public cancelLoadAttachment(J)V
    .locals 4
    .parameter "attachmentId"

    .prologue
    .line 2387
    iget-object v1, p0, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2388
    :try_start_0
    const-string v0, "Attachment"

    const-string v2, "Add canceled attachment id to the canceled list"

    invoke-static {v0, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    iget-object v0, p0, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2394
    iget-object v0, p0, Lcom/android/email/MessagingController;->mRunningCommand:Lcom/android/email/MessagingController$Command;

    if-eqz v0, :cond_0

    .line 2395
    iget-object v0, p0, Lcom/android/email/MessagingController;->mRunningCommand:Lcom/android/email/MessagingController$Command;

    iget-object v0, v0, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    instance-of v0, v0, Lcom/android/email/MessagingController$CancelableRunnable;

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/email/MessagingController;->mDownloadingAttachmentId:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    .line 2397
    const-string v0, "Attachment"

    const-string v2, "Try to close the attachment downloading connection"

    invoke-static {v0, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    iget-object v0, p0, Lcom/android/email/MessagingController;->mRunningCommand:Lcom/android/email/MessagingController$Command;

    iget-object v0, v0, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    check-cast v0, Lcom/android/email/MessagingController$CancelableRunnable;

    invoke-virtual {v0}, Lcom/android/email/MessagingController$CancelableRunnable;->cancel()V

    .line 2401
    :cond_0
    monitor-exit v1

    .line 2402
    return-void

    .line 2401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkMail(JJLcom/android/email/MessagingListener;)V
    .locals 13
    .parameter "accountId"
    .parameter "tag"
    .parameter "listener"

    .prologue
    .line 2790
    iget-object v1, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide v3, p1

    move-wide/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/email/GroupMessagingListener;->checkMailStarted(Landroid/content/Context;JJ)V

    .line 2793
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/email/MessagingController;->listFolders(JLcom/android/email/MessagingListener;)V

    .line 2799
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v10

    .line 2800
    .local v10, account:Lcom/android/emailcommon/provider/Account;
    invoke-direct {p0, v10}, Lcom/android/email/MessagingController;->getAccountSentMessageIds(Lcom/android/emailcommon/provider/Account;)[J

    move-result-object v11

    .line 2801
    .local v11, messageIds:[J
    invoke-direct {p0, v10}, Lcom/android/email/MessagingController;->getAccountSentMaiboxIds(Lcom/android/emailcommon/provider/Account;)J

    move-result-wide v6

    .line 2802
    .local v6, sentboxId:J
    if-eqz v11, :cond_1

    array-length v1, v11

    if-lez v1, :cond_1

    const-wide/16 v1, -0x1

    cmp-long v1, v6, v1

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    .line 2804
    .local v5, sendingMessage:Z
    :goto_0
    if-eqz v5, :cond_0

    .line 2805
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/email/extension/SendNotificationProxy;->getInstance(Landroid/content/Context;)Lcom/mediatek/email/extension/SendNotificationProxy;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v11

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/mediatek/email/extension/SendNotificationProxy;->showSendingNotification(JII)V

    .line 2813
    :cond_0
    const-string v12, "checkMail"

    new-instance v1, Lcom/android/email/MessagingController$14;

    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/email/MessagingController$14;-><init>(Lcom/android/email/MessagingController;JZJJ)V

    move-object/from16 v0, p5

    invoke-direct {p0, v12, v0, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 2838
    return-void

    .line 2802
    .end local v5           #sendingMessage:Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V
    .locals 11
    .parameter "message"
    .parameter "account"
    .parameter "folder"
    .parameter "loadStatus"

    .prologue
    .line 1322
    const/4 v8, 0x0

    .line 1323
    .local v8, localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    const/4 v7, 0x0

    .line 1325
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v4, "accountKey=? AND mailboxKey=? AND syncServerId=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v9, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x1

    iget-wide v9, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1337
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1338
    const-class v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v7, v1}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object v8, v0

    .line 1339
    iget-wide v1, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 1340
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 1341
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v8, p4, v1}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;ILandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1344
    :cond_0
    if-eqz v7, :cond_1

    .line 1345
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1348
    :cond_1
    return-void

    .line 1344
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_2

    .line 1345
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;ILandroid/content/Context;)V
    .locals 17
    .parameter "message"
    .parameter "localMessage"
    .parameter "loadStatus"
    .parameter "context"

    .prologue
    .line 1364
    :try_start_0
    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p4

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v10

    .line 1366
    .local v10, body:Lcom/android/emailcommon/provider/EmailContent$Body;
    if-nez v10, :cond_0

    .line 1367
    new-instance v10, Lcom/android/emailcommon/provider/EmailContent$Body;

    .end local v10           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    invoke-direct {v10}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1374
    .restart local v10       #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/Message;->getFolder()Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 1378
    sget-object v3, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/emailcommon/mail/Message;->setFlagDirectly(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1379
    sget-object v3, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/emailcommon/mail/Message;->setFlagDirectly(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1383
    :cond_2
    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    invoke-static/range {v3 .. v8}, Lcom/android/email/LegacyConversions;->updateMessageFields(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJ)Z

    .line 1387
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1388
    .local v16, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1389
    .local v9, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1, v9}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1394
    const/4 v3, 0x1

    move/from16 v0, p3

    if-eq v0, v3, :cond_3

    const-string v3, "pop3"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1396
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1397
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1402
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v10, v0, v1}, Lcom/android/emailcommon/utility/ConversionUtilities;->updateBodyFields(Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z

    .line 1405
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 1406
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v10, v1}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 1409
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v1, v9}, Lcom/android/emailcommon/utility/ConversionUtilities;->updateAttachments(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)V

    .line 1412
    move/from16 v0, p3

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1414
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1415
    .local v11, cv:Landroid/content/ContentValues;
    const-string v3, "flagAttachment"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1416
    const-string v3, "flagLoaded"

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1417
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 1419
    .local v15, uri:Landroid/net/Uri;
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v15, v11, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1430
    .end local v9           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v10           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v15           #uri:Landroid/net/Uri;
    .end local v16           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :goto_0
    return-void

    .line 1421
    .restart local v10       #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    :catch_0
    move-exception v13

    .line 1422
    .local v13, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_2
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while copying downloaded message."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1425
    .end local v10           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v13           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v14

    .line 1426
    .local v14, rte:Ljava/lang/RuntimeException;
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while storing downloaded message."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1427
    .end local v14           #rte:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v12

    .line 1428
    .local v12, ioe:Ljava/io/IOException;
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while storing attachment."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public downloadFlagAndEnvelope(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Z)V
    .locals 15
    .parameter "account"
    .parameter "mailbox"
    .parameter "remoteFolder"
    .parameter
    .parameter
    .parameter
    .parameter "isImapAccount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/Account;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            "Lcom/android/emailcommon/mail/Folder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Message;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/MessagingController$LocalMessageInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 822
    .local p4, unsyncedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    .local p5, localMessageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    .local p6, unseenMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v11, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v11}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 823
    .local v11, fp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v2, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    sget-object v2, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    if-eqz p5, :cond_0

    .line 828
    new-instance v3, Ljava/util/HashMap;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 833
    .local v3, localMapCopy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v7, batchMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Message;>;"
    new-instance v1, Lcom/android/email/MessagingController$6;

    move-object v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p7

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/email/MessagingController$6;-><init>(Lcom/android/email/MessagingController;Ljava/util/HashMap;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 905
    .local v1, listener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v11, v1}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 907
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 908
    .local v14, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 909
    .local v13, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-virtual {v13}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 910
    invoke-virtual {v13}, Lcom/android/emailcommon/provider/EmailContent;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/emailcommon/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 831
    .end local v1           #listener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;
    .end local v3           #localMapCopy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    .end local v7           #batchMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Message;>;"
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v14           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .restart local v3       #localMapCopy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    goto :goto_0

    .line 913
    .restart local v1       #listener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;
    .restart local v7       #batchMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Message;>;"
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v13       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v14       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    iget-object v2, v13, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/emailcommon/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 918
    .end local v13           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "com.android.email.provider"

    invoke-virtual {v2, v4, v14}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 925
    :goto_2
    return-void

    .line 920
    :catch_0
    move-exception v10

    .line 921
    .local v10, exception:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException catched: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 922
    .end local v10           #exception:Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 923
    .local v9, e:Landroid/content/OperationApplicationException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OperationApplicationException catched: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getUnsyncedMessages()Lcom/android/emailcommon/mail/Message;
    .locals 6

    .prologue
    .line 2875
    iget-object v4, p0, Lcom/android/email/MessagingController;->mUnsyncedMessages:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2876
    const/4 v1, 0x0

    .line 2877
    .local v1, unsyncedMessage:Lcom/android/emailcommon/mail/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/email/MessagingController;->mUnsyncedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2878
    monitor-exit v4

    move-object v2, v1

    .line 2882
    .end local v1           #unsyncedMessage:Lcom/android/emailcommon/mail/Message;
    .local v2, unsyncedMessage:Lcom/android/emailcommon/mail/Message;
    :goto_0
    return-object v2

    .line 2880
    .end local v2           #unsyncedMessage:Lcom/android/emailcommon/mail/Message;
    .restart local v1       #unsyncedMessage:Lcom/android/emailcommon/mail/Message;
    :cond_0
    iget-object v3, p0, Lcom/android/email/MessagingController;->mUnsyncedMessages:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/emailcommon/mail/Message;

    move-object v1, v0

    .line 2881
    iget-object v3, p0, Lcom/android/email/MessagingController;->mUnsyncedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2882
    monitor-exit v4

    move-object v2, v1

    .end local v1           #unsyncedMessage:Lcom/android/emailcommon/mail/Message;
    .restart local v2       #unsyncedMessage:Lcom/android/emailcommon/mail/Message;
    goto :goto_0

    .line 2883
    .end local v2           #unsyncedMessage:Lcom/android/emailcommon/mail/Message;
    .restart local v1       #unsyncedMessage:Lcom/android/emailcommon/mail/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/email/MessagingController;->mBusy:Z

    return v0
.end method

.method listFolders(JLcom/android/email/MessagingListener;)V
    .locals 4
    .parameter "accountId"
    .parameter "listener"

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 331
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_0

    .line 332
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load account id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Has it been removed?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/GroupMessagingListener;->listFoldersStarted(J)V

    .line 337
    const-string v1, "listFolders"

    new-instance v2, Lcom/android/email/MessagingController$2;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/email/MessagingController$2;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;J)V

    invoke-direct {p0, v1, p3, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public loadAttachment(JJJJLcom/android/email/MessagingListener;Z)V
    .locals 13
    .parameter "accountId"
    .parameter "messageId"
    .parameter "mailboxId"
    .parameter "attachmentId"
    .parameter "listener"
    .parameter "background"

    .prologue
    .line 2409
    iget-object v1, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    const/4 v8, 0x1

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/email/GroupMessagingListener;->loadAttachmentStarted(JJJZ)V

    .line 2411
    const-string v12, "loadAttachment"

    new-instance v1, Lcom/android/email/MessagingController$12;

    move-object v2, p0

    move-wide/from16 v3, p7

    move-wide v5, p1

    move-wide/from16 v7, p3

    move/from16 v9, p10

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/email/MessagingController$12;-><init>(Lcom/android/email/MessagingController;JJJZJ)V

    move-object/from16 v0, p9

    invoke-direct {p0, v12, v0, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 2599
    return-void
.end method

.method public loadMessageForView(JLcom/android/email/MessagingListener;)V
    .locals 6
    .parameter "messageId"
    .parameter "listener"

    .prologue
    .line 2254
    iget-object v2, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v2, p1, p2}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewStarted(J)V

    .line 2255
    new-instance v1, Lcom/android/email/MessagingController$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/MessagingController$11;-><init>(Lcom/android/email/MessagingController;J)V

    .line 2368
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 2370
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v0, :cond_0

    .line 2371
    iget-object v2, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    const-string v3, "Unknown message"

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V

    .line 2380
    :goto_0
    return-void

    .line 2374
    :cond_0
    const-string v2, "pop3"

    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2375
    const-string v2, "loadMessageForViewRemote"

    invoke-direct {p0, v2, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2379
    :cond_1
    sget-object v2, Lcom/android/email/MessagingController;->MESSAGE_SYNC_THREAD_POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method loadUnsyncedMessage(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 17
    .parameter "account"
    .parameter "remoteFolder"
    .parameter "unsyncedMessage"
    .parameter "toMailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 681
    new-instance v15, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v15}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 682
    .local v15, smallfp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    new-instance v13, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v13}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 686
    .local v13, largefp:Lcom/android/emailcommon/mail/FetchProfile;
    move-object/from16 v14, p3

    .line 687
    .local v14, message:Lcom/android/emailcommon/mail/Message;
    const/4 v10, -0x1

    .line 688
    .local v10, flagLoaded:I
    const/4 v9, 0x0

    .line 689
    .local v9, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "flagLoaded"

    aput-object v7, v5, v6

    const-string v6, "syncServerId=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v14}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 694
    if-eqz v9, :cond_0

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 695
    const-string v3, "flagLoaded"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 696
    .local v11, index:I
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 699
    .end local v11           #index:I
    :cond_0
    if-eqz v9, :cond_1

    .line 700
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 703
    :cond_1
    const/4 v3, 0x1

    if-ne v10, v3, :cond_3

    .line 704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The message with uId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been downloaded by the previous behavior of user! So we jump it!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 762
    :goto_0
    return-void

    .line 699
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_2

    .line 700
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3

    .line 712
    :cond_3
    invoke-virtual {v14}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v3

    const/16 v4, 0x1400

    if-gt v3, v4, :cond_4

    invoke-virtual {v14}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v3

    if-nez v3, :cond_7

    .line 715
    :cond_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 716
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v4, 0x0

    aput-object v14, v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v13, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 719
    invoke-virtual {v14}, Lcom/android/emailcommon/mail/Message;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v3

    if-nez v3, :cond_5

    .line 723
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 724
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v4, 0x0

    aput-object v14, v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v13, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 731
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V

    goto :goto_0

    .line 734
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/android/email/MessagingController;->imapPartialFetchMessage(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;)Z

    move-result v12

    .line 736
    .local v12, isPartialDownload:Z
    if-eqz v12, :cond_6

    const/4 v3, 0x2

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    goto :goto_1

    .line 749
    .end local v12           #isPartialDownload:Z
    :cond_7
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v4, 0x0

    aput-object v14, v3, v4

    new-instance v4, Lcom/android/email/MessagingController$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v4, v0, v1, v2}, Lcom/android/email/MessagingController$5;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v15, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_0
.end method

.method loadUnsyncedMessages(Lcom/android/emailcommon/provider/Account;Lcom/android/email/mail/Store;Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 9
    .parameter "account"
    .parameter "remoteStore"
    .parameter "remoteFolder"
    .parameter
    .parameter "toMailbox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/Account;",
            "Lcom/android/email/mail/Store;",
            "Lcom/android/emailcommon/mail/Folder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Message;",
            ">;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p4, unsyncedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    const/4 v8, 0x0

    .line 777
    instance-of v5, p2, Lcom/android/email/mail/store/ImapStore;

    if-eqz v5, :cond_3

    .line 778
    iput-object p4, p0, Lcom/android/email/MessagingController;->mUnsyncedMessages:Ljava/util/ArrayList;

    .line 782
    :try_start_0
    iget-object v6, p0, Lcom/android/email/MessagingController;->mUnsyncedMessages:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    const/4 v5, 0x0

    :try_start_1
    iput v5, p0, Lcom/android/email/MessagingController;->mRunningSyncThreadCount:I

    .line 784
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 786
    .local v4, unsyncedMessagesCount:I
    :goto_0
    iget v5, p0, Lcom/android/email/MessagingController;->mRunningSyncThreadCount:I

    if-le v4, v5, :cond_0

    iget v5, p0, Lcom/android/email/MessagingController;->mRunningSyncThreadCount:I

    const/16 v7, 0x8

    if-ge v5, v7, :cond_0

    .line 788
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsyncedMessages size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " threadIndex: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/email/MessagingController;->mRunningSyncThreadCount:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;)V

    .line 791
    sget-object v5, Lcom/android/email/MessagingController;->MESSAGE_SYNC_THREAD_POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;

    invoke-direct {v7, p0, p1, p2, p5}, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Mailbox;)V

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 793
    iget v5, p0, Lcom/android/email/MessagingController;->mRunningSyncThreadCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/email/MessagingController;->mRunningSyncThreadCount:I

    goto :goto_0

    .line 799
    .end local v4           #unsyncedMessagesCount:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadUnsyncedMessages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 803
    iget-object v5, p0, Lcom/android/email/MessagingController;->mMessagingException:Lcom/android/emailcommon/mail/MessagingException;

    if-eqz v5, :cond_4

    .line 804
    iget-object v2, p0, Lcom/android/email/MessagingController;->mMessagingException:Lcom/android/emailcommon/mail/MessagingException;

    .line 805
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    iput-object v8, p0, Lcom/android/email/MessagingController;->mMessagingException:Lcom/android/emailcommon/mail/MessagingException;

    .line 806
    throw v2

    .line 796
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v4       #unsyncedMessagesCount:I
    :cond_0
    :goto_1
    :try_start_4
    iget v5, p0, Lcom/android/email/MessagingController;->mRunningSyncThreadCount:I

    if-lez v5, :cond_1

    .line 797
    iget-object v5, p0, Lcom/android/email/MessagingController;->mUnsyncedMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 799
    :cond_1
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 803
    iget-object v5, p0, Lcom/android/email/MessagingController;->mMessagingException:Lcom/android/emailcommon/mail/MessagingException;

    if-eqz v5, :cond_4

    .line 804
    iget-object v2, p0, Lcom/android/email/MessagingController;->mMessagingException:Lcom/android/emailcommon/mail/MessagingException;

    .line 805
    .restart local v2       #me:Lcom/android/emailcommon/mail/MessagingException;
    iput-object v8, p0, Lcom/android/email/MessagingController;->mMessagingException:Lcom/android/emailcommon/mail/MessagingException;

    .line 806
    throw v2

    .line 803
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    .end local v4           #unsyncedMessagesCount:I
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/android/email/MessagingController;->mMessagingException:Lcom/android/emailcommon/mail/MessagingException;

    if-eqz v6, :cond_2

    .line 804
    iget-object v2, p0, Lcom/android/email/MessagingController;->mMessagingException:Lcom/android/emailcommon/mail/MessagingException;

    .line 805
    .restart local v2       #me:Lcom/android/emailcommon/mail/MessagingException;
    iput-object v8, p0, Lcom/android/email/MessagingController;->mMessagingException:Lcom/android/emailcommon/mail/MessagingException;

    .line 806
    throw v2

    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :cond_2
    throw v5

    .line 811
    :cond_3
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/mail/Message;

    .line 812
    .local v3, message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual {p0, p1, p3, v3, p5}, Lcom/android/email/MessagingController;->loadUnsyncedMessage(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Mailbox;)V

    goto :goto_2

    .line 816
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #message:Lcom/android/emailcommon/mail/Message;
    :cond_4
    return-void
.end method

.method public processPendingActions(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 1433
    const-string v0, "processPendingActions"

    const/4 v1, 0x0

    new-instance v2, Lcom/android/email/MessagingController$8;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/email/MessagingController$8;-><init>(Lcom/android/email/MessagingController;J)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 1453
    return-void
.end method

.method public removeListener(Lcom/android/email/MessagingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->removeListener(Lcom/android/email/MessagingListener;)V

    .line 299
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 253
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 258
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    .line 259
    .local v2, size:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There are still "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " tasks left Commands List"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 260
    iget-object v5, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$Command;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .local v0, command:Lcom/android/email/MessagingController$Command;
    iget-object v5, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    invoke-direct {p0, v5}, Lcom/android/email/MessagingController;->isActiveListener(Lcom/android/email/MessagingListener;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 265
    :cond_0
    iput-boolean v6, p0, Lcom/android/email/MessagingController;->mBusy:Z

    .line 266
    iput-object v0, p0, Lcom/android/email/MessagingController;->mRunningCommand:Lcom/android/email/MessagingController$Command;

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 268
    .local v3, time:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Command ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "] start"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 269
    iget-object v5, v0, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Command ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "] time ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms], left "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " tasks"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 273
    iget-object v8, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v5, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v5

    if-lez v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Lcom/android/email/GroupMessagingListener;->controllerCommandCompleted(Z)V

    .line 275
    .end local v3           #time:J
    :cond_1
    iput-boolean v7, p0, Lcom/android/email/MessagingController;->mBusy:Z

    .line 276
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/email/MessagingController;->mRunningCommand:Lcom/android/email/MessagingController$Command;

    goto/16 :goto_0

    .line 261
    .end local v0           #command:Lcom/android/email/MessagingController$Command;
    .end local v2           #size:I
    :catch_0
    move-exception v1

    .line 262
    .local v1, e:Ljava/lang/InterruptedException;
    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v0       #command:Lcom/android/email/MessagingController$Command;
    .restart local v2       #size:I
    .restart local v3       #time:J
    :cond_2
    move v5, v7

    .line 273
    goto :goto_1
.end method

.method public searchMailbox(JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 9
    .parameter "accountId"
    .parameter "searchParams"
    .parameter "destMailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 943
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/email/MessagingController;->searchMailboxImpl(JLcom/android/emailcommon/service/SearchParams;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 947
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-wide v1, p1

    move-wide v3, p4

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJIILjava/util/ArrayList;)V

    return v8

    :catchall_0
    move-exception v8

    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-wide v1, p1

    move-wide v3, p4

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJIILjava/util/ArrayList;)V

    throw v8
.end method

.method public sendPendingMessages(Lcom/android/emailcommon/provider/Account;JLcom/android/email/MessagingListener;)V
    .locals 6
    .parameter "account"
    .parameter "sentFolderId"
    .parameter "listener"

    .prologue
    .line 2617
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v1, v2}, Lcom/android/email/MessagingController;->getSentMessageIds(J)[J

    move-result-object v0

    .line 2618
    .local v0, messageIds:[J
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 2631
    :cond_0
    :goto_0
    return-void

    .line 2622
    :cond_1
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/email/extension/SendNotificationProxy;->getInstance(Landroid/content/Context;)Lcom/mediatek/email/extension/SendNotificationProxy;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mediatek/email/extension/SendNotificationProxy;->showSendingNotification(JII)V

    .line 2626
    const-string v1, "sendPendingMessages"

    new-instance v2, Lcom/android/email/MessagingController$13;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/email/MessagingController$13;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;J)V

    invoke-direct {p0, v1, p4, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public sendPendingMessagesSynchronous(Lcom/android/emailcommon/provider/Account;J)V
    .locals 27
    .parameter "account"
    .parameter "sentFolderId"

    .prologue
    .line 2639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/emailcommon/TrafficFlags;->getSmtpFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v3

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2640
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v19

    .line 2643
    .local v19, nc:Lcom/android/email/NotificationController;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x4

    invoke-static {v3, v4, v5, v9}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v20

    .line 2644
    .local v20, outboxId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v20, v3

    if-nez v3, :cond_0

    .line 2752
    :goto_0
    return-void

    .line 2648
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2649
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v5, "mailboxKey=?"

    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2656
    .local v15, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-gtz v3, :cond_1

    .line 2750
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2660
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v9, -0x1

    invoke-virtual {v3, v4, v5, v9, v10}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesStarted(JJ)V

    .line 2662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;

    move-result-object v24

    .line 2663
    .local v24, sender:Lcom/android/email/mail/Sender;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v22

    .line 2664
    .local v22, remoteStore:Lcom/android/email/mail/Store;
    invoke-virtual/range {v22 .. v22}, Lcom/android/email/mail/Store;->requireCopyMessageToSentFolder()Z

    move-result v23

    .line 2665
    .local v23, requireMoveMessageToSentFolder:Z
    const/16 v17, 0x0

    .line 2666
    .local v17, moveToSentValues:Landroid/content/ContentValues;
    if-eqz v23, :cond_2

    .line 2667
    new-instance v17, Landroid/content/ContentValues;

    .end local v17           #moveToSentValues:Landroid/content/ContentValues;
    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 2668
    .restart local v17       #moveToSentValues:Landroid/content/ContentValues;
    const-string v3, "mailboxKey"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2669
    const-string v3, "displayName"

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2673
    :cond_2
    const/16 v16, 0x0

    .line 2675
    .local v16, loginFailed:Z
    :cond_3
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_4

    .line 2676
    const-wide/16 v6, -0x1

    .line 2678
    .local v6, messageId:J
    const/4 v3, 0x0

    :try_start_2
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesStarted(JJ)V

    .line 2681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3, v6, v7}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2682
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 2683
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t send #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; unloaded attachments"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2689
    :catch_0
    move-exception v8

    .line 2690
    .local v8, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v3 .. v8}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V

    .line 2691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/email/extension/SendNotificationProxy;->getInstance(Landroid/content/Context;)Lcom/mediatek/email/extension/SendNotificationProxy;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v3, v4, v5, v9, v10}, Lcom/mediatek/email/extension/SendNotificationProxy;->showSendingNotification(JII)V

    .line 2694
    instance-of v3, v8, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v3, :cond_3

    .line 2695
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 2697
    const/16 v16, 0x1

    .line 2736
    .end local v6           #messageId:J
    .end local v8           #me:Lcom/android/emailcommon/mail/MessagingException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesCompleted(J)V

    .line 2738
    if-nez v16, :cond_5

    .line 2739
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/android/email/NotificationController;->cancelLoginFailedNotification(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2750
    :cond_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2688
    .restart local v6       #messageId:J
    :cond_6
    :try_start_4
    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Lcom/android/email/mail/Sender;->sendMessage(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2703
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/email/extension/SendNotificationProxy;->getInstance(Landroid/content/Context;)Lcom/mediatek/email/extension/SendNotificationProxy;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {v3, v4, v5, v9, v10}, Lcom/mediatek/email/extension/SendNotificationProxy;->showSendingNotification(JII)V

    .line 2707
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    .line 2709
    .local v25, syncedUri:Landroid/net/Uri;
    if-eqz v23, :cond_9

    .line 2712
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v18

    .line 2714
    .local v18, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_7

    .line 2716
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 2721
    const-string v3, "flags"

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v4, v4, -0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2725
    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 2741
    .end local v6           #messageId:J
    .end local v16           #loginFailed:Z
    .end local v17           #moveToSentValues:Landroid/content/ContentValues;
    .end local v18           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v22           #remoteStore:Lcom/android/email/mail/Store;
    .end local v23           #requireMoveMessageToSentFolder:Z
    .end local v24           #sender:Lcom/android/email/mail/Sender;
    .end local v25           #syncedUri:Landroid/net/Uri;
    :catch_1
    move-exception v8

    .line 2742
    .restart local v8       #me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_6
    instance-of v3, v8, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v3, :cond_8

    .line 2743
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 2745
    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v12, -0x1

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V

    .line 2747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/email/extension/SendNotificationProxy;->getInstance(Landroid/content/Context;)Lcom/mediatek/email/extension/SendNotificationProxy;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x1

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v3, v4, v5, v9, v10}, Lcom/mediatek/email/extension/SendNotificationProxy;->showSendingNotification(JII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2750
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2727
    .end local v8           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v6       #messageId:J
    .restart local v16       #loginFailed:Z
    .restart local v17       #moveToSentValues:Landroid/content/ContentValues;
    .restart local v22       #remoteStore:Lcom/android/email/mail/Store;
    .restart local v23       #requireMoveMessageToSentFolder:Z
    .restart local v24       #sender:Lcom/android/email/mail/Sender;
    .restart local v25       #syncedUri:Landroid/net/Uri;
    :cond_9
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 2729
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v26

    .line 2731
    .local v26, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2732
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 2750
    .end local v6           #messageId:J
    .end local v16           #loginFailed:Z
    .end local v17           #moveToSentValues:Landroid/content/ContentValues;
    .end local v22           #remoteStore:Lcom/android/email/mail/Store;
    .end local v23           #requireMoveMessageToSentFolder:Z
    .end local v24           #sender:Lcom/android/email/mail/Sender;
    .end local v25           #syncedUri:Landroid/net/Uri;
    .end local v26           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public stopSynchronize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 468
    const-string v0, " *** MessagingController stopSynchronize *** "

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 470
    invoke-static {p1}, Lcom/mediatek/email/extension/SendNotificationProxy;->getInstance(Landroid/content/Context;)Lcom/mediatek/email/extension/SendNotificationProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/email/extension/SendNotificationProxy;->cancelSendingNotification()V

    .line 471
    iget-object v0, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 473
    iget-object v0, p0, Lcom/android/email/MessagingController;->mRunningCommand:Lcom/android/email/MessagingController$Command;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/email/MessagingController;->mRunningCommand:Lcom/android/email/MessagingController$Command;

    iget-object v0, v0, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    instance-of v0, v0, Lcom/android/email/MessagingController$CancelableRunnable;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/email/MessagingController;->mRunningCommand:Lcom/android/email/MessagingController$Command;

    iget-object v0, v0, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    check-cast v0, Lcom/android/email/MessagingController$CancelableRunnable;

    invoke-virtual {v0}, Lcom/android/email/MessagingController$CancelableRunnable;->cancel()V

    .line 478
    :cond_0
    return-void
.end method

.method public synchronizeMailbox(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/email/MessagingListener;)V
    .locals 8
    .parameter "account"
    .parameter "folder"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 416
    iget v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v7, 0x0

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJIILjava/util/ArrayList;)V

    .line 426
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 421
    const-string v0, "synchronizeMailbox"

    new-instance v1, Lcom/android/email/MessagingController$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/MessagingController$3;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V

    invoke-direct {p0, v0, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public synchronizeMailbox(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/email/MessagingListener;Lcom/android/emailcommon/service/EmailExternalCalls;)V
    .locals 2
    .parameter "account"
    .parameter "folder"
    .parameter "listener"
    .parameter "callback"

    .prologue
    .line 438
    const-string v0, "synchronizeMailbox"

    new-instance v1, Lcom/android/email/MessagingController$4;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/android/email/MessagingController$4;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/service/EmailExternalCalls;)V

    invoke-direct {p0, v0, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 465
    return-void
.end method

.method public updateSendingNotification(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    const/4 v2, 0x0

    .line 2935
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->getSentMessageIds(J)[J

    move-result-object v0

    .line 2936
    .local v0, sendingMsgs:[J
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/email/extension/SendNotificationProxy;->getInstance(Landroid/content/Context;)Lcom/mediatek/email/extension/SendNotificationProxy;

    move-result-object v3

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, p1, p2, v2, v1}, Lcom/mediatek/email/extension/SendNotificationProxy;->showSendingNotification(JII)V

    .line 2938
    return-void

    .line 2936
    :cond_0
    array-length v1, v0

    goto :goto_0
.end method
