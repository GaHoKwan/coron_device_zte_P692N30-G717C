.class public Lcom/android/email/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/Controller$ControllerService;,
        Lcom/android/email/Controller$ServiceCallbackWrapper;,
        Lcom/android/email/Controller$ServiceCallback;,
        Lcom/android/email/Controller$LegacyListener;,
        Lcom/android/email/Controller$MessageRetrievalListenerBridge;,
        Lcom/android/email/Controller$Result;
    }
.end annotation


# static fields
.field static final ATTACHMENT_MAILBOX_SERVER_ID:Ljava/lang/String; = "__attachment_mailbox__"

.field static final ATTACHMENT_MESSAGE_UID_PREFIX:Ljava/lang/String; = "__attachment_message__"

.field private static final BODY_SOURCE_KEY_COLUMN:I = 0x0

.field private static final BODY_SOURCE_KEY_PROJECTION:[Ljava/lang/String; = null

.field public static final GLOBAL_MAILBOX_ACCOUNT_KEY:J = 0x0L

.field private static final MAILBOXES_FOR_ACCOUNT_EXCEPT_ACCOUNT_MAILBOX_SELECTION:Ljava/lang/String; = "accountKey=? AND type!=68"

.field private static final MAILBOXES_FOR_ACCOUNT_SELECTION:Ljava/lang/String; = "accountKey=?"

.field private static final MAX_RECORD_COUNT:I = 0xa

.field private static final MESSAGEID_TO_ACCOUNTID_COLUMN_ACCOUNTID:I = 0x1

.field private static final MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String; = null

.field private static final MESSAGES_FOR_ACCOUNT_SELECTION:Ljava/lang/String; = "accountKey=?"

.field private static final MESSAGES_UPDATE_WINDOW_SIZE:I = 0x14

.field static final SEARCH_MAILBOX_SERVER_ID:Ljava/lang/String; = "__search_mailbox__"

.field private static final SYNCHRONIZE_LOCK_FOR_RECENT_IDS:Ljava/lang/Object; = null

.field private static final TAG:Ljava/lang/String; = "Controller"

.field private static final WHERE_MAILBOX_KEY:Ljava/lang/String; = "mailboxKey=?"

.field private static final WHERE_MESSAGE_KEY:Ljava/lang/String; = "messageKey=?"

.field private static final WHERE_TYPE_ATTACHMENT:Ljava/lang/String; = "type=257"

.field private static sCallbackList:Lcom/android/emailcommon/utility/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/RemoteCallbackList",
            "<",
            "Lcom/android/emailcommon/service/IEmailServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/email/Controller;

.field private static final sSearchParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/emailcommon/service/SearchParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

.field private final mContext:Landroid/content/Context;

.field private volatile mInUnitTests:Z

.field private final mLegacyController:Lcom/android/email/MessagingController;

.field final mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLegacyListener:Lcom/android/email/Controller$LegacyListener;

.field protected final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/Controller$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderContext:Landroid/content/Context;

.field private mRecentOpenedMsgIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceCallback:Lcom/android/email/Controller$ServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "accountKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/Controller;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    .line 125
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "sourceMessageKey"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/Controller;->BODY_SOURCE_KEY_PROJECTION:[Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/android/emailcommon/utility/RemoteCallbackList;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/RemoteCallbackList;-><init>()V

    sput-object v0, Lcom/android/email/Controller;->sCallbackList:Lcom/android/emailcommon/utility/RemoteCallbackList;

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/email/Controller;->SYNCHRONIZE_LOCK_FOR_RECENT_IDS:Ljava/lang/Object;

    .line 1684
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/Controller;->sSearchParamsMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/android/email/Controller$LegacyListener;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$LegacyListener;-><init>(Lcom/android/email/Controller;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    .line 105
    new-instance v0, Lcom/android/email/Controller$ServiceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/Controller$ServiceCallback;-><init>(Lcom/android/email/Controller;Lcom/android/email/Controller$1;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/Controller;->mInUnitTests:Z

    .line 2709
    new-instance v0, Lcom/android/email/Controller$19;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$19;-><init>(Lcom/android/email/Controller;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    .line 173
    iput-object p1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    .line 174
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/email/MessagingController;->getInstance(Landroid/content/Context;Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    .line 175
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController;->addListener(Lcom/android/email/MessagingListener;)V

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/Controller;->mRecentOpenedMsgIds:Ljava/util/ArrayList;

    .line 181
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/Controller;J)Lcom/android/emailcommon/service/IEmailService;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Lcom/android/email/Controller;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/android/emailcommon/utility/RemoteCallbackList;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/email/Controller;->sCallbackList:Lcom/android/emailcommon/utility/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/Controller;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/email/Controller;->BODY_SOURCE_KEY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/Controller;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/Controller;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->updateLastSeenMessage(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/Controller;JLjava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/Controller;->copySetValueIfSearchBox(JLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/Controller;JLjava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/Controller;->setMessageBooleanSync(JLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/Controller;JLandroid/content/ContentValues;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/Controller;->updateMessageReplyOrForward(JLandroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/Controller;Ljava/util/Set;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/Controller;->setMessagesBooleanSync(Ljava/util/Set;Ljava/lang/String;Z)V

    return-void
.end method

.method private copySetValueIfSearchBox(JLjava/lang/String;Z)V
    .locals 14
    .parameter "messageId"
    .parameter "columnName"
    .parameter "columnValue"

    .prologue
    .line 1635
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-wide v0, p1

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v10

    .line 1636
    .local v10, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v10, :cond_1

    .line 1639
    const-string v2, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " can\'t be found, it may be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "removed from OutBox due to sent successfully "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    :cond_0
    :goto_0
    return-void

    .line 1643
    :cond_1
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v3, v10, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v9

    .line 1644
    .local v9, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v9, :cond_0

    const/16 v2, 0x8

    iget v3, v9, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-ne v2, v3, :cond_0

    .line 1646
    iget-object v2, v10, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1649
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "messageId=? AND mailboxKey!=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v12, v10, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    aput-object v12, v6, v7

    const/4 v7, 0x1

    iget-wide v12, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1654
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 1656
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1657
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1658
    .local v11, messageNotInSearchBox:I
    int-to-long v2, v11

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/email/Controller;->setMessageBooleanSync(JLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1661
    .end local v11           #messageNotInSearchBox:I
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private copySetValuesIfSearchBox(Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "columnName"
    .parameter "columnValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1669
    .local p1, messageIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/Controller$17;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$17;-><init>(Lcom/android/email/Controller;Ljava/util/ArrayList;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1682
    return-void
.end method

.method private getExchangeEmailService()Lcom/android/emailcommon/service/IEmailService;
    .locals 2

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v0, v1}, Lcom/android/email/service/EmailServiceUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    return-object v0
.end method

.method private getGlobalMailboxWhere(Ljava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 8
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 294
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 297
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    new-instance v7, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v7}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 299
    .local v7, m:Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual {v7, v6}, Lcom/android/emailcommon/provider/Mailbox;->restore(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 305
    .end local v7           #m:Lcom/android/emailcommon/provider/Mailbox;
    :goto_0
    return-object v7

    .line 303
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v7, v4

    .line 305
    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/Controller;
    .locals 2
    .parameter "context"

    .prologue
    .line 206
    const-class v1, Lcom/android/email/Controller;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/android/email/Controller;

    invoke-direct {v0, p0}, Lcom/android/email/Controller;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    .line 209
    :cond_0
    sget-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMailboxServerName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "mailboxType"

    .prologue
    .line 835
    const/4 v0, -0x1

    .line 836
    .local v0, resId:I
    packed-switch p1, :pswitch_data_0

    .line 856
    :goto_0
    :pswitch_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 838
    :pswitch_1
    const v0, 0x7f0800a5

    .line 839
    goto :goto_0

    .line 841
    :pswitch_2
    const v0, 0x7f0800a6

    .line 842
    goto :goto_0

    .line 844
    :pswitch_3
    const v0, 0x7f0800a7

    .line 845
    goto :goto_0

    .line 847
    :pswitch_4
    const v0, 0x7f0800a8

    .line 848
    goto :goto_0

    .line 850
    :pswitch_5
    const v0, 0x7f0800a9

    .line 851
    goto :goto_0

    .line 853
    :pswitch_6
    const v0, 0x7f0800aa

    goto :goto_0

    .line 856
    :cond_0
    const-string v1, ""

    goto :goto_1

    .line 836
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1940
    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1941
    const/4 v0, 0x0

    .line 1943
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/email/Controller;->getExchangeEmailService()Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    goto :goto_0
.end method

.method private getServiceForMessage(J)Lcom/android/emailcommon/service/IEmailService;
    .locals 3
    .parameter "messageId"

    .prologue
    .line 1926
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1927
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v0, :cond_0

    .line 1928
    const/4 v1, 0x0

    .line 1930
    :goto_0
    return-object v1

    :cond_0
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-direct {p0, v1, v2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    goto :goto_0
.end method

.method public static declared-synchronized injectMockControllerForTest(Lcom/android/email/Controller;)V
    .locals 2
    .parameter "mockController"

    .prologue
    .line 220
    const-class v0, Lcom/android/email/Controller;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit v0

    return-void

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private lookupAccountForMessage(J)J
    .locals 8
    .parameter "messageId"

    .prologue
    const/4 v4, 0x1

    .line 1054
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1055
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/Controller;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1059
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1061
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-wide v1

    .line 1059
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 1061
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private sendPendingMessagesSmtp(J)V
    .locals 5
    .parameter "accountId"

    .prologue
    .line 922
    iget-object v3, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 923
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_0

    .line 933
    :goto_0
    return-void

    .line 926
    :cond_0
    const/4 v3, 0x5

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v1

    .line 927
    .local v1, sentboxId:J
    const-string v3, "Controller"

    const-string v4, ">>>>> Utility.runAsync sendPendingMessagesSmtp"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    new-instance v3, Lcom/android/email/Controller$6;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/email/Controller$6;-><init>(Lcom/android/email/Controller;Lcom/android/emailcommon/provider/Account;J)V

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setMessageBooleanSync(JLjava/lang/String;Z)V
    .locals 2
    .parameter "messageId"
    .parameter "columnName"
    .parameter "columnValue"

    .prologue
    .line 1621
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1622
    .local v0, cv:Landroid/content/ContentValues;
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1623
    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/Controller;->updateMessageSync(JLandroid/content/ContentValues;)V

    .line 1624
    return-void
.end method

.method private setMessagesBooleanSync(Ljava/util/Set;Ljava/lang/String;Z)V
    .locals 13
    .parameter
    .parameter "columnName"
    .parameter "columnValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1570
    .local p1, messageIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1572
    .local v2, accounts:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1573
    .local v8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1576
    .local v6, messageId:J
    iget-object v9, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v9, v6, v7}, Lcom/android/emailcommon/provider/Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 1577
    .local v0, accountId:J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1578
    .local v3, cv:Landroid/content/ContentValues;
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, p2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1579
    const-string v9, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MessageListFragment setMessagesBooleanSync for messageId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1585
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1588
    .end local v0           #accountId:J
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v6           #messageId:J
    :cond_0
    :try_start_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 1589
    iget-object v9, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "com.android.email.provider"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1600
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1601
    .restart local v0       #accountId:J
    const-wide/16 v9, -0x1

    cmp-long v9, v0, v9

    if-nez v9, :cond_3

    .line 1602
    const-string v9, "===setMessagesBooleanSync: account %d is null, so jump it ==="

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 1591
    .end local v0           #accountId:J
    :catch_0
    move-exception v4

    .line 1593
    .local v4, e:Landroid/os/RemoteException;
    const-string v9, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MessageListFragment RemoteException="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1594
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 1596
    .local v4, e:Landroid/content/OperationApplicationException;
    const-string v9, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MessageListFragment OperationApplicationException="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1607
    .end local v4           #e:Landroid/content/OperationApplicationException;
    .restart local v0       #accountId:J
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1608
    iget-object v9, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v9, v0, v1}, Lcom/android/email/MessagingController;->processPendingActions(J)V

    goto :goto_2

    .line 1611
    .end local v0           #accountId:J
    :cond_4
    return-void
.end method

.method private updateLastSeenMessage(J)V
    .locals 4
    .parameter "messageId"

    .prologue
    .line 1367
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 1368
    .local v0, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v2, :cond_0

    iget-wide v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mLastSeenMessageKey:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 1370
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1371
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "lastSeenMessageKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1372
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1374
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private updateMessageReplyOrForward(JLandroid/content/ContentValues;)V
    .locals 1
    .parameter "messageId"
    .parameter "cv"

    .prologue
    .line 1394
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/email/Controller;->updateMessageSync(JLandroid/content/ContentValues;Z)V

    .line 1395
    return-void
.end method

.method private updateMessageSync(JLandroid/content/ContentValues;)V
    .locals 1
    .parameter "messageId"
    .parameter "cv"

    .prologue
    .line 1383
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/email/Controller;->updateMessageSync(JLandroid/content/ContentValues;Z)V

    .line 1384
    return-void
.end method

.method private updateMessageSync(JLandroid/content/ContentValues;Z)V
    .locals 5
    .parameter "messageId"
    .parameter "cv"
    .parameter "upSync"

    .prologue
    const/4 v4, 0x0

    .line 1406
    if-eqz p4, :cond_1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1408
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, p3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1411
    iget-object v3, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 1412
    .local v0, accountId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_2

    .line 1413
    const-string v3, "===updateMessageSync: account is null, so return immediately ==="

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;)V

    .line 1420
    :cond_0
    :goto_1
    return-void

    .line 1406
    .end local v0           #accountId:J
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1417
    .restart local v0       #accountId:J
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p4, :cond_0

    .line 1418
    iget-object v3, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v3, v0, v1}, Lcom/android/email/MessagingController;->processPendingActions(J)V

    goto :goto_1
.end method

.method private updateProgress(Lcom/android/email/activity/MessageFileViewFragment$OpenFileMessageCallback;I)V
    .locals 0
    .parameter "callback"
    .parameter "progress"

    .prologue
    .line 425
    if-eqz p1, :cond_0

    .line 426
    invoke-interface {p1, p2}, Lcom/android/email/activity/MessageFileViewFragment$OpenFileMessageCallback;->updateProgress(I)V

    .line 428
    :cond_0
    return-void
.end method


# virtual methods
.method public addResultCallback(Lcom/android/email/Controller$Result;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 242
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/android/email/Controller$Result;->setRegistered(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 244
    monitor-exit v1

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelLoadAttachment(J)V
    .locals 4
    .parameter "attachmentId"

    .prologue
    .line 1906
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 1907
    .local v0, attachInfo:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v0, :cond_0

    .line 1915
    :goto_0
    return-void

    .line 1912
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1913
    .local v1, cv:Landroid/content/ContentValues;
    const-string v2, "flags"

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v3, v3, -0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1914
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_0
.end method

.method public cleanupForTest()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController;->removeListener(Lcom/android/email/MessagingListener;)V

    .line 200
    return-void
.end method

.method createMailbox(JI)J
    .locals 4
    .parameter "accountId"
    .parameter "mailboxType"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 865
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    if-gez p3, :cond_1

    .line 866
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid arguments "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 867
    .local v1, mes:Ljava/lang/String;
    const-string v2, "Email"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 870
    .end local v1           #mes:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v2, p3}, Lcom/android/email/Controller;->getMailboxServerName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, p3, v2}, Lcom/android/emailcommon/provider/Mailbox;->newSystemMailbox(JILjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 872
    .local v0, box:Lcom/android/emailcommon/provider/Mailbox;
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 873
    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    return-wide v2
.end method

.method public deleteAccount(JLcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;)V
    .locals 1
    .parameter "accountId"
    .parameter "callback"

    .prologue
    .line 1975
    new-instance v0, Lcom/android/email/Controller$18;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$18;-><init>(Lcom/android/email/Controller;JLcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1984
    return-void
.end method

.method public deleteAccountSync(JLandroid/content/Context;)V
    .locals 6
    .parameter "accountId"
    .parameter "context"

    .prologue
    .line 1991
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1993
    invoke-static {p3, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1994
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_1

    .line 2026
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :cond_0
    :goto_0
    return-void

    .line 1999
    .restart local v0       #account:Lcom/android/emailcommon/provider/Account;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->deleteSyncedDataSync(J)V

    .line 2002
    invoke-static {v0, p3}, Lcom/android/email/mail/Store;->removeInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    .line 2003
    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2004
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2007
    iget-boolean v3, p0, Lcom/android/email/Controller;->mInUnitTests:Z

    if-nez v3, :cond_0

    .line 2012
    invoke-static {p3}, Lcom/android/email/provider/AccountBackupRestore;->backup(Landroid/content/Context;)V

    .line 2013
    invoke-static {p3}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    .line 2014
    invoke-static {p3}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 2015
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 2016
    invoke-static {p3}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    .line 2019
    iget-object v3, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/email/extension/SendNotificationProxy;->getInstance(Landroid/content/Context;)Lcom/mediatek/email/extension/SendNotificationProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/email/extension/SendNotificationProxy;->cancelSendingNotification()V

    .line 2021
    invoke-static {p3}, Lcom/android/email/service/MailService;->actionRescheduleClearOldAttachment(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2023
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v2           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 2024
    .local v1, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v3, "Email"

    const-string v4, "Exception while deleting account"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deleteAttachment(J)V
    .locals 4
    .parameter "attachmentId"

    .prologue
    const/4 v3, 0x0

    .line 1070
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1071
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1072
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1073
    return-void
.end method

.method public deleteAttachmentMessages()V
    .locals 9

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 272
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 274
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "type=257"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 276
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 279
    .local v7, mailboxId:J
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 280
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "mailboxKey=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 284
    .end local v7           #mailboxId:J
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_0

    .line 285
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 284
    :cond_1
    if-eqz v6, :cond_2

    .line 285
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_2
    return-void
.end method

.method public deleteCachedAttachmentsDaysBefore(I)V
    .locals 6
    .parameter "days"

    .prologue
    .line 2944
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/email/Controller;->deleteCachedAttachmentsTimeBefore(J)V

    .line 2946
    return-void
.end method

.method public deleteCachedAttachmentsTimeBefore(J)V
    .locals 16
    .parameter "time"

    .prologue
    .line 2959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2961
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/Controller;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    const-string v5, "(timeStamp < ?) AND (((mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type IN (4, 3, 5))) AND (flagLoaded IN (2,1,4))))"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2966
    .local v11, msgCursor:Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 3003
    :goto_0
    return-void

    .line 2969
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2971
    .local v14, wifiAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "(flags & ?) != 0"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v15, 0x100

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2975
    .local v8, accountCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 2977
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2978
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2982
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    .line 2980
    :cond_1
    :try_start_1
    const-string v3, "Controller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifiAccounts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2982
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2985
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    sub-long p1, v3, v5

    .line 2987
    :cond_3
    :goto_2
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2988
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2989
    .local v12, msgId:J
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2991
    .local v9, accountId:J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2992
    sget-object v4, Lcom/android/email/Controller;->SYNCHRONIZE_LOCK_FOR_RECENT_IDS:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2993
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller;->mRecentOpenedMsgIds:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller;->mRecentOpenedMsgIds:Ljava/util/ArrayList;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2994
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v3, v12, v13, v0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteMsgAttachmentFiles(Landroid/content/Context;JJ)V

    .line 2997
    :cond_5
    monitor-exit v4

    goto :goto_2

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3001
    .end local v9           #accountId:J
    .end local v12           #msgId:J
    :catchall_2
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public deleteMessage(J)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 1079
    new-instance v0, Lcom/android/email/Controller$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$9;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1086
    return-void
.end method

.method deleteMessageSync(J)V
    .locals 11
    .parameter "messageId"

    .prologue
    const/4 v10, 0x0

    .line 1226
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v7, p1, p2}, Lcom/android/emailcommon/provider/Account;->getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1228
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_1

    .line 1265
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x6

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v4

    .line 1236
    .local v4, trashMailboxId:J
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v7, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 1238
    .local v2, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v2, :cond_0

    .line 1242
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8, v9, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 1244
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1245
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1248
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-wide v7, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v7, v7, v4

    if-eqz v7, :cond_2

    iget v7, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    .line 1250
    :cond_2
    invoke-virtual {v3, v6, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1258
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/emailcommon/provider/Account;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1259
    iget-object v7, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v7, v8, v9}, Lcom/android/email/MessagingController;->processPendingActions(J)V

    .line 1262
    :cond_3
    iget v7, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 1263
    iget-object v7, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v7, v8, v9}, Lcom/android/email/MessagingController;->updateSendingNotification(J)V

    goto :goto_0

    .line 1253
    :cond_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1254
    .local v1, cv:Landroid/content/ContentValues;
    const-string v7, "mailboxKey"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1255
    invoke-virtual {v3, v6, v1, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method deleteMessageSyncQuickly(JJJJLjava/util/ArrayList;Z)V
    .locals 9
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "messageId"
    .parameter "trashId"
    .parameter
    .parameter "isBatched"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1176
    .local p9, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-wide/from16 v4, p7

    .line 1177
    .local v4, trashMailboxId:J
    const-wide/16 v7, -0x1

    cmp-long v7, v4, v7

    if-nez v7, :cond_0

    .line 1178
    const/4 v7, 0x6

    invoke-virtual {p0, p1, p2, v7}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v4

    .line 1182
    :cond_0
    const-wide/16 v7, -0x1

    cmp-long v7, p3, v7

    if-nez v7, :cond_1

    .line 1183
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v7, p5, p6}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 1184
    .local v2, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v2, :cond_1

    .line 1213
    .end local v2           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :goto_0
    return-void

    .line 1190
    :cond_1
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v7, p1, p2, p5, p6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 1192
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1193
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1196
    .local v3, resolver:Landroid/content/ContentResolver;
    cmp-long v7, p3, v4

    if-nez v7, :cond_3

    .line 1198
    if-eqz p10, :cond_2

    .line 1199
    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    move-object/from16 v0, p9

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1201
    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1205
    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1206
    .local v1, cv:Landroid/content/ContentValues;
    const-string v7, "mailboxKey"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1207
    if-eqz p10, :cond_4

    .line 1208
    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    move-object/from16 v0, p9

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1210
    :cond_4
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v1, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteMessages(Ljava/util/Set;)V
    .locals 1
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
    .line 1092
    .local p1, messageIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1093
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1096
    :cond_1
    new-instance v0, Lcom/android/email/Controller$10;

    invoke-direct {v0, p0, p1}, Lcom/android/email/Controller$10;-><init>(Lcom/android/email/Controller;Ljava/util/Set;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1107
    return-void
.end method

.method public deleteMessagesQuickly(Ljava/util/Set;)V
    .locals 23
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
    .line 1113
    .local p1, messageIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1114
    .local v13, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1115
    .local v12, accountOfMessage:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/16 v16, 0x1

    .line 1116
    .local v16, isBatched:Z
    const/16 v17, 0x0

    .line 1119
    .local v17, isDeletedFromOutbox:Z
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1120
    .local v10, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1122
    .local v6, messageId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v18

    .line 1124
    .local v18, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v18, :cond_0

    .line 1125
    move-object/from16 v0, v18

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 1126
    .local v2, accountId:J
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 1127
    .local v4, mailboxId:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1130
    const/4 v1, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v21

    .line 1131
    .local v21, trashMailboxId:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v12, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    const/4 v1, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v19

    .line 1135
    .local v19, outboxId:J
    cmp-long v1, v4, v19

    if-nez v1, :cond_1

    .line 1136
    const/16 v17, 0x1

    .line 1139
    .end local v19           #outboxId:J
    .end local v21           #trashMailboxId:J
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v11, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/email/Controller;->deleteMessageSyncQuickly(JJJJLjava/util/ArrayList;Z)V

    goto :goto_0

    .line 1144
    .end local v2           #accountId:J
    .end local v4           #mailboxId:J
    .end local v6           #messageId:J
    .end local v18           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2
    if-eqz v16, :cond_3

    :try_start_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v8, "com.android.email.provider"

    invoke-virtual {v1, v8, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1152
    :cond_3
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1153
    .restart local v2       #accountId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/emailcommon/provider/Account;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v1, v2, v3}, Lcom/android/email/MessagingController;->processPendingActions(J)V

    .line 1157
    :cond_5
    if-eqz v17, :cond_4

    .line 1158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v1, v2, v3}, Lcom/android/email/MessagingController;->updateSendingNotification(J)V

    goto :goto_2

    .line 1147
    .end local v2           #accountId:J
    :catch_0
    move-exception v14

    .line 1148
    .local v14, e:Landroid/os/RemoteException;
    const-string v1, "Controller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemoteException catched: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1149
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v14

    .line 1150
    .local v14, e:Landroid/content/OperationApplicationException;
    const-string v1, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Operate Delete Messages Failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1161
    .end local v14           #e:Landroid/content/OperationApplicationException;
    :cond_6
    return-void
.end method

.method public deleteSyncedDataSync(J)V
    .locals 7
    .parameter "accountId"

    .prologue
    .line 2043
    :try_start_0
    iget-object v5, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v5, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAccountAttachmentFiles(Landroid/content/Context;J)V

    .line 2051
    iget-object v5, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2052
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 2053
    .local v0, accountIdArgs:[Ljava/lang/String;
    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "accountKey=? AND type!=68"

    invoke-virtual {v3, v5, v6, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2055
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "accountKey=?"

    invoke-virtual {v3, v5, v6, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2058
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2059
    .local v1, cv:Landroid/content/ContentValues;
    const-string v5, "syncKey"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2060
    sget-object v5, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id =?"

    invoke-virtual {v3, v5, v1, v6, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2061
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 2062
    const-string v5, "syncKey"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2063
    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "accountKey=?"

    invoke-virtual {v3, v5, v1, v6, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2068
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v4

    .line 2069
    .local v4, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v4, :cond_0

    .line 2070
    invoke-interface {v4, p1, p2}, Lcom/android/emailcommon/service/IEmailService;->deleteAccountPIMData(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2075
    .end local v0           #accountIdArgs:[Ljava/lang/String;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #service:Lcom/android/emailcommon/service/IEmailService;
    :cond_0
    :goto_0
    return-void

    .line 2072
    :catch_0
    move-exception v2

    .line 2073
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "Email"

    const-string v6, "Exception while deleting account synced data"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized findOrCreateMailboxOfType(JI)J
    .locals 7
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    const-wide/16 v3, -0x1

    .line 816
    monitor-enter p0

    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-ltz v5, :cond_0

    if-gez p3, :cond_2

    :cond_0
    move-wide v1, v3

    .line 825
    :cond_1
    :goto_0
    monitor-exit p0

    return-wide v1

    .line 819
    :cond_2
    const-wide/16 v1, -0x1

    .line 821
    .local v1, mailboxId:J
    :try_start_0
    iget-object v5, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v5, p1, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 825
    :goto_1
    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/Controller;->createMailbox(JI)J

    move-result-wide v1

    goto :goto_0

    .line 822
    :catch_0
    move-exception v0

    .line 823
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v5, "Controller"

    const-string v6, "findOrCreateMailboxOfType throw out exception "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 816
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getAttachmentMailbox()Lcom/android/emailcommon/provider/Mailbox;
    .locals 3

    .prologue
    .line 315
    const-string v1, "type=257"

    invoke-direct {p0, v1}, Lcom/android/email/Controller;->getGlobalMailboxWhere(Ljava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 316
    .local v0, m:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v0, :cond_0

    .line 317
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox;

    .end local v0           #m:Lcom/android/emailcommon/provider/Mailbox;
    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 318
    .restart local v0       #m:Lcom/android/emailcommon/provider/Mailbox;
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 319
    const-string v1, "__attachment_mailbox__"

    iput-object v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 320
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 321
    const-string v1, "__attachment_mailbox__"

    iput-object v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 322
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 323
    const/16 v1, 0x101

    iput v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 324
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 326
    :cond_0
    return-object v0
.end method

.method public getNewSearchMailbox(J)Lcom/android/emailcommon/provider/Mailbox;
    .locals 8
    .parameter "accountId"

    .prologue
    const/4 v7, 0x0

    .line 360
    iget-object v4, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    const/16 v5, 0x8

    invoke-static {v4, p1, p2, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 361
    .local v0, m:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_0

    .line 362
    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 364
    .local v2, searchMailboxId:J
    iget-object v4, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 365
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mailboxKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 368
    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 370
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #searchMailboxId:J
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->getSearchMailbox(J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 372
    return-object v0
.end method

.method public getResultCallbacksForTest()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/email/Controller$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method public getSearchMailbox(J)Lcom/android/emailcommon/provider/Mailbox;
    .locals 3
    .parameter "accountId"

    .prologue
    const/16 v2, 0x8

    .line 335
    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, v2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 336
    .local v0, m:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox;

    .end local v0           #m:Lcom/android/emailcommon/provider/Mailbox;
    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 338
    .restart local v0       #m:Lcom/android/emailcommon/provider/Mailbox;
    iput-wide p1, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 339
    const-string v1, "__search_mailbox__"

    iput-object v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 340
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 341
    const-string v1, "__search_mailbox__"

    iput-object v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 342
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 343
    iput v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 344
    iput v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 345
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    .line 346
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 348
    :cond_0
    return-object v0
.end method

.method public isMessagingController(J)Z
    .locals 4
    .parameter "accountId"

    .prologue
    .line 1961
    iget-object v2, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1962
    .local v0, isLegacyController:Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 1963
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 1964
    .local v1, protocol:Ljava/lang/String;
    const-string v2, "pop3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "imap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1965
    iget-object v2, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    .end local v1           #protocol:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 1964
    .restart local v1       #protocol:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isMessagingController(Lcom/android/emailcommon/provider/Account;)Z
    .locals 2
    .parameter "account"

    .prologue
    .line 1954
    if-nez p1, :cond_0

    .line 1955
    const/4 v0, 0x0

    .line 1957
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v0

    goto :goto_0
.end method

.method public loadAttachment(JJJ)V
    .locals 8
    .parameter "attachmentId"
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    .line 1850
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller;->loadAttachment(JJJI)V

    .line 1851
    return-void
.end method

.method public loadAttachment(JJJI)V
    .locals 16
    .parameter "attachmentId"
    .parameter "messageId"
    .parameter "accountId"
    .parameter "requestType"

    .prologue
    .line 1864
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v12

    .line 1865
    .local v12, attachInfo:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v12, :cond_0

    .line 1898
    :goto_0
    return-void

    .line 1869
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v3, v12}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1873
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v15

    .line 1874
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/Controller$Result;

    .line 1875
    .local v2, listener:Lcom/android/email/Controller$Result;
    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-wide/from16 v4, p5

    move-wide/from16 v6, p3

    move-wide/from16 v8, p1

    invoke-virtual/range {v2 .. v11}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJII)V

    goto :goto_1

    .line 1882
    .end local v2           #listener:Lcom/android/email/Controller$Result;
    .end local v14           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1878
    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/Controller$Result;

    .line 1879
    .restart local v2       #listener:Lcom/android/email/Controller$Result;
    const/4 v3, 0x0

    const/16 v10, 0x64

    const/4 v11, 0x0

    move-wide/from16 v4, p5

    move-wide/from16 v6, p3

    move-wide/from16 v8, p1

    invoke-virtual/range {v2 .. v11}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJII)V

    goto :goto_2

    .line 1882
    .end local v2           #listener:Lcom/android/email/Controller$Result;
    :cond_2
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1887
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_3
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1888
    .local v13, cv:Landroid/content/ContentValues;
    iget v3, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v3, v3, -0x3001

    iput v3, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 1890
    const/4 v3, 0x2

    move/from16 v0, p7

    if-ne v0, v3, :cond_5

    .line 1891
    iget v3, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 1895
    :cond_4
    :goto_3
    iget v3, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 1896
    const-string v3, "flags"

    iget v4, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v12, v3, v13}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto/16 :goto_0

    .line 1892
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, p7

    if-ne v0, v3, :cond_4

    .line 1893
    iget v3, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    goto :goto_3
.end method

.method public loadMessageForView(J)V
    .locals 5
    .parameter "messageId"

    .prologue
    .line 751
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 752
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v1, :cond_0

    .line 772
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+++ Fetching partial downloaded message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    invoke-interface {v1, p1, p2}, Lcom/android/emailcommon/service/IEmailService;->fetchMessage(J)V

    .line 786
    .end local v1           #service:Lcom/android/emailcommon/service/IEmailService;
    :goto_0
    return-void

    .line 775
    .restart local v1       #service:Lcom/android/emailcommon/service/IEmailService;
    :cond_0
    const-string v2, "Controller"

    const-string v3, ">>>>> Utility.runAsync loadMessageForView"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    new-instance v2, Lcom/android/email/Controller$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/email/Controller$5;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 783
    .end local v1           #service:Lcom/android/emailcommon/service/IEmailService;
    :catch_0
    move-exception v0

    .line 784
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+++ Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadMessageFromUri(Landroid/net/Uri;Lcom/android/email/activity/MessageFileViewFragment$OpenFileMessageCallback;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 11
    .parameter "uri"
    .parameter "callback"

    .prologue
    const/4 v10, 0x0

    .line 384
    invoke-virtual {p0}, Lcom/android/email/Controller;->getAttachmentMailbox()Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v9

    .line 385
    .local v9, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/email/Controller;->updateProgress(Lcom/android/email/activity/MessageFileViewFragment$OpenFileMessageCallback;I)V

    .line 386
    if-nez v9, :cond_0

    move-object v2, v10

    .line 420
    :goto_0
    return-object v2

    .line 390
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 392
    .local v7, is:Ljava/io/InputStream;
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v7           #is:Ljava/io/InputStream;
    .local v8, is:Ljava/io/InputStream;
    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, p2, v2}, Lcom/android/email/Controller;->updateProgress(Lcom/android/email/activity/MessageFileViewFragment$OpenFileMessageCallback;I)V

    .line 396
    new-instance v1, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "__attachment_message__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 398
    .local v1, pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    invoke-virtual {v1, v8}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->parse(Ljava/io/InputStream;)V

    .line 399
    const/4 v2, 0x2

    invoke-direct {p0, p2, v2}, Lcom/android/email/Controller;->updateProgress(Lcom/android/email/activity/MessageFileViewFragment$OpenFileMessageCallback;I)V

    .line 401
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 402
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    const-wide/16 v2, 0x0

    iget-wide v4, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static/range {v0 .. v5}, Lcom/android/email/LegacyConversions;->updateMessageFields(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJ)Z

    .line 404
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 406
    iget-object v2, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;ILandroid/content/Context;)V

    .line 409
    const/4 v2, 0x3

    invoke-direct {p0, p2, v2}, Lcom/android/email/Controller;->updateProgress(Lcom/android/email/activity/MessageFileViewFragment$OpenFileMessageCallback;I)V

    .line 410
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 415
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 417
    .end local v0           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v1           #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    .end local v8           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .line 418
    .local v6, e:Ljava/io/IOException;
    const-string v2, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException catched: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6           #e:Ljava/io/IOException;
    :goto_1
    move-object v2, v10

    .line 420
    goto :goto_0

    .line 411
    .restart local v8       #is:Ljava/io/InputStream;
    :catch_1
    move-exception v6

    .line 412
    .local v6, e:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_3
    const-string v2, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageingException catched: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 415
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_1

    .end local v6           #e:Lcom/android/emailcommon/mail/MessagingException;
    :catchall_0
    move-exception v2

    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public loadMoreMessages(J)V
    .locals 1
    .parameter "mailboxId"

    .prologue
    .line 1009
    new-instance v0, Lcom/android/email/Controller$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$8;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1047
    return-void
.end method

.method public markForTest(Z)V
    .locals 0
    .parameter "inUnitTests"

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/email/Controller;->mInUnitTests:Z

    .line 190
    return-void
.end method

.method public moveMessages([JJ)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 1
    .parameter "messageIds"
    .parameter "newMailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JJ)",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1281
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 1282
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1284
    :cond_1
    new-instance v0, Lcom/android/email/Controller$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$11;-><init>(Lcom/android/email/Controller;[JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public recordMessageIdSync(J)V
    .locals 5
    .parameter "messageId"

    .prologue
    const/16 v4, 0xa

    .line 153
    sget-object v2, Lcom/android/email/Controller;->SYNCHRONIZE_LOCK_FOR_RECENT_IDS:Ljava/lang/Object;

    monitor-enter v2

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller;->mRecentOpenedMsgIds:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/email/Controller;->mRecentOpenedMsgIds:Ljava/util/ArrayList;

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/email/Controller;->mRecentOpenedMsgIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/android/email/Controller;->mRecentOpenedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 159
    .local v0, size:I
    if-lt v0, v4, :cond_2

    .line 160
    iget-object v1, p0, Lcom/android/email/Controller;->mRecentOpenedMsgIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Lcom/android/email/Controller;->mRecentOpenedMsgIds:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 166
    .end local v0           #size:I
    :cond_1
    :goto_0
    const-string v1, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recent Ids: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/Controller;->mRecentOpenedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    monitor-exit v2

    .line 168
    return-void

    .line 163
    .restart local v0       #size:I
    :cond_2
    iget-object v1, p0, Lcom/android/email/Controller;->mRecentOpenedMsgIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 167
    .end local v0           #size:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeResultCallback(Lcom/android/email/Controller$Result;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 257
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/android/email/Controller$Result;->setRegistered(Z)V

    .line 258
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 259
    monitor-exit v1

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetVisibleLimits()V
    .locals 2

    .prologue
    .line 975
    const-string v0, "Controller"

    const-string v1, ">>>>> Utility.runAsync resetVisibleLimits"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    new-instance v0, Lcom/android/email/Controller$7;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$7;-><init>(Lcom/android/email/Controller;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1000
    return-void
.end method

.method public saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .locals 5
    .parameter "message"
    .parameter "mailboxType"

    .prologue
    .line 796
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 797
    .local v0, accountId:J
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v2

    .line 798
    .local v2, mailboxId:J
    iput-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 799
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 800
    return-void
.end method

.method public searchMessages(JLcom/android/emailcommon/service/SearchParams;)I
    .locals 20
    .parameter "accountId"
    .parameter "searchParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1706
    invoke-virtual/range {p0 .. p2}, Lcom/android/email/Controller;->getSearchMailbox(J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v18

    .line 1707
    .local v18, searchMailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v18, :cond_1

    .line 1708
    const/16 v19, 0x0

    .line 1766
    :cond_0
    :goto_0
    return v19

    .line 1709
    :cond_1
    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 1711
    .local v5, searchMailboxId:J
    sget-object v2, Lcom/android/email/Controller;->sSearchParamsMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    if-nez v2, :cond_2

    .line 1715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 1716
    .local v17, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailboxKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1717
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1719
    .local v15, cv:Landroid/content/ContentValues;
    const-string v2, "displayName"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v15, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1723
    .end local v15           #cv:Landroid/content/ContentValues;
    .end local v17           #resolver:Landroid/content/ContentResolver;
    :cond_2
    const/16 v19, -0x1

    .line 1724
    .local v19, searchResultCount:I
    invoke-direct/range {p0 .. p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 1725
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v1, :cond_5

    .line 1727
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1728
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Search: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    :cond_3
    :try_start_0
    instance-of v2, v1, Lcom/android/emailcommon/service/EmailServiceProxy;

    if-eqz v2, :cond_4

    .line 1736
    const/16 v13, 0xb4

    .line 1737
    .local v13, LONGER_TIMEOUT:I
    move-object v0, v1

    check-cast v0, Lcom/android/emailcommon/service/EmailServiceProxy;

    move-object v2, v0

    const/16 v3, 0xb4

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/service/ServiceProxy;->setTimeout(I)Lcom/android/emailcommon/service/ServiceProxy;

    .end local v13           #LONGER_TIMEOUT:I
    :cond_4
    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    .line 1739
    invoke-interface/range {v1 .. v6}, Lcom/android/emailcommon/service/IEmailService;->searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 1763
    :goto_1
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1764
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Search Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1741
    :catch_0
    move-exception v16

    .line 1745
    .local v16, e:Landroid/os/RemoteException;
    const-string v2, "searchMessages"

    const-string v3, "RemoteException"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1746
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1750
    .end local v16           #e:Landroid/os/RemoteException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v14

    .line 1751
    .local v14, actualMailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v14, :cond_6

    .line 1752
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find mailbox "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-wide v7, v0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to search in with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1757
    :cond_6
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 1758
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Search: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    move-wide/from16 v8, p1

    move-object/from16 v10, p3

    move-wide v11, v5

    invoke-virtual/range {v7 .. v12}, Lcom/android/email/MessagingController;->searchMailbox(JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v19

    goto/16 :goto_1
.end method

.method public searchMore(J)V
    .locals 3
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1688
    sget-object v1, Lcom/android/email/Controller;->sSearchParamsMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/service/SearchParams;

    .line 1689
    .local v0, params:Lcom/android/emailcommon/service/SearchParams;
    if-nez v0, :cond_0

    .line 1693
    :goto_0
    return-void

    .line 1691
    :cond_0
    iget v1, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    iget v2, v0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 1692
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/Controller;->searchMessages(JLcom/android/emailcommon/service/SearchParams;)I

    goto :goto_0
.end method

.method public sendMailForBT(JLandroid/net/Uri;Lcom/android/emailcommon/service/EmailExternalCalls;Z)V
    .locals 10
    .parameter "accountId"
    .parameter "uri"
    .parameter "callback"
    .parameter "saveToSent"

    .prologue
    .line 675
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    .line 676
    .local v0, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v0, :cond_0

    .line 679
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v3

    .local v3, mailboxId:J
    move-wide v1, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 680
    invoke-interface/range {v0 .. v7}, Lcom/android/emailcommon/service/IEmailService;->sendMessageForBT(JJLandroid/net/Uri;Lcom/android/emailcommon/service/EmailExternalCalls;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    .end local v3           #mailboxId:J
    :goto_0
    return-void

    .line 681
    :catch_0
    move-exception v8

    .line 682
    .local v8, e:Landroid/os/RemoteException;
    const-string v1, "Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IEmailService sendMail RemoteException = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 687
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/email/Controller;->sendMessageForBT(JLandroid/net/Uri;Lcom/android/emailcommon/service/EmailExternalCalls;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 688
    :catch_1
    move-exception v9

    .line 689
    .local v9, re:Landroid/os/RemoteException;
    const-string v1, "Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMAP sendMail exception "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendMeetingResponse(JI)V
    .locals 4
    .parameter "messageId"
    .parameter "response"

    .prologue
    .line 1777
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 1778
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v1, :cond_0

    .line 1781
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/android/emailcommon/service/IEmailService;->sendMeetingResponse(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1789
    :cond_0
    :goto_0
    return-void

    .line 1782
    :catch_0
    move-exception v0

    .line 1786
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "onDownloadAttachment"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendMessage(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 16
    .parameter "message"

    .prologue
    .line 886
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 887
    .local v10, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 888
    .local v1, accountId:J
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 889
    .local v6, messageId:J
    const-wide/16 v14, -0x1

    cmp-long v14, v1, v14

    if-nez v14, :cond_0

    .line 890
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide v1

    .line 892
    :cond_0
    const-wide/16 v14, -0x1

    cmp-long v14, v1, v14

    if-nez v14, :cond_2

    .line 894
    sget-boolean v14, Lcom/android/emailcommon/Logging;->LOGD:Z

    if-eqz v14, :cond_1

    .line 895
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "no account found for message "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;)V

    .line 918
    :cond_1
    :goto_0
    return-void

    .line 901
    :cond_2
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v8

    .line 902
    .local v8, outboxId:J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 903
    .local v3, cv:Landroid/content/ContentValues;
    const-string v14, "mailboxKey"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 906
    sget-object v14, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 907
    .local v13, uri:Landroid/net/Uri;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v3, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 910
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    .line 911
    .local v11, sourceKey:J
    const-wide/16 v14, -0x1

    cmp-long v14, v11, v14

    if-eqz v14, :cond_3

    .line 912
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_4

    const/4 v5, 0x1

    .line 913
    .local v5, isReply:Z
    :goto_1
    if-eqz v5, :cond_5

    const/high16 v4, 0x4

    .line 914
    .local v4, flagUpdate:I
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v4}, Lcom/android/email/Controller;->setMessageAnsweredOrForwarded(JI)V

    .line 917
    .end local v4           #flagUpdate:I
    .end local v5           #isReply:Z
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->sendPendingMessages(J)V

    goto :goto_0

    .line 912
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 913
    .restart local v5       #isReply:Z
    :cond_5
    const/high16 v4, 0x8

    goto :goto_2
.end method

.method public sendMessageForBT(JLandroid/net/Uri;Lcom/android/emailcommon/service/EmailExternalCalls;)I
    .locals 31
    .parameter "accountId"
    .parameter "uri"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 556
    const/4 v10, 0x0

    .line 557
    .local v10, inputStream:Ljava/io/InputStream;
    const/16 v20, 0x0

    .line 559
    .local v20, mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    const/16 v23, 0x0

    .line 560
    .local v23, result:I
    const/16 v25, 0x1

    .line 563
    .local v25, resultType:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v11, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v14

    .line 564
    .local v14, account:Lcom/android/emailcommon/provider/Account;
    if-nez v14, :cond_0

    .line 565
    const-string v11, "Controller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AccountID["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] not exist in DB."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/16 v23, 0x1

    .line 567
    move-object/from16 v0, p4

    move/from16 v1, v23

    move-wide/from16 v2, p1

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/EmailExternalCalls;->sendCallback(IJI)V

    move/from16 v24, v23

    .line 663
    .end local v23           #result:I
    .local v24, result:I
    :goto_0
    return v24

    .line 573
    .end local v24           #result:I
    .restart local v23       #result:I
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 574
    new-instance v21, Lcom/android/emailcommon/internet/MimeMessage;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Lcom/android/emailcommon/internet/MimeMessage;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_5

    .line 575
    .end local v20           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .local v21, mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    :try_start_1
    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lcom/android/emailcommon/service/EmailExternalUtils;->checkFromAddress(Lcom/android/emailcommon/internet/MimeMessage;Lcom/android/emailcommon/provider/Account;)Z

    move-result v26

    .line 576
    .local v26, same:Z
    if-nez v26, :cond_1

    .line 578
    const-string v11, "Controller"

    const-string v12, "The MimeMessage FromAdress is not same with account address "

    invoke-static {v11, v12}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_f

    .line 591
    :cond_1
    if-eqz v10, :cond_2

    .line 592
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 597
    :cond_2
    :goto_1
    const/4 v11, 0x1

    move/from16 v0, v23

    if-ne v0, v11, :cond_8

    .line 598
    move-object/from16 v0, p4

    move/from16 v1, v23

    move-wide/from16 v2, p1

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/EmailExternalCalls;->sendCallback(IJI)V

    move-object/from16 v20, v21

    .end local v21           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v20       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    move/from16 v24, v23

    .line 599
    .end local v23           #result:I
    .restart local v24       #result:I
    goto :goto_0

    .line 594
    .end local v20           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .end local v24           #result:I
    .restart local v21       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v23       #result:I
    :catch_0
    move-exception v17

    .line 595
    .local v17, e:Ljava/io/IOException;
    const-string v11, "Controller"

    const-string v12, "1 Error while closing fie."

    move-object/from16 v0, v17

    invoke-static {v11, v12, v0}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 580
    .end local v17           #e:Ljava/io/IOException;
    .end local v21           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .end local v26           #same:Z
    .restart local v20       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    :catch_1
    move-exception v17

    .line 581
    .local v17, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v11, "Controller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "1 Open file failed,uri:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v17

    invoke-static {v11, v12, v0}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 582
    const/16 v23, 0x1

    .line 591
    if-eqz v10, :cond_3

    .line 592
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 597
    .end local v17           #e:Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    const/4 v11, 0x1

    move/from16 v0, v23

    if-ne v0, v11, :cond_9

    .line 598
    move-object/from16 v0, p4

    move/from16 v1, v23

    move-wide/from16 v2, p1

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/EmailExternalCalls;->sendCallback(IJI)V

    move/from16 v24, v23

    .line 599
    .end local v23           #result:I
    .restart local v24       #result:I
    goto :goto_0

    .line 594
    .end local v24           #result:I
    .restart local v17       #e:Ljava/io/FileNotFoundException;
    .restart local v23       #result:I
    :catch_2
    move-exception v17

    .line 595
    .local v17, e:Ljava/io/IOException;
    const-string v11, "Controller"

    const-string v12, "1 Error while closing fie."

    move-object/from16 v0, v17

    invoke-static {v11, v12, v0}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 583
    .end local v17           #e:Ljava/io/IOException;
    :catch_3
    move-exception v17

    .line 584
    .restart local v17       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v11, "Controller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error while parsing inputstream:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 585
    const/16 v23, 0x1

    .line 591
    if-eqz v10, :cond_4

    .line 592
    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 597
    :cond_4
    :goto_5
    const/4 v11, 0x1

    move/from16 v0, v23

    if-ne v0, v11, :cond_9

    .line 598
    move-object/from16 v0, p4

    move/from16 v1, v23

    move-wide/from16 v2, p1

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/EmailExternalCalls;->sendCallback(IJI)V

    move/from16 v24, v23

    .line 599
    .end local v23           #result:I
    .restart local v24       #result:I
    goto/16 :goto_0

    .line 594
    .end local v24           #result:I
    .restart local v23       #result:I
    :catch_4
    move-exception v17

    .line 595
    const-string v11, "Controller"

    const-string v12, "1 Error while closing fie."

    move-object/from16 v0, v17

    invoke-static {v11, v12, v0}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 586
    .end local v17           #e:Ljava/io/IOException;
    :catch_5
    move-exception v17

    .line 587
    .local v17, e:Lcom/android/emailcommon/mail/MessagingException;
    :goto_6
    :try_start_7
    const-string v11, "Controller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error while parsing inputstream:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 588
    const/16 v23, 0x1

    .line 591
    if-eqz v10, :cond_5

    .line 592
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 597
    .end local v17           #e:Lcom/android/emailcommon/mail/MessagingException;
    :cond_5
    :goto_7
    const/4 v11, 0x1

    move/from16 v0, v23

    if-ne v0, v11, :cond_9

    .line 598
    move-object/from16 v0, p4

    move/from16 v1, v23

    move-wide/from16 v2, p1

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/EmailExternalCalls;->sendCallback(IJI)V

    move/from16 v24, v23

    .line 599
    .end local v23           #result:I
    .restart local v24       #result:I
    goto/16 :goto_0

    .line 594
    .end local v24           #result:I
    .restart local v17       #e:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v23       #result:I
    :catch_6
    move-exception v17

    .line 595
    .local v17, e:Ljava/io/IOException;
    const-string v11, "Controller"

    const-string v12, "1 Error while closing fie."

    move-object/from16 v0, v17

    invoke-static {v11, v12, v0}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 590
    .end local v17           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 591
    :goto_8
    if-eqz v10, :cond_6

    .line 592
    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 597
    :cond_6
    :goto_9
    const/4 v12, 0x1

    move/from16 v0, v23

    if-ne v0, v12, :cond_7

    .line 598
    move-object/from16 v0, p4

    move/from16 v1, v23

    move-wide/from16 v2, p1

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/EmailExternalCalls;->sendCallback(IJI)V

    move/from16 v24, v23

    .line 599
    .end local v23           #result:I
    .restart local v24       #result:I
    goto/16 :goto_0

    .line 594
    .end local v24           #result:I
    .restart local v23       #result:I
    :catch_7
    move-exception v17

    .line 595
    .restart local v17       #e:Ljava/io/IOException;
    const-string v12, "Controller"

    const-string v13, "1 Error while closing fie."

    move-object/from16 v0, v17

    invoke-static {v12, v13, v0}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 599
    .end local v17           #e:Ljava/io/IOException;
    :cond_7
    throw v11

    .end local v20           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v21       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v26       #same:Z
    :cond_8
    move-object/from16 v20, v21

    .line 605
    .end local v21           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .end local v26           #same:Z
    .restart local v20       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    :cond_9
    :try_start_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_8

    move-result-object v10

    .line 609
    :goto_a
    if-nez v10, :cond_a

    .line 610
    move-object/from16 v0, p4

    move/from16 v1, v23

    move-wide/from16 v2, p1

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/EmailExternalCalls;->sendCallback(IJI)V

    move/from16 v24, v23

    .line 611
    .end local v23           #result:I
    .restart local v24       #result:I
    goto/16 :goto_0

    .line 606
    .end local v24           #result:I
    .restart local v23       #result:I
    :catch_8
    move-exception v17

    .line 607
    .local v17, e:Ljava/io/FileNotFoundException;
    const-string v11, "Controller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "2 Open file failed,uri:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v17

    invoke-static {v11, v12, v0}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 614
    .end local v17           #e:Ljava/io/FileNotFoundException;
    :cond_a
    const/16 v22, 0x0

    .line 615
    .local v22, needCloseFile:Z
    const/16 v28, 0x1

    .line 617
    .local v28, success:Z
    :try_start_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v11, v14}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;

    move-result-object v27

    .line 618
    .local v27, sender:Lcom/android/email/mail/Sender;
    move-object/from16 v0, v27

    instance-of v11, v0, Lcom/android/email/mail/transport/SmtpSender;

    if-eqz v11, :cond_b

    .line 619
    const/16 v22, 0x1

    .line 624
    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/internet/MimeMessage;->getFrom()[Lcom/android/emailcommon/mail/Address;

    move-result-object v18

    .line 625
    .local v18, from:[Lcom/android/emailcommon/mail/Address;
    sget-object v11, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/internet/MimeMessage;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v29

    .line 627
    .local v29, to:[Lcom/android/emailcommon/mail/Address;
    sget-object v11, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/internet/MimeMessage;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v16

    .line 629
    .local v16, cc:[Lcom/android/emailcommon/mail/Address;
    sget-object v11, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/internet/MimeMessage;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v15

    .line 631
    .local v15, bcc:[Lcom/android/emailcommon/mail/Address;
    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v6

    .line 632
    .local v6, fromAdr:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v7

    .line 633
    .local v7, toAdr:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v8

    .line 634
    .local v8, ccAdr:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v9

    .line 635
    .local v9, bccAdr:Ljava/lang/String;
    const-string v11, "Controller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Address TO:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",CC :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",BCC:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    move-object/from16 v0, v27

    check-cast v0, Lcom/android/email/mail/transport/SmtpSender;

    move-object v5, v0

    .local v5, smtp:Lcom/android/email/mail/transport/SmtpSender;
    move-object/from16 v11, p4

    move-wide/from16 v12, p1

    .line 637
    invoke-virtual/range {v5 .. v13}, Lcom/android/email/mail/transport/SmtpSender;->sendMailStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/android/emailcommon/service/EmailExternalCalls;J)Z

    move-result v28

    .line 639
    if-eqz v28, :cond_e

    const/16 v23, 0x0

    .line 641
    :goto_b
    const-string v11, "Controller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SmtpSender send message result success = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_c

    .line 651
    .end local v5           #smtp:Lcom/android/email/mail/transport/SmtpSender;
    .end local v6           #fromAdr:Ljava/lang/String;
    .end local v7           #toAdr:Ljava/lang/String;
    .end local v8           #ccAdr:Ljava/lang/String;
    .end local v9           #bccAdr:Ljava/lang/String;
    .end local v15           #bcc:[Lcom/android/emailcommon/mail/Address;
    .end local v16           #cc:[Lcom/android/emailcommon/mail/Address;
    .end local v18           #from:[Lcom/android/emailcommon/mail/Address;
    .end local v29           #to:[Lcom/android/emailcommon/mail/Address;
    :cond_b
    if-eqz v10, :cond_c

    if-eqz v22, :cond_c

    .line 652
    :try_start_c
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 657
    :cond_c
    :goto_c
    const-string v11, "Controller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Send SMTP message result for result = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " accountID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " resultType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const/4 v11, 0x1

    move/from16 v0, v23

    if-ne v11, v0, :cond_d

    .line 660
    move-object/from16 v0, p4

    move/from16 v1, v23

    move-wide/from16 v2, p1

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/EmailExternalCalls;->sendCallback(IJI)V

    .end local v27           #sender:Lcom/android/email/mail/Sender;
    :cond_d
    :goto_d
    move/from16 v24, v23

    .line 663
    .end local v23           #result:I
    .restart local v24       #result:I
    goto/16 :goto_0

    .line 639
    .end local v24           #result:I
    .restart local v5       #smtp:Lcom/android/email/mail/transport/SmtpSender;
    .restart local v6       #fromAdr:Ljava/lang/String;
    .restart local v7       #toAdr:Ljava/lang/String;
    .restart local v8       #ccAdr:Ljava/lang/String;
    .restart local v9       #bccAdr:Ljava/lang/String;
    .restart local v15       #bcc:[Lcom/android/emailcommon/mail/Address;
    .restart local v16       #cc:[Lcom/android/emailcommon/mail/Address;
    .restart local v18       #from:[Lcom/android/emailcommon/mail/Address;
    .restart local v23       #result:I
    .restart local v27       #sender:Lcom/android/email/mail/Sender;
    .restart local v29       #to:[Lcom/android/emailcommon/mail/Address;
    :cond_e
    const/16 v23, 0x1

    goto :goto_b

    .line 654
    .end local v5           #smtp:Lcom/android/email/mail/transport/SmtpSender;
    .end local v6           #fromAdr:Ljava/lang/String;
    .end local v7           #toAdr:Ljava/lang/String;
    .end local v8           #ccAdr:Ljava/lang/String;
    .end local v9           #bccAdr:Ljava/lang/String;
    .end local v15           #bcc:[Lcom/android/emailcommon/mail/Address;
    .end local v16           #cc:[Lcom/android/emailcommon/mail/Address;
    .end local v18           #from:[Lcom/android/emailcommon/mail/Address;
    .end local v29           #to:[Lcom/android/emailcommon/mail/Address;
    :catch_9
    move-exception v17

    .line 655
    .local v17, e:Ljava/io/IOException;
    const-string v11, "Controller"

    const-string v12, "2 Error while closing fie"

    move-object/from16 v0, v17

    invoke-static {v11, v12, v0}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 643
    .end local v17           #e:Ljava/io/IOException;
    .end local v27           #sender:Lcom/android/email/mail/Sender;
    :catch_a
    move-exception v19

    .line 644
    .local v19, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_d
    const-string v11, "Controller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error while sending message[MessagingException]:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 645
    const/16 v23, 0x1

    .line 651
    if-eqz v10, :cond_f

    if-eqz v22, :cond_f

    .line 652
    :try_start_e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 657
    :cond_f
    :goto_e
    const-string v11, "Controller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Send SMTP message result for result = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " accountID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " resultType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const/4 v11, 0x1

    move/from16 v0, v23

    if-ne v11, v0, :cond_d

    .line 660
    move-object/from16 v0, p4

    move/from16 v1, v23

    move-wide/from16 v2, p1

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/EmailExternalCalls;->sendCallback(IJI)V

    goto :goto_d

    .line 654
    :catch_b
    move-exception v17

    .line 655
    .restart local v17       #e:Ljava/io/IOException;
    const-string v11, "Controller"

    const-string v12, "2 Error while closing fie"

    move-object/from16 v0, v17

    invoke-static {v11, v12, v0}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 646
    .end local v17           #e:Ljava/io/IOException;
    .end local v19           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_c
    move-exception v17

    .line 647
    .local v17, e:Landroid/os/RemoteException;
    :try_start_f
    const-string v11, "Controller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error while sending message:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 648
    const/16 v23, 0x1

    .line 651
    if-eqz v10, :cond_10

    if-eqz v22, :cond_10

    .line 652
    :try_start_10
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 657
    .end local v17           #e:Landroid/os/RemoteException;
    :cond_10
    :goto_f
    const-string v11, "Controller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Send SMTP message result for result = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " accountID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " resultType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const/4 v11, 0x1

    move/from16 v0, v23

    if-ne v11, v0, :cond_d

    .line 660
    move-object/from16 v0, p4

    move/from16 v1, v23

    move-wide/from16 v2, p1

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/EmailExternalCalls;->sendCallback(IJI)V

    goto/16 :goto_d

    .line 654
    .restart local v17       #e:Landroid/os/RemoteException;
    :catch_d
    move-exception v17

    .line 655
    .local v17, e:Ljava/io/IOException;
    const-string v11, "Controller"

    const-string v12, "2 Error while closing fie"

    move-object/from16 v0, v17

    invoke-static {v11, v12, v0}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 650
    .end local v17           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v11

    .line 651
    if-eqz v10, :cond_11

    if-eqz v22, :cond_11

    .line 652
    :try_start_11
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    .line 657
    :cond_11
    :goto_10
    const-string v12, "Controller"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Send SMTP message result for result = "

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v30, " accountID = "

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v30, " resultType = "

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const/4 v12, 0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_12

    .line 660
    move-object/from16 v0, p4

    move/from16 v1, v23

    move-wide/from16 v2, p1

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/EmailExternalCalls;->sendCallback(IJI)V

    :cond_12
    throw v11

    .line 654
    :catch_e
    move-exception v17

    .line 655
    .restart local v17       #e:Ljava/io/IOException;
    const-string v12, "Controller"

    const-string v13, "2 Error while closing fie"

    move-object/from16 v0, v17

    invoke-static {v12, v13, v0}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 590
    .end local v17           #e:Ljava/io/IOException;
    .end local v20           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .end local v22           #needCloseFile:Z
    .end local v28           #success:Z
    .restart local v21       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    :catchall_2
    move-exception v11

    move-object/from16 v20, v21

    .end local v21           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v20       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    goto/16 :goto_8

    .line 586
    .end local v20           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v21       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    :catch_f
    move-exception v17

    move-object/from16 v20, v21

    .end local v21           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v20       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    goto/16 :goto_6

    .line 583
    .end local v20           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v21       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    :catch_10
    move-exception v17

    move-object/from16 v20, v21

    .end local v21           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v20       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    goto/16 :goto_4

    .line 580
    .end local v20           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v21       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    :catch_11
    move-exception v17

    move-object/from16 v20, v21

    .end local v21           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v20       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    goto/16 :goto_2
.end method

.method public sendPendingMessages(J)V
    .locals 8
    .parameter "accountId"

    .prologue
    .line 942
    iget-object v5, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-static {v5, p1, p2, v6}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    .line 944
    .local v1, outboxId:J
    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-nez v5, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 948
    :cond_1
    iget-object v5, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    .line 949
    .local v3, pref:Lcom/android/email/Preferences;
    invoke-virtual {v3}, Lcom/android/email/Preferences;->checkLowStorage()V

    .line 950
    invoke-virtual {v3}, Lcom/android/email/Preferences;->getLowStorage()Z

    move-result v5

    if-nez v5, :cond_0

    .line 954
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v4

    .line 955
    .local v4, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v4, :cond_2

    .line 958
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v4, v1, v2, v5}, Lcom/android/emailcommon/service/IEmailService;->startSync(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 959
    :catch_0
    move-exception v0

    .line 962
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "updateMailbox"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 966
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->sendPendingMessagesSmtp(J)V

    goto :goto_0
.end method

.method public serviceCheckMail(JJJ)V
    .locals 9
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "tag"

    .prologue
    .line 482
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v8

    .line 483
    .local v8, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v8, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller$LegacyListener;->checkMailFinished(Landroid/content/Context;JJJ)V

    .line 505
    :goto_0
    return-void

    .line 497
    :cond_0
    const-string v0, "Controller"

    const-string v1, ">>>>> Utility.runAsync serviceCheckMail"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    new-instance v0, Lcom/android/email/Controller$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Controller$2;-><init>(Lcom/android/email/Controller;JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public serviceLogging(I)V
    .locals 5
    .parameter "debugFlags"

    .prologue
    .line 435
    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/service/EmailServiceUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 437
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/emailcommon/service/IEmailService;->setLogging(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 441
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "setLogging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageAnsweredOrForwarded(JI)V
    .locals 1
    .parameter "messageId"
    .parameter "flag"

    .prologue
    .line 1435
    new-instance v0, Lcom/android/email/Controller$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$13;-><init>(Lcom/android/email/Controller;JI)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1452
    return-void
.end method

.method public setMessageFavorite(JZ)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 1
    .parameter "messageId"
    .parameter "isFavorite"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1463
    new-instance v0, Lcom/android/email/Controller$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$14;-><init>(Lcom/android/email/Controller;JZ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public setMessageFavoriteAsync(Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter
    .parameter "isFavorite"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1496
    .local p1, messageIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v0, "flagFavorite"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/email/Controller;->copySetValuesIfSearchBox(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 1497
    const-string v0, "flagFavorite"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/email/Controller;->setMessagesBooleanValuesByOrderWindow(Ljava/util/ArrayList;Ljava/lang/String;Z)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1498
    return-void
.end method

.method public setMessageFavoriteSync(JZ)V
    .locals 1
    .parameter "messageId"
    .parameter "isFavorite"

    .prologue
    .line 1485
    const-string v0, "flagFavorite"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/email/Controller;->copySetValueIfSearchBox(JLjava/lang/String;Z)V

    .line 1486
    const-string v0, "flagFavorite"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/email/Controller;->setMessageBooleanSync(JLjava/lang/String;Z)V

    .line 1487
    return-void
.end method

.method public setMessageRead(JZ)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 1
    .parameter "messageId"
    .parameter "isRead"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1339
    new-instance v0, Lcom/android/email/Controller$12;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/email/Controller$12;-><init>(Lcom/android/email/Controller;ZJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public setMessageReadAsync(Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter
    .parameter "isRead"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1326
    .local p1, messageIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v0, "flagRead"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/email/Controller;->copySetValuesIfSearchBox(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 1327
    const-string v0, "flagRead"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/email/Controller;->setMessagesBooleanValuesByOrderWindow(Ljava/util/ArrayList;Ljava/lang/String;Z)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1328
    return-void
.end method

.method public setMessageReadSync(JZ)V
    .locals 1
    .parameter "messageId"
    .parameter "isRead"

    .prologue
    .line 1315
    const-string v0, "flagRead"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/email/Controller;->copySetValueIfSearchBox(JLjava/lang/String;Z)V

    .line 1316
    const-string v0, "flagRead"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/email/Controller;->setMessageBooleanSync(JLjava/lang/String;Z)V

    .line 1317
    return-void
.end method

.method public setMessagesBooleanValues(Ljava/util/Set;Ljava/lang/String;Z)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 1
    .parameter
    .parameter "columnName"
    .parameter "columnValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1543
    .local p1, messageIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/Controller$16;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$16;-><init>(Lcom/android/email/Controller;Ljava/util/Set;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public setMessagesBooleanValuesByOrderWindow(Ljava/util/ArrayList;Ljava/lang/String;Z)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 1
    .parameter
    .parameter "columnName"
    .parameter "columnValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1509
    .local p1, messageIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/Controller$15;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$15;-><init>(Lcom/android/email/Controller;Ljava/util/ArrayList;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public setProviderContext(Landroid/content/Context;)V
    .locals 0
    .parameter "providerContext"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    .line 231
    return-void
.end method

.method public stopEmailService(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 733
    invoke-static {p1}, Lcom/android/email/service/MailService;->actionCancel(Landroid/content/Context;)V

    .line 734
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v0, p1}, Lcom/android/email/MessagingController;->stopSynchronize(Landroid/content/Context;)V

    .line 735
    return-void
.end method

.method public stopOof(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    .line 1829
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 1830
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v1, :cond_0

    .line 1833
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/emailcommon/service/IEmailService;->stopOof(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1838
    :cond_0
    :goto_0
    return-void

    .line 1834
    :catch_0
    move-exception v0

    .line 1835
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "onStopOof"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public syncOof(JLcom/android/emailcommon/service/OofParams;Z)Lcom/android/emailcommon/service/OofParams;
    .locals 16
    .parameter "accountId"
    .parameter "oofParams"
    .parameter "isGet"

    .prologue
    .line 1799
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->hasConnectivity(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1800
    const-string v4, "Controller"

    const-string v5, "syncOof has no Connectivity."

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    new-instance v4, Lcom/android/emailcommon/service/OofParams;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/android/emailcommon/service/OofParams;-><init>(IIJJILjava/lang/String;)V

    .line 1819
    :goto_0
    return-object v4

    .line 1805
    :cond_0
    const/4 v14, 0x0

    .line 1806
    .local v14, op:Lcom/android/emailcommon/service/OofParams;
    invoke-direct/range {p0 .. p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v15

    .line 1807
    .local v15, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v15, :cond_2

    .line 1811
    :try_start_0
    instance-of v4, v15, Lcom/android/emailcommon/service/EmailServiceProxy;

    if-eqz v4, :cond_1

    .line 1812
    move-object v0, v15

    check-cast v0, Lcom/android/emailcommon/service/EmailServiceProxy;

    move-object v4, v0

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/service/ServiceProxy;->setTimeout(I)Lcom/android/emailcommon/service/ServiceProxy;

    .line 1814
    :cond_1
    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v15, v0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService;->syncOof(JLcom/android/emailcommon/service/OofParams;Z)Lcom/android/emailcommon/service/OofParams;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    :cond_2
    :goto_1
    move-object v4, v14

    .line 1819
    goto :goto_0

    .line 1815
    :catch_0
    move-exception v13

    .line 1816
    .local v13, e:Landroid/os/RemoteException;
    const-string v4, "onSyncOof"

    const-string v5, "RemoteException"

    invoke-static {v4, v5, v13}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public upSyncAccountData(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1423
    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/MessagingController;->processPendingActions(J)V

    .line 1426
    :cond_0
    return-void
.end method

.method public updateMailbox(JJLcom/android/emailcommon/service/EmailExternalCalls;)V
    .locals 8
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 703
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v7

    .line 704
    .local v7, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v7, :cond_0

    .line 706
    invoke-interface {v7, p3, p4, p5}, Lcom/android/emailcommon/service/IEmailService;->startSyncForBT(JLcom/android/emailcommon/service/EmailExternalCalls;)V

    .line 729
    :goto_0
    return-void

    .line 709
    :cond_0
    new-instance v0, Lcom/android/email/Controller$4;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/email/Controller$4;-><init>(Lcom/android/email/Controller;JJLcom/android/emailcommon/service/EmailExternalCalls;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public updateMailbox(JJZ)V
    .locals 8
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "userRequest"

    .prologue
    .line 516
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v7

    .line 517
    .local v7, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v7, :cond_0

    .line 519
    :try_start_0
    invoke-interface {v7, p3, p4, p5}, Lcom/android/emailcommon/service/IEmailService;->startSync(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v6

    .line 524
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "updateMailbox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 527
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v0, "Controller"

    const-string v1, ">>>>> Utility.runAsync updateMailbox"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    new-instance v0, Lcom/android/email/Controller$3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Controller$3;-><init>(Lcom/android/email/Controller;JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public updateMailboxList(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 449
    const-string v0, "Controller"

    const-string v1, ">>>>> Utility.runAsync updateMailboxList"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v0, Lcom/android/email/Controller$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$1;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 473
    return-void
.end method
