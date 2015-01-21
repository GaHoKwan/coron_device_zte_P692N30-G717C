.class public Lcom/android/email/provider/EmailProvider;
.super Landroid/content/ContentProvider;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/EmailProvider$AttachmentService;
    }
.end annotation


# static fields
.field private static final ACCOUNT:I = 0x0

.field public static final ACCOUNT_BACKUP_URI:Landroid/net/Uri; = null

.field private static final ACCOUNT_BASE:I = 0x0

.field private static final ACCOUNT_DEFAULT_ID:I = 0x5

.field private static final ACCOUNT_ID:I = 0x1

.field private static final ACCOUNT_ID_ADD_TO_FIELD:I = 0x2

.field private static final ACCOUNT_RESET_NEW_COUNT:I = 0x3

.field private static final ACCOUNT_RESET_NEW_COUNT_ID:I = 0x4

.field public static final ACTION_ATTACHMENT_UPDATED:Ljava/lang/String; = "com.android.email.ATTACHMENT_UPDATED"

.field public static final ACTION_NOTIFY_MESSAGE_LIST_DATASET_CHANGED:Ljava/lang/String; = "com.android.email.MESSAGE_LIST_DATASET_CHANGED"

.field private static final ATTACHMENT:I = 0x3000

.field private static final ATTACHMENTS_MESSAGE_ID:I = 0x3002

.field private static final ATTACHMENT_BASE:I = 0x3000

.field private static final ATTACHMENT_ID:I = 0x3001

.field public static final ATTACHMENT_UPDATED_EXTRA_FLAGS:Ljava/lang/String; = "com.android.email.ATTACHMENT_UPDATED_FLAGS"

.field protected static final BACKUP_DATABASE_NAME:Ljava/lang/String; = "EmailProviderBackup.db"

.field private static final BASE_SHIFT:I = 0xc

.field private static final BODY:I = 0xc000

.field private static final BODY_BASE:I = 0xc000

.field protected static final BODY_DATABASE_NAME:Ljava/lang/String; = "EmailProviderBody.db"

.field private static final BODY_ID:I = 0xc001

.field private static final BODY_LARGE:I = 0xc002

.field private static final BYTES_OF_KB:I = 0x400

.field private static final CACHE_PROJECTIONS:[[Ljava/lang/String; = null

.field private static final CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues; = null

.field protected static final DATABASE_NAME:Ljava/lang/String; = "EmailProvider.db"

#the value of this static final field might be set in the static constructor
.field public static final DEBUG_PROVIDER:Z = false

.field private static final DELETED_MESSAGE:I = 0x6000

.field private static final DELETED_MESSAGE_BASE:I = 0x6000

.field private static final DELETED_MESSAGE_ID:I = 0x6001

.field private static final DELETED_MESSAGE_INSERT:Ljava/lang/String; = "insert or replace into Message_Deletes select * from Message where _id="

.field private static final DELETE_BODY:Ljava/lang/String; = "delete from Body where messageKey="

.field private static final DELETE_ORPHAN_BODIES:Ljava/lang/String; = "delete from Body where messageKey in (select messageKey from Body except select _id from Message)"

.field public static final EMAIL_APP_MIME_TYPE:Ljava/lang/String; = "application/email-ls"

.field public static final EMAIL_ATTACHMENT_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/email-attachment"

.field public static final EMAIL_MESSAGE_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/email-message"

.field public static final FOLDER_REFRESH_URI:Landroid/net/Uri; = null

.field public static final FOLDER_STATUS_URI:Landroid/net/Uri; = null

.field private static final HOSTAUTH:I = 0x4000

.field private static final HOSTAUTH_BASE:I = 0x4000

.field private static final HOSTAUTH_ID:I = 0x4001

.field private static final ID_EQUALS:Ljava/lang/String; = "_id=?"

.field public static final INTEGRITY_CHECK_URI:Landroid/net/Uri; = null

.field private static final LAST_EMAIL_PROVIDER_DB_BASE:I = 0xb000

.field private static final MAILBOX:I = 0x1000

.field private static final MAILBOX_BASE:I = 0x1000

.field private static final MAILBOX_ID:I = 0x1001

.field private static final MAILBOX_ID_ADD_TO_FIELD:I = 0x1003

.field private static final MAILBOX_ID_FROM_ACCOUNT_AND_TYPE:I = 0x1002

.field private static final MAILBOX_MOST_RECENT_MESSAGE:I = 0x1005

.field private static final MAILBOX_NOTIFICATION:I = 0x1004

.field private static final MAILBOX_PRE_CACHE_SELECTION:Ljava/lang/String; = "type IN (0,3,6,5,8,4)"

.field private static final MAIL_NUM_DELTA:I = 0x100000

.field private static final MAX_CACHED_ACCOUNTS:I = 0x10

.field private static final MESSAGE:I = 0x2000

.field private static final MESSAGE_BASE:I = 0x2000

.field private static final MESSAGE_ID:I = 0x2001

.field public static final MESSAGE_URI_PARAMETER_MAILBOX_ID:Ljava/lang/String; = "mailboxId"

.field public static final NOTIFICATION_OP_DELETE:Ljava/lang/String; = "delete"

.field public static final NOTIFICATION_OP_INSERT:Ljava/lang/String; = "insert"

.field public static final NOTIFICATION_OP_UPDATE:Ljava/lang/String; = "update"

.field private static final NOTIFICATION_QUERY:Ljava/lang/String; = "SELECT DISTINCT Boxes._id, Boxes.unreadCount, count(Message._id) FROM Message,(SELECT _id,unreadCount,messageCount,lastNotifiedMessageCount,lastNotifiedMessageKey FROM Mailbox WHERE accountKey=? AND (type=0 OR (syncInterval!=0 AND syncInterval!=-1))) AS Boxes WHERE Boxes._id=Message.mailboxKey AND Message._id>Boxes.lastNotifiedMessageKey AND flagRead=0 AND timeStamp!=0"

.field private static final NUM_ALWAYS_CACHED_MAILBOXES:I = 0x6

.field private static final ORPHANS_ID:I = 0x0

.field private static final ORPHANS_MAILBOX_KEY:I = 0x1

.field private static final ORPHANS_PROJECTION:[Ljava/lang/String; = null

.field private static final PACKAGE_QUICKSEARCHBOX:Ljava/lang/String; = "com.android.quicksearchbox"

.field private static final POLICY:I = 0x7000

.field private static final POLICY_BASE:I = 0x7000

.field private static final POLICY_ID:I = 0x7001

.field private static final QUERY_ORPHAN_BODIES:Ljava/lang/String; = "messageKey in (select messageKey from Body except select _id from Message)"

.field private static final QUICK_RESPONSE:I = 0x8000

.field private static final QUICK_RESPONSE_ACCOUNT_ID:I = 0x8002

.field private static final QUICK_RESPONSE_BASE:I = 0x8000

.field private static final QUICK_RESPONSE_ID:I = 0x8001

.field private static final SMARTPUSH:I = 0xb000

.field private static final SMARTPUSH_BASE:I = 0xb000

.field private static final SMARTPUSH_ID:I = 0xb001

.field private static final SYNCED_MESSAGE_ID:I = 0x2002

.field private static final TABLE_NAMES:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "EmailProvider"

.field private static final UI_ACCOUNT:I = 0x900b

.field private static final UI_ACCOUNT_DATA:I = 0x9010

.field private static final UI_ACCTS:I = 0x900c

.field private static final UI_ATTACHMENT:I = 0x900e

.field private static final UI_ATTACHMENTS:I = 0x900d

.field private static final UI_BASE:I = 0x9000

.field private static final UI_CONVERSATION:I = 0x9012

.field private static final UI_FOLDER:I = 0x900a

.field private static final UI_FOLDERS:I = 0x9000

.field private static final UI_FOLDER_LOAD_MORE:I = 0x9011

.field private static final UI_FOLDER_REFRESH:I = 0x9009

.field private static final UI_MESSAGE:I = 0x9003

.field private static final UI_MESSAGES:I = 0x9002

.field private static final UI_RECENT_FOLDERS:I = 0x9013

.field private static final UI_SAVEDRAFT:I = 0x9006

.field private static final UI_SEARCH:I = 0x900f

.field private static final UI_SENDDRAFT:I = 0x9008

.field private static final UI_SENDMAIL:I = 0x9004

.field private static final UI_SUBFOLDERS:I = 0x9001

.field private static final UI_UNDO:I = 0x9005

.field private static final UI_UPDATEDRAFT:I = 0x9007

.field private static final UPDATED_MESSAGE:I = 0x5000

.field private static final UPDATED_MESSAGE_BASE:I = 0x5000

.field private static final UPDATED_MESSAGE_DELETE:Ljava/lang/String; = "delete from Message_Updates where _id="

.field private static final UPDATED_MESSAGE_ID:I = 0x5001

.field private static final UPDATED_MESSAGE_INSERT:Ljava/lang/String; = "insert or ignore into Message_Updates select * from Message where _id="

.field private static final VIPMEMBER:I = 0xa000

.field private static final VIPMEMBER_BASE:I = 0xa000

.field private static final VIPMEMBER_ID:I = 0xa001

.field private static final WHERE_ID:Ljava/lang/String; = "_id=?"

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final DEFAULT_ATTACHMENT_SERVICE:Lcom/android/email/provider/EmailProvider$AttachmentService;

.field private final mApplyingBatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplyingNotifyCount:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachmentService:Lcom/android/email/provider/EmailProvider$AttachmentService;

.field private mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mCacheAccount:Lcom/android/email/provider/ContentCache;

.field private final mCacheHostAuth:Lcom/android/email/provider/ContentCache;

.field final mCacheMailbox:Lcom/android/email/provider/ContentCache;

.field private final mCacheMessage:Lcom/android/email/provider/ContentCache;

.field private final mCachePolicy:Lcom/android/email/provider/ContentCache;

.field private final mContentCaches:[Lcom/android/email/provider/ContentCache;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mIsMockContext:Z

.field private final mMailboxTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNotifyMap:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/database/ContentObserver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 82
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/email/provider/EmailProvider;->DEBUG_PROVIDER:Z

    .line 114
    const-string v1, "content://com.android.email.provider/integrityCheck"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/email/provider/EmailProvider;->INTEGRITY_CHECK_URI:Landroid/net/Uri;

    .line 116
    const-string v1, "content://com.android.email.provider/accountBackup"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/email/provider/EmailProvider;->ACCOUNT_BACKUP_URI:Landroid/net/Uri;

    .line 118
    const-string v1, "content://com.android.email.provider/status"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/email/provider/EmailProvider;->FOLDER_STATUS_URI:Landroid/net/Uri;

    .line 120
    const-string v1, "content://com.android.email.provider/refresh"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/email/provider/EmailProvider;->FOLDER_REFRESH_URI:Landroid/net/Uri;

    .line 131
    new-array v1, v7, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v1, v3

    const-string v4, "mailboxKey"

    aput-object v4, v1, v2

    sput-object v1, Lcom/android/email/provider/EmailProvider;->ORPHANS_PROJECTION:[Ljava/lang/String;

    .line 251
    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "Account"

    aput-object v4, v1, v3

    const-string v4, "Mailbox"

    aput-object v4, v1, v2

    const-string v4, "Message"

    aput-object v4, v1, v7

    const-string v4, "Attachment"

    aput-object v4, v1, v8

    const/4 v4, 0x4

    const-string v5, "HostAuth"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "Message_Updates"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "Message_Deletes"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "Policy"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "QuickResponse"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    aput-object v6, v1, v4

    const/16 v4, 0xa

    const-string v5, "VipMember"

    aput-object v5, v1, v4

    const/16 v4, 0xb

    const-string v5, "SmartPush"

    aput-object v5, v1, v4

    const/16 v4, 0xc

    const-string v5, "Body"

    aput-object v5, v1, v4

    sput-object v1, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    .line 285
    const/16 v1, 0xd

    new-array v1, v1, [[Ljava/lang/String;

    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    aput-object v4, v1, v3

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    aput-object v4, v1, v2

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    aput-object v4, v1, v7

    aput-object v6, v1, v8

    const/4 v4, 0x4

    sget-object v5, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    aput-object v5, v1, v4

    const/4 v4, 0x5

    aput-object v6, v1, v4

    const/4 v4, 0x6

    aput-object v6, v1, v4

    const/4 v4, 0x7

    sget-object v5, Lcom/android/emailcommon/provider/Policy;->CONTENT_PROJECTION:[Ljava/lang/String;

    aput-object v5, v1, v4

    const/16 v4, 0x8

    aput-object v6, v1, v4

    const/16 v4, 0x9

    aput-object v6, v1, v4

    const/16 v4, 0xa

    aput-object v6, v1, v4

    const/16 v4, 0xb

    aput-object v6, v1, v4

    const/16 v4, 0xc

    aput-object v6, v1, v4

    sput-object v1, Lcom/android/email/provider/EmailProvider;->CACHE_PROJECTIONS:[[Ljava/lang/String;

    .line 301
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v4, -0x1

    invoke-direct {v1, v4}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 345
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 348
    .local v0, matcher:Landroid/content/UriMatcher;
    const-string v1, "com.android.email.provider"

    const-string v4, "account"

    invoke-virtual {v0, v1, v4, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 351
    const-string v1, "com.android.email.provider"

    const-string v4, "account/#"

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 352
    const-string v1, "com.android.email.provider"

    const-string v2, "account/default"

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 356
    const-string v1, "com.android.email.provider"

    const-string v2, "resetNewMessageCount"

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 358
    const-string v1, "com.android.email.provider"

    const-string v2, "resetNewMessageCount/#"

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 362
    const-string v1, "com.android.email.provider"

    const-string v2, "mailbox"

    const/16 v4, 0x1000

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 366
    const-string v1, "com.android.email.provider"

    const-string v2, "mailbox/#"

    const/16 v4, 0x1001

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 367
    const-string v1, "com.android.email.provider"

    const-string v2, "mailboxIdFromAccountAndType/#/#"

    const/16 v4, 0x1002

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 369
    const-string v1, "com.android.email.provider"

    const-string v2, "mailboxNotification/#"

    const/16 v4, 0x1004

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 370
    const-string v1, "com.android.email.provider"

    const-string v2, "mailboxMostRecentMessage/#"

    const/16 v4, 0x1005

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 374
    const-string v1, "com.android.email.provider"

    const-string v2, "message"

    const/16 v4, 0x2000

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 377
    const-string v1, "com.android.email.provider"

    const-string v2, "message/#"

    const/16 v4, 0x2001

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 380
    const-string v1, "com.android.email.provider"

    const-string v2, "attachment"

    const/16 v4, 0x3000

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 382
    const-string v1, "com.android.email.provider"

    const-string v2, "attachment/#"

    const/16 v4, 0x3001

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 384
    const-string v1, "com.android.email.provider"

    const-string v2, "attachment/message/#"

    const/16 v4, 0x3002

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 388
    const-string v1, "com.android.email.provider"

    const-string v2, "body"

    const v4, 0xc000

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 390
    const-string v1, "com.android.email.provider"

    const-string v2, "body/#"

    const v4, 0xc001

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 392
    const-string v1, "com.android.email.provider"

    const-string v2, "bodyLarge"

    const v4, 0xc002

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 395
    const-string v1, "com.android.email.provider"

    const-string v2, "hostauth"

    const/16 v4, 0x4000

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 397
    const-string v1, "com.android.email.provider"

    const-string v2, "hostauth/#"

    const/16 v4, 0x4001

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 400
    const-string v1, "com.android.email.provider"

    const-string v2, "mailboxIdAddToField/#"

    const/16 v4, 0x1003

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 402
    const-string v1, "com.android.email.provider"

    const-string v2, "accountIdAddToField/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 410
    const-string v1, "com.android.email.provider"

    const-string v2, "syncedMessage/#"

    const/16 v4, 0x2002

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 418
    const-string v1, "com.android.email.provider"

    const-string v2, "deletedMessage"

    const/16 v4, 0x6000

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 420
    const-string v1, "com.android.email.provider"

    const-string v2, "deletedMessage/#"

    const/16 v4, 0x6001

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 423
    const-string v1, "com.android.email.provider"

    const-string v2, "updatedMessage"

    const/16 v4, 0x5000

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 425
    const-string v1, "com.android.email.provider"

    const-string v2, "updatedMessage/#"

    const/16 v4, 0x5001

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 427
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sput-object v1, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    .line 428
    sget-object v1, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    const-string v2, "newMessageCount"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    const-string v1, "com.android.email.provider"

    const-string v2, "policy"

    const/16 v3, 0x7000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 431
    const-string v1, "com.android.email.provider"

    const-string v2, "policy/#"

    const/16 v3, 0x7001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 434
    const-string v1, "com.android.email.provider"

    const-string v2, "quickresponse"

    const v3, 0x8000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 436
    const-string v1, "com.android.email.provider"

    const-string v2, "quickresponse/#"

    const v3, 0x8001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 438
    const-string v1, "com.android.email.provider"

    const-string v2, "quickresponse/account/#"

    const v3, 0x8002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 441
    const-string v1, "com.android.email.provider"

    const-string v2, "uifolders/#"

    const v3, 0x9000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 442
    const-string v1, "com.android.email.provider"

    const-string v2, "uisubfolders/#"

    const v3, 0x9001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 443
    const-string v1, "com.android.email.provider"

    const-string v2, "uimessages/#"

    const v3, 0x9002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 444
    const-string v1, "com.android.email.provider"

    const-string v2, "uimessage/#"

    const v3, 0x9003

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 445
    const-string v1, "com.android.email.provider"

    const-string v2, "uisendmail/#"

    const v3, 0x9004

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 446
    const-string v1, "com.android.email.provider"

    const-string v2, "uiundo"

    const v3, 0x9005

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 447
    const-string v1, "com.android.email.provider"

    const-string v2, "uisavedraft/#"

    const v3, 0x9006

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 448
    const-string v1, "com.android.email.provider"

    const-string v2, "uiupdatedraft/#"

    const v3, 0x9007

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 449
    const-string v1, "com.android.email.provider"

    const-string v2, "uisenddraft/#"

    const v3, 0x9008

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 450
    const-string v1, "com.android.email.provider"

    const-string v2, "uirefresh/#"

    const v3, 0x9009

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 451
    const-string v1, "com.android.email.provider"

    const-string v2, "uifolder/#"

    const v3, 0x900a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 452
    const-string v1, "com.android.email.provider"

    const-string v2, "uiaccount/#"

    const v3, 0x900b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 453
    const-string v1, "com.android.email.provider"

    const-string v2, "uiaccts"

    const v3, 0x900c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 454
    const-string v1, "com.android.email.provider"

    const-string v2, "uiattachments/#"

    const v3, 0x900d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 455
    const-string v1, "com.android.email.provider"

    const-string v2, "uiattachment/#"

    const v3, 0x900e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 456
    const-string v1, "com.android.email.provider"

    const-string v2, "uisearch/#"

    const v3, 0x900f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 457
    const-string v1, "com.android.email.provider"

    const-string v2, "uiaccountdata/#"

    const v3, 0x9010

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 458
    const-string v1, "com.android.email.provider"

    const-string v2, "uiloadmore/#"

    const v3, 0x9011

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 459
    const-string v1, "com.android.email.provider"

    const-string v2, "uiconversation/#"

    const v3, 0x9012

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 460
    const-string v1, "com.android.email.provider"

    const-string v2, "uirecentfolders/#"

    const v3, 0x9013

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 463
    const-string v1, "com.android.email.provider"

    const-string v2, "vipmember"

    const v3, 0xa000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 464
    const-string v1, "com.android.email.provider"

    const-string v2, "vipmember/#"

    const v3, 0xa001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 468
    const-string v1, "com.android.email.provider"

    const-string v2, "smartpush"

    const v3, 0xb000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 469
    const-string v1, "com.android.email.provider"

    const-string v2, "smartpush/#"

    const v3, 0xb001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 471
    return-void

    .end local v0           #matcher:Landroid/content/UriMatcher;
    :cond_0
    move v1, v3

    .line 82
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 77
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    .line 92
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mNotifyMap:Ljava/lang/ThreadLocal;

    .line 95
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mApplyingNotifyCount:Ljava/lang/ThreadLocal;

    .line 145
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Account"

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v7}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mCacheAccount:Lcom/android/email/provider/ContentCache;

    .line 147
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "HostAuth"

    sget-object v2, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mCacheHostAuth:Lcom/android/email/provider/ContentCache;

    .line 149
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Mailbox"

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mCacheMailbox:Lcom/android/email/provider/ContentCache;

    .line 152
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Message"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v6}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mCacheMessage:Lcom/android/email/provider/ContentCache;

    .line 154
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Policy"

    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v7}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mCachePolicy:Lcom/android/email/provider/ContentCache;

    .line 268
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/email/provider/ContentCache;

    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->mCacheAccount:Lcom/android/email/provider/ContentCache;

    aput-object v1, v0, v5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mCacheMailbox:Lcom/android/email/provider/ContentCache;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mCacheMessage:Lcom/android/email/provider/ContentCache;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mCacheHostAuth:Lcom/android/email/provider/ContentCache;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v4, v0, v1

    const/4 v1, 0x6

    aput-object v4, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mCachePolicy:Lcom/android/email/provider/ContentCache;

    aput-object v2, v0, v1

    aput-object v4, v0, v6

    const/16 v1, 0x9

    aput-object v4, v0, v1

    const/16 v1, 0xa

    aput-object v4, v0, v1

    const/16 v1, 0xb

    aput-object v4, v0, v1

    const/16 v1, 0xc

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mContentCaches:[Lcom/android/email/provider/ContentCache;

    .line 341
    iput-boolean v5, p0, Lcom/android/email/provider/EmailProvider;->mIsMockContext:Z

    .line 591
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    .line 2187
    new-instance v0, Lcom/android/email/provider/EmailProvider$1;

    invoke-direct {v0, p0}, Lcom/android/email/provider/EmailProvider$1;-><init>(Lcom/android/email/provider/EmailProvider;)V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->DEFAULT_ATTACHMENT_SERVICE:Lcom/android/email/provider/EmailProvider$AttachmentService;

    .line 2194
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->DEFAULT_ATTACHMENT_SERVICE:Lcom/android/email/provider/EmailProvider$AttachmentService;

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mAttachmentService:Lcom/android/email/provider/EmailProvider$AttachmentService;

    return-void
.end method

.method private addToMailboxTypeMap(Landroid/database/Cursor;)V
    .locals 8
    .parameter "c"

    .prologue
    .line 618
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 622
    .local v0, accountId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 636
    :goto_0
    return-void

    .line 626
    :cond_0
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 627
    .local v3, type:I
    iget-object v5, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 629
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/email/provider/EmailProvider;->getAccountMailboxTypeMap(J)Ljava/util/HashMap;

    move-result-object v2

    .line 631
    .local v2, accountMailboxTypeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-eqz v2, :cond_1

    .line 632
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_1
    monitor-exit v5

    goto :goto_0

    .end local v2           #accountMailboxTypeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private applyingBatch()Z
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static backupAccounts(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 5
    .parameter "context"
    .parameter "mainDatabase"

    .prologue
    .line 1738
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1739
    const-string v2, "EmailProvider"

    const-string v3, "backupAccounts..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    :cond_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->getBackupDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1743
    .local v0, backupDatabase:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->copyAccountTables(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 1744
    .local v1, numBackedUp:I
    if-gez v1, :cond_2

    .line 1745
    const-string v2, "EmailProvider"

    const-string v3, "Account backup failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_1
    :goto_0
    return v1

    .line 1746
    :cond_2
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1747
    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backed up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " accounts..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkMockContext()V
    .locals 4

    .prologue
    .line 1346
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1350
    .local v0, context:Landroid/content/Context;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    :goto_0
    return-void

    .line 1351
    :catch_0
    move-exception v1

    .line 1352
    .local v1, upe:Ljava/lang/UnsupportedOperationException;
    const-string v2, "EmailProvider"

    const-string v3, "This is a MockContext, not call setServicesEnabledAsync method."

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/email/provider/EmailProvider;->mIsMockContext:Z

    goto :goto_0
.end method

.method private clearNotifyMap()V
    .locals 2

    .prologue
    .line 1272
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->mNotifyMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1273
    .local v0, notifyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Landroid/database/ContentObserver;>;"
    if-eqz v0, :cond_0

    .line 1274
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1276
    :cond_0
    return-void
.end method

.method private static copyAccountTables(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 13
    .parameter "fromDatabase"
    .parameter "toDatabase"

    .prologue
    .line 1652
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v10, -0x1

    .line 1726
    :goto_0
    return v10

    .line 1656
    :cond_1
    const/4 v10, 0x0

    .line 1657
    .local v10, copyCount:I
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1659
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1662
    :try_start_1
    const-string v0, "Account"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1663
    const-string v0, "HostAuth"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1666
    const-string v1, "Account"

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    .line 1668
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_2

    const/4 v0, 0x0

    .line 1716
    :try_start_2
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ending toDatabase transaction; copyCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1723
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ending fromDatabase transaction; copyCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v10, v0

    goto :goto_0

    .line 1669
    :cond_2
    :try_start_3
    const-string v0, "EmailProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromDatabase accounts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1672
    :cond_3
    :goto_1
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1673
    new-instance v8, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v8}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 1674
    .local v8, account:Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v8, v9}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V

    .line 1680
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1681
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 1682
    const-wide/16 v0, 0x0

    iput-wide v0, v8, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    .line 1685
    iget-wide v0, v8, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailProvider;->restoreHostAuth(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v12

    .line 1689
    .local v12, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v12, :cond_3

    .line 1690
    const-string v0, "HostAuth"

    const/4 v1, 0x0

    invoke-virtual {v12}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    .line 1694
    iget-wide v0, v8, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 1695
    iget-wide v0, v8, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailProvider;->restoreHostAuth(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v12

    .line 1699
    if-eqz v12, :cond_3

    .line 1700
    const-string v0, "HostAuth"

    const/4 v1, 0x0

    invoke-virtual {v12}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    .line 1705
    :cond_4
    const-string v0, "Account"

    const/4 v1, 0x0

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1706
    add-int/lit8 v10, v10, 0x1

    .line 1707
    goto :goto_1

    .line 1709
    .end local v8           #account:Lcom/android/emailcommon/provider/Account;
    .end local v12           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    :cond_5
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1713
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1716
    :try_start_6
    const-string v0, "EmailProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ending toDatabase transaction; copyCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1723
    const-string v0, "EmailProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ending fromDatabase transaction; copyCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1709
    :catchall_0
    move-exception v0

    :try_start_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1716
    .end local v9           #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    :try_start_8
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ending toDatabase transaction; copyCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1719
    :catch_0
    move-exception v11

    .line 1720
    .local v11, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_9
    const-string v0, "EmailProvider"

    const-string v1, "Exception while copying account tables"

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1721
    const/4 v10, -0x1

    .line 1723
    const-string v0, "EmailProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ending fromDatabase transaction; copyCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1723
    .end local v11           #ex:Landroid/database/sqlite/SQLiteException;
    :catchall_2
    move-exception v0

    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ending fromDatabase transaction; copyCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private decompressBodyData([B)Ljava/lang/String;
    .locals 10
    .parameter "body"

    .prologue
    .line 1776
    const/4 v1, 0x0

    .line 1777
    .local v1, decompressedBytes:[B
    const/16 v7, 0x400

    new-array v5, v7, [B

    .line 1778
    .local v5, readBuffer:[B
    array-length v3, p1

    .line 1780
    .local v3, originSize:I
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v7}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1781
    .local v0, compressedStr:Ljava/util/zip/InflaterInputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1783
    .local v4, outStream:Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, readCount:I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 1784
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1794
    .end local v6           #readCount:I
    :catch_0
    move-exception v2

    .line 1795
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "Email"

    const-string v8, "Decompressing message body failed!"

    invoke-static {v7, v8}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    .end local v2           #e:Ljava/lang/Exception;
    :goto_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    return-object v7

    .line 1786
    .restart local v6       #readCount:I
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1788
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Decompressing message body: originSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " decompressedBytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1793
    invoke-virtual {v0}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static deleteMessageOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 20
    .parameter "database"
    .parameter "tableName"

    .prologue
    .line 732
    if-eqz p0, :cond_0

    .line 734
    sget-object v4, Lcom/android/email/provider/EmailProvider;->ORPHANS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 737
    .local v11, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 774
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 777
    .end local v11           #c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 738
    .restart local v11       #c:Landroid/database/Cursor;
    :cond_1
    :try_start_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 739
    .local v13, foundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v19, notFoundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .local v12, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 742
    .local v6, bindArray:[Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 745
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 747
    .local v15, mailboxId:J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 748
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 774
    .end local v6           #bindArray:[Ljava/lang/String;
    .end local v12           #deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v13           #foundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v15           #mailboxId:J
    .end local v19           #notFoundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 750
    .restart local v6       #bindArray:[Ljava/lang/String;
    .restart local v12       #deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v13       #foundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v15       #mailboxId:J
    .restart local v19       #notFoundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_3
    :try_start_2
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 751
    const/4 v2, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 752
    const-string v3, "Mailbox"

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 756
    .local v10, boxCursor:Landroid/database/Cursor;
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 757
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 764
    :goto_2
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 760
    :cond_4
    :try_start_5
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 764
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 769
    .end local v10           #boxCursor:Landroid/database/Cursor;
    .end local v15           #mailboxId:J
    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 770
    .local v17, messageId:J
    const/4 v2, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 771
    const-string v2, "_id=?"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 774
    .end local v17           #messageId:J
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private doDeleteMailPieceByPiece(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 18
    .parameter "db"

    .prologue
    .line 975
    const-string v1, "EmailProvider delete mail piece by piece"

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 978
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 980
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 983
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 984
    .local v12, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    .line 986
    .local v9, c:Landroid/database/Cursor;
    :try_start_1
    const-string v2, "Body"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const-string v4, "messageKey in (select messageKey from Body except select _id from Message)"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 988
    if-eqz v9, :cond_1

    .line 989
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 990
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 994
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_0

    .line 995
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 980
    .end local v9           #c:Landroid/database/Cursor;
    .end local v12           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v1

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 994
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v12       #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    if-eqz v9, :cond_2

    .line 995
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 999
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmailProvider#doDeleteMailPieceByPiece has to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 1002
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_7

    .line 1004
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1005
    invoke-direct/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->hasEnoughDisk()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1008
    const-string v1, "EmailProvider do bulk deletion"

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 1010
    const-string v1, "delete from Body where messageKey in (select messageKey from Body except select _id from Message)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1043
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1045
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 1013
    :cond_4
    const/4 v11, 0x0

    .line 1014
    .local v11, i:I
    :try_start_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1015
    .local v17, sb:Ljava/lang/StringBuilder;
    const-string v1, "("

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    invoke-direct/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getFreeDisk()J

    move-result-wide v13

    .line 1017
    .local v13, loopTime:J
    const-wide/32 v1, 0x100000

    div-long/2addr v13, v1

    .line 1018
    const-wide/16 v1, 0x0

    cmp-long v1, v13, v1

    if-nez v1, :cond_5

    .line 1019
    const-wide/16 v13, 0x1

    .line 1021
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmailProvider delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 1023
    :goto_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    int-to-long v1, v11

    cmp-long v1, v1, v13

    if-gez v1, :cond_6

    .line 1024
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1025
    const-string v1, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1028
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1029
    .local v16, s:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v16

    .line 1031
    :try_start_4
    const-string v1, "Body"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1032
    .local v15, result:I
    if-nez v15, :cond_3

    .line 1033
    const-string v1, "EmailProvider cannot even delete one mail"

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;)V

    .line 1034
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1045
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1048
    .end local v11           #i:I
    .end local v13           #loopTime:J
    .end local v15           #result:I
    .end local v16           #s:Ljava/lang/String;
    .end local v17           #sb:Ljava/lang/StringBuilder;
    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1049
    const-string v1, "Finish EmailProvider delete mail piece by piece"

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 1051
    return-void

    .line 1037
    .restart local v11       #i:I
    .restart local v13       #loopTime:J
    .restart local v16       #s:Ljava/lang/String;
    .restart local v17       #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v10

    .line 1038
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    :try_start_5
    const-string v1, "EmailProvider sqlite exception"

    invoke-static {v1, v10}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1039
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1045
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    .end local v11           #i:I
    .end local v13           #loopTime:J
    .end local v16           #s:Ljava/lang/String;
    .end local v17           #sb:Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v1

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static findMatch(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "methodName"

    .prologue
    .line 479
    sget-object v1, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 480
    .local v0, match:I
    if-gez v0, :cond_0

    .line 481
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 483
    :cond_0
    return v0
.end method

.method private getAccountMailboxTypeMap(J)Ljava/util/HashMap;
    .locals 3
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 612
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    monitor-exit v1

    return-object v0

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getBackupDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .parameter "context"

    .prologue
    .line 1730
    new-instance v0, Lcom/android/email/provider/DBHelper$DatabaseHelper;

    const-string v1, "EmailProviderBackup.db"

    invoke-direct {v0, p0, v1}, Lcom/android/email/provider/DBHelper$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1731
    .local v0, helper:Lcom/android/email/provider/DBHelper$DatabaseHelper;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    return-object v1
.end method

.method private getBaseNotificationUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "match"

    .prologue
    .line 2036
    const/4 v0, 0x0

    .line 2037
    .local v0, baseUri:Landroid/net/Uri;
    sparse-switch p1, :sswitch_data_0

    .line 2056
    :goto_0
    return-object v0

    .line 2040
    :sswitch_0
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    .line 2041
    goto :goto_0

    .line 2043
    :sswitch_1
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_NOTIFIER_URI:Landroid/net/Uri;

    .line 2044
    goto :goto_0

    .line 2047
    :sswitch_2
    sget-object v0, Lcom/android/emailcommon/provider/Account;->NOTIFIER_URI:Landroid/net/Uri;

    .line 2048
    goto :goto_0

    .line 2051
    :sswitch_3
    sget-object v0, Lcom/android/emailcommon/provider/VipMember;->NOTIFIER_URI:Landroid/net/Uri;

    .line 2052
    goto :goto_0

    .line 2037
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x2000 -> :sswitch_0
        0x2001 -> :sswitch_0
        0x2002 -> :sswitch_1
        0xa000 -> :sswitch_3
        0xa001 -> :sswitch_3
    .end sparse-switch
.end method

.method private getFreeDisk()J
    .locals 8

    .prologue
    .line 1072
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1073
    .local v5, storageDirectory:Ljava/lang/String;
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v4, sf:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v6

    int-to-long v2, v6

    .line 1075
    .local v2, blocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 1076
    .local v0, blockSize:J
    mul-long v6, v2, v0

    return-wide v6
.end method

.method private getMailboxIdFromMailboxTypeMap(JI)J
    .locals 5
    .parameter "accountId"
    .parameter "type"

    .prologue
    .line 639
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 640
    :try_start_0
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 641
    .local v0, accountMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 642
    .local v1, mailboxId:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 643
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mailboxId:Ljava/lang/Long;
    check-cast v1, Ljava/lang/Long;

    .line 645
    .restart local v1       #mailboxId:Ljava/lang/Long;
    :cond_0
    if-nez v1, :cond_1

    const-wide/16 v2, -0x1

    monitor-exit v4

    .line 646
    :goto_0
    return-wide v2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    monitor-exit v4

    goto :goto_0

    .line 647
    .end local v0           #accountMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v1           #mailboxId:Ljava/lang/Long;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getNotifyMap()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1264
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->mNotifyMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1265
    .local v0, notifyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Landroid/database/ContentObserver;>;"
    if-nez v0, :cond_0

    .line 1266
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #notifyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Landroid/database/ContentObserver;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1267
    .restart local v0       #notifyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Landroid/database/ContentObserver;>;"
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->mNotifyMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1269
    :cond_0
    return-object v0
.end method

.method private getOrCreateAccountMailboxTypeMap(J)Ljava/util/HashMap;
    .locals 5
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 596
    :try_start_0
    const-string v1, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " EmailProvider : getOrCreateAccountMailboxTypeMap : mMailboxTypeMap size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Current accountId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 599
    .local v0, accountMailboxTypeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    .line 600
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #accountMailboxTypeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 601
    .restart local v0       #accountMailboxTypeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    :cond_0
    monitor-exit v2

    return-object v0

    .line 604
    .end local v0           #accountMailboxTypeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .parameter "context"

    .prologue
    .line 675
    new-instance v0, Lcom/android/email/provider/DBHelper$DatabaseHelper;

    const-string v1, "EmailProvider.db"

    invoke-direct {v0, p0, v1}, Lcom/android/email/provider/DBHelper$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 676
    .local v0, helper:Lcom/android/email/provider/DBHelper$DatabaseHelper;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    return-object v1
.end method

.method private grantUriPermission(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 1322
    iget-boolean v0, p0, Lcom/android/email/provider/EmailProvider;->mIsMockContext:Z

    if-nez v0, :cond_0

    .line 1324
    const-string v0, "com.android.quicksearchbox"

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 1327
    const-string v0, "com.android.quicksearchbox"

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 1330
    :cond_0
    return-void
.end method

.method private hasEnoughDisk()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 1057
    invoke-direct {p0}, Lcom/android/email/provider/EmailProvider;->getFreeDisk()J

    move-result-wide v2

    .line 1059
    .local v2, freeSize:J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1060
    .local v4, packageName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/databases/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "EmailProviderBody.db"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1061
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    div-long v8, v2, v8
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 1068
    .end local v1           #f:Ljava/io/File;
    .end local v4           #packageName:Ljava/lang/String;
    :goto_0
    return v5

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    goto :goto_0

    .line 1068
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    .restart local v1       #f:Ljava/io/File;
    .restart local v4       #packageName:Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private notifyAllChange()V
    .locals 12

    .prologue
    .line 1294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1295
    .local v5, start:J
    invoke-direct {p0}, Lcom/android/email/provider/EmailProvider;->getNotifyMap()Ljava/util/HashMap;

    move-result-object v2

    .line 1296
    .local v2, notifyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Landroid/database/ContentObserver;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 1297
    .local v4, size:I
    if-gtz v4, :cond_0

    .line 1312
    :goto_0
    return-void

    .line 1300
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1301
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1302
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 1303
    .local v7, u:Landroid/net/Uri;
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/ContentObserver;

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 1305
    .end local v7           #u:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1307
    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EmailProvider notifyAllChange() notify request: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/provider/EmailProvider;->mApplyingNotifyCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", actual notify: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", spent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 5
    .parameter "uri"
    .parameter "observer"

    .prologue
    .line 1279
    invoke-direct {p0}, Lcom/android/email/provider/EmailProvider;->applyingBatch()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1280
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mApplyingNotifyCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1281
    .local v1, i:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1282
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mApplyingNotifyCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1284
    invoke-direct {p0}, Lcom/android/email/provider/EmailProvider;->getNotifyMap()Ljava/util/HashMap;

    move-result-object v2

    .line 1285
    .local v2, notifyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Landroid/database/ContentObserver;>;"
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    .end local v1           #i:Ljava/lang/Integer;
    .end local v2           #notifyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Landroid/database/ContentObserver;>;"
    :goto_0
    return-void

    .line 1287
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1288
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1289
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v3, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private preCacheData()V
    .locals 8

    .prologue
    .line 651
    iget-object v5, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 652
    :try_start_0
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 653
    const-string v4, "Email"

    const-string v6, " EmailProvider : preCacheData : mMailboxTypeMap clear "

    invoke-static {v4, v6}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v7}, Lcom/android/email/provider/EmailProvider;->preCacheTable(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    sget-object v4, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v7}, Lcom/android/email/provider/EmailProvider;->preCacheTable(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    sget-object v4, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/Policy;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v7}, Lcom/android/email/provider/EmailProvider;->preCacheTable(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v7, "type IN (0,3,6,5,8,4)"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/email/provider/EmailProvider;->preCacheTable(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mCacheMailbox:Lcom/android/email/provider/ContentCache;

    invoke-virtual {v4}, Lcom/android/email/provider/ContentCache;->getSnapshot()Ljava/util/Map;

    move-result-object v2

    .line 663
    .local v2, snapshot:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/database/Cursor;>;"
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 664
    .local v3, values:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/database/Cursor;>;"
    if-eqz v3, :cond_1

    .line 665
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 666
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 667
    invoke-direct {p0, v0}, Lcom/android/email/provider/EmailProvider;->addToMailboxTypeMap(Landroid/database/Cursor;)V

    goto :goto_0

    .line 671
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #snapshot:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/database/Cursor;>;"
    .end local v3           #values:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/database/Cursor;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2       #snapshot:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/database/Cursor;>;"
    .restart local v3       #values:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/database/Cursor;>;"
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    return-void
.end method

.method private preCacheTable(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "tableUri"
    .parameter "baseProjection"
    .parameter "selection"

    .prologue
    const/4 v4, 0x0

    .line 572
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/provider/EmailProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 574
    .local v6, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 576
    .local v8, id:J
    invoke-static {p1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/provider/EmailProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 578
    .local v7, cachedCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 580
    sget-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    if-ne p1, v0, :cond_1

    .line 581
    invoke-direct {p0, v8, v9}, Lcom/android/email/provider/EmailProvider;->getOrCreateAccountMailboxTypeMap(J)Ljava/util/HashMap;

    .line 583
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 587
    .end local v7           #cachedCursor:Landroid/database/Cursor;
    .end local v8           #id:J
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 589
    return-void
.end method

.method private static restoreAccounts(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 5
    .parameter "context"
    .parameter "mainDatabase"

    .prologue
    .line 1756
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1757
    const-string v2, "EmailProvider"

    const-string v3, "restoreAccounts..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    :cond_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->getBackupDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1761
    .local v0, backupDatabase:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0, p1}, Lcom/android/email/provider/EmailProvider;->copyAccountTables(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 1762
    .local v1, numRecovered:I
    if-lez v1, :cond_2

    .line 1763
    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recovered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " accounts!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    :cond_1
    :goto_0
    return v1

    .line 1764
    :cond_2
    if-gez v1, :cond_3

    .line 1765
    const-string v2, "EmailProvider"

    const-string v3, "Account recovery failed?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1766
    :cond_3
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1767
    const-string v2, "EmailProvider"

    const-string v3, "No accounts to restore..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static restoreHostAuth(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/emailcommon/provider/HostAuth;
    .locals 10
    .parameter "db"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 1631
    const-string v1, "HostAuth"

    sget-object v2, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1634
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1635
    new-instance v9, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    .line 1636
    .local v9, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    invoke-virtual {v9, v8}, Lcom/android/emailcommon/provider/HostAuth;->restore(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1641
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v9           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    :goto_0
    return-object v9

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v9, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static restoreIfNeeded(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter "context"
    .parameter "mainDatabase"

    .prologue
    const/4 v3, 0x0

    .line 683
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 684
    const-string v0, "EmailProvider"

    const-string v1, "restoreIfNeeded..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_0
    invoke-static {p0}, Lcom/android/email/Preferences;->getLegacyBackupPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 691
    .local v9, legacyBackup:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    invoke-static {p0, p1}, Lcom/android/email/provider/EmailProvider;->backupAccounts(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I

    .line 693
    invoke-static {p0}, Lcom/android/email/Preferences;->clearLegacyBackupPreference(Landroid/content/Context;)V

    .line 694
    const-string v0, "EmailProvider"

    const-string v1, "Created new EmailProvider backup database"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :goto_0
    return-void

    .line 699
    :cond_1
    const-string v1, "Account"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 702
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 703
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 704
    const-string v0, "EmailProvider"

    const-string v1, "restoreIfNeeded: Account exists."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 711
    invoke-static {p0, p1}, Lcom/android/email/provider/EmailProvider;->restoreAccounts(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I

    goto :goto_0

    .line 709
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private sendNotifierChange(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "baseUri"
    .parameter "op"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 2075
    if-nez p1, :cond_0

    .line 2110
    :goto_0
    return-void

    .line 2079
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2082
    .local v2, resolver:Landroid/content/ContentResolver;
    if-eqz p2, :cond_1

    .line 2083
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 2086
    :cond_1
    const-wide/16 v0, 0x0

    .line 2088
    .local v0, longId:J
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 2099
    :goto_1
    invoke-direct {p0}, Lcom/android/email/provider/EmailProvider;->applyingBatch()Z

    move-result v3

    if-nez v3, :cond_2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 2100
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/android/email/provider/EmailProvider;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 2102
    :cond_2
    invoke-direct {p0, p1, v5}, Lcom/android/email/provider/EmailProvider;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 2089
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static uiUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 490
    invoke-static {p0, p1, p2}, Lcom/android/email/provider/EmailProvider;->uiUriString(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static uiUriString(Ljava/lang/String;J)Ljava/lang/String;
    .locals 4
    .parameter "type"
    .parameter "id"

    .prologue
    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.email.provider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "where"
    .parameter "selection"

    .prologue
    .line 1613
    if-nez p2, :cond_0

    .line 1621
    .end local p1
    :goto_0
    return-object p1

    .line 1616
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1617
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1621
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "selection"

    .prologue
    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1592
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    if-eqz p2, :cond_0

    .line 1595
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1599
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 2124
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2125
    .local v3, context:Landroid/content/Context;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2126
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2127
    .local v5, dbstart:J
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2130
    .local v1, beginTrans:J
    const/4 v12, 0x2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EmailProvider:applyBatch:beginTransaction ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v1, v5

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 2135
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/provider/EmailProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2136
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/provider/EmailProvider;->mApplyingNotifyCount:Ljava/lang/ThreadLocal;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2137
    invoke-super/range {p0 .. p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v11

    .line 2138
    .local v11, results:[Landroid/content/ContentProviderResult;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 2140
    .local v9, endapplyBatch:J
    const/4 v12, 0x2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EmailProvider:applyBatch spend ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v9, v1

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 2143
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2145
    const/4 v12, 0x2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EmailProvider:applyBatch:setTransactionSuccessful ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v9

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 2149
    invoke-direct/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->notifyAllChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2152
    invoke-direct/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->clearNotifyMap()V

    .line 2153
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/provider/EmailProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 2155
    .local v7, endTrans:J
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2157
    const/4 v12, 0x2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EmailProvider:applyBatch:endTransaction ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v7

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 2161
    return-object v11

    .line 2152
    .end local v7           #endTrans:J
    .end local v9           #endapplyBatch:J
    .end local v11           #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v12

    invoke-direct/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->clearNotifyMap()V

    .line 2153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/provider/EmailProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 2155
    .restart local v7       #endTrans:J
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2157
    const/4 v13, 0x2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EmailProvider:applyBatch:endTransaction ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v7

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 2161
    throw v12
.end method

.method public checkDatabases()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1364
    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " EmailProvider : checkDatabases() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 1367
    iput-object v5, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1369
    :cond_0
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    .line 1370
    iput-object v5, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1373
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "EmailProvider.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1374
    .local v1, databaseFile:Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "EmailProviderBody.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1377
    .local v0, bodyFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1378
    const-string v2, "EmailProvider"

    const-string v3, "Deleting orphaned EmailProvider database..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1384
    :cond_2
    :goto_0
    return-void

    .line 1380
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1381
    const-string v2, "EmailProvider"

    const-string v3, "Deleting orphaned EmailProviderBody database..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 16
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 781
    sget-boolean v13, Lcom/android/email/provider/EmailProvider;->DEBUG_PROVIDER:Z

    if-eqz v13, :cond_0

    .line 782
    const-string v13, "EmailProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "delete: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_0
    const-string v13, "delete"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v7

    .line 785
    .local v7, match:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 790
    .local v3, context:Landroid/content/Context;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 791
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v11, v7, 0xc

    .line 792
    .local v11, table:I
    const-string v6, "0"

    .line 793
    .local v6, id:Ljava/lang/String;
    const/4 v8, 0x0

    .line 794
    .local v8, messageDeletion:Z
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 796
    .local v9, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/provider/EmailProvider;->mContentCaches:[Lcom/android/email/provider/ContentCache;

    aget-object v2, v13, v11

    .line 797
    .local v2, cache:Lcom/android/email/provider/ContentCache;
    sget-object v13, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v12, v13, v11

    .line 798
    .local v12, tableName:Ljava/lang/String;
    const/4 v10, -0x1

    .line 801
    .local v10, result:I
    sparse-switch v7, :sswitch_data_0

    .line 823
    :goto_0
    sparse-switch v7, :sswitch_data_1

    .line 928
    :try_start_0
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown URI "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    :catch_0
    move-exception v5

    .line 948
    .local v5, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 949
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 951
    .end local v5           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v13

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 952
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1
    throw v13

    .line 819
    :sswitch_0
    const/4 v8, 0x1

    .line 820
    :try_start_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_0

    .line 837
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 838
    const/16 v13, 0x2002

    if-ne v7, v13, :cond_2

    .line 842
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insert or replace into Message_Deletes select * from Message where _id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 843
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete from Message_Updates where _id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 845
    :cond_2
    if-eqz v2, :cond_3

    .line 846
    invoke-virtual {v2, v6}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 849
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v6, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v4, v12, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v10

    .line 850
    if-eqz v2, :cond_4

    .line 851
    sparse-switch v7, :sswitch_data_2

    .line 876
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 877
    :try_start_4
    invoke-virtual {v2, v6}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;)V

    .line 930
    :cond_5
    :goto_2
    if-eqz v8, :cond_6

    .line 931
    const/16 v13, 0x2001

    if-ne v7, v13, :cond_9

    .line 933
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete from Body where messageKey="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 945
    :goto_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 951
    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 952
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 957
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/email/provider/EmailProvider;->getBaseNotificationUri(I)Landroid/net/Uri;

    move-result-object v13

    const-string v14, "delete"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v6}, Lcom/android/email/provider/EmailProvider;->sendNotifierChange(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    sget-object v13, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/email/provider/EmailProvider;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 961
    return v10

    .line 855
    :sswitch_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/provider/EmailProvider;->mCacheMailbox:Lcom/android/email/provider/ContentCache;

    const-string v14, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v14, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 856
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/provider/EmailProvider;->mCacheHostAuth:Lcom/android/email/provider/ContentCache;

    const-string v14, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v14, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 857
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/provider/EmailProvider;->mCachePolicy:Lcom/android/email/provider/ContentCache;

    const-string v14, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v14, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 861
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/provider/EmailProvider;->mCacheMessage:Lcom/android/email/provider/ContentCache;

    const-string v14, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v14, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 867
    :sswitch_4
    const-string v13, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v13, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 869
    const/16 v13, 0x2001

    if-eq v7, v13, :cond_4

    .line 870
    invoke-direct/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->preCacheData()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 876
    :catchall_1
    move-exception v13

    if-eqz v2, :cond_8

    .line 877
    :try_start_6
    invoke-virtual {v2, v6}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;)V

    :cond_8
    throw v13

    .line 883
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x2

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 884
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "messageKey="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v4, v12, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 886
    goto/16 :goto_2

    .line 899
    :sswitch_6
    sparse-switch v7, :sswitch_data_3

    .line 915
    :goto_4
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 916
    sparse-switch v7, :sswitch_data_4

    goto/16 :goto_2

    .line 922
    :sswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->preCacheData()V

    goto/16 :goto_2

    .line 902
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/provider/EmailProvider;->mCacheMailbox:Lcom/android/email/provider/ContentCache;

    const-string v14, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v14, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 903
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/provider/EmailProvider;->mCacheHostAuth:Lcom/android/email/provider/ContentCache;

    const-string v14, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v14, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 904
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/provider/EmailProvider;->mCachePolicy:Lcom/android/email/provider/ContentCache;

    const-string v14, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v14, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 907
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/provider/EmailProvider;->mCacheMessage:Lcom/android/email/provider/ContentCache;

    const-string v14, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v14, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 912
    :sswitch_a
    const-string v13, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v13, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_4

    .line 935
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->hasEnoughDisk()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 937
    const-string v13, "EmailProvider do bulk deletion"

    invoke-static {v13}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 938
    const-string v13, "delete from Body where messageKey in (select messageKey from Body except select _id from Message)"

    invoke-virtual {v4, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 942
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/email/provider/EmailProvider;->doDeleteMailPieceByPiece(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    .line 801
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x1001 -> :sswitch_0
        0x2000 -> :sswitch_0
        0x2001 -> :sswitch_0
        0x2002 -> :sswitch_0
        0x9003 -> :sswitch_0
    .end sparse-switch

    .line 823
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_1
        0x1000 -> :sswitch_6
        0x1001 -> :sswitch_1
        0x2000 -> :sswitch_6
        0x2001 -> :sswitch_1
        0x2002 -> :sswitch_1
        0x3000 -> :sswitch_6
        0x3001 -> :sswitch_1
        0x3002 -> :sswitch_5
        0x4000 -> :sswitch_6
        0x4001 -> :sswitch_1
        0x5000 -> :sswitch_6
        0x5001 -> :sswitch_1
        0x6000 -> :sswitch_6
        0x6001 -> :sswitch_1
        0x7000 -> :sswitch_6
        0x7001 -> :sswitch_1
        0x8001 -> :sswitch_1
        0xa000 -> :sswitch_6
        0xa001 -> :sswitch_1
        0xb000 -> :sswitch_6
        0xb001 -> :sswitch_1
        0xc000 -> :sswitch_6
        0xc001 -> :sswitch_1
    .end sparse-switch

    .line 851
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_2
        0x1001 -> :sswitch_3
        0x2001 -> :sswitch_4
        0x2002 -> :sswitch_4
        0x4001 -> :sswitch_4
        0x7001 -> :sswitch_4
    .end sparse-switch

    .line 899
    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_8
        0x1000 -> :sswitch_9
        0x2000 -> :sswitch_a
        0x4000 -> :sswitch_a
        0x7000 -> :sswitch_a
    .end sparse-switch

    .line 916
    :sswitch_data_4
    .sparse-switch
        0x0 -> :sswitch_7
        0x1000 -> :sswitch_7
        0x4000 -> :sswitch_7
        0x7000 -> :sswitch_7
    .end sparse-switch
.end method

.method deleteUnlinked(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "db"
    .parameter "table"
    .parameter "column"
    .parameter "foreignColumn"
    .parameter "foreignTable"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not in (select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 511
    .local v0, count:I
    if-lez v0, :cond_0

    .line 512
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " orphaned row(s) in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_0
    return-void
.end method

.method declared-synchronized getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 9
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 519
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :goto_0
    monitor-exit p0

    return-object v0

    .line 522
    :cond_0
    :try_start_1
    const-string v0, "EmailProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " EmailProvider : getDatabase : checkDatabases "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 526
    const-string v0, "EmailProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " EmailProvider : getDatabase : create EmailProvider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    new-instance v8, Lcom/android/email/provider/DBHelper$DatabaseHelper;

    const-string v0, "EmailProvider.db"

    invoke-direct {v8, p1, v0}, Lcom/android/email/provider/DBHelper$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 528
    .local v8, helper:Lcom/android/email/provider/DBHelper$DatabaseHelper;
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 529
    const-string v0, "EmailProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " EmailProvider : getDatabase : create EmailBodyProvider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    new-instance v7, Lcom/android/email/provider/DBHelper$BodyDatabaseHelper;

    const-string v0, "EmailProviderBody.db"

    invoke-direct {v7, p1, v0}, Lcom/android/email/provider/DBHelper$BodyDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 532
    .local v7, bodyHelper:Lcom/android/email/provider/DBHelper$BodyDatabaseHelper;
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 533
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 535
    .local v6, bodyFileName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" as BodyDatabase"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 539
    .end local v6           #bodyFileName:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->restoreIfNeeded(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 541
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 542
    const-string v0, "EmailProvider"

    const-string v1, "Deleting orphans..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Message_Updates"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->deleteMessageOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Message_Deletes"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->deleteMessageOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Mailbox"

    const-string v3, "accountKey"

    const-string v4, "_id"

    const-string v5, "Account"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/provider/EmailProvider;->deleteUnlinked(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Message"

    const-string v3, "accountKey"

    const-string v4, "_id"

    const-string v5, "Account"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/provider/EmailProvider;->deleteUnlinked(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Policy"

    const-string v3, "_id"

    const-string v4, "policyKey"

    const-string v5, "Account"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/provider/EmailProvider;->deleteUnlinked(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 556
    const-string v0, "EmailProvider"

    const-string v1, "EmailProvider pre-caching..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_3
    invoke-direct {p0}, Lcom/android/email/provider/EmailProvider;->preCacheData()V

    .line 559
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 560
    const-string v0, "EmailProvider"

    const-string v1, "EmailProvider ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_4
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 519
    .end local v7           #bodyHelper:Lcom/android/email/provider/DBHelper$BodyDatabaseHelper;
    .end local v8           #helper:Lcom/android/email/provider/DBHelper$DatabaseHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .parameter "uri"

    .prologue
    .line 1082
    const-string v3, "getType"

    invoke-static {p1, v3}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    .line 1083
    .local v1, match:I
    sparse-switch v1, :sswitch_data_0

    .line 1130
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1085
    :sswitch_0
    const-string v2, "vnd.android.cursor.item/email-body"

    .line 1128
    :cond_0
    :goto_0
    return-object v2

    .line 1087
    :sswitch_1
    const-string v2, "vnd.android.cursor.dir/email-body"

    goto :goto_0

    .line 1095
    :sswitch_2
    const-string v2, "vnd.android.cursor.item/email-message"

    .line 1096
    .local v2, mimeType:Ljava/lang/String;
    const-string v3, "mailboxId"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, mailboxId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1098
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1103
    .end local v0           #mailboxId:Ljava/lang/String;
    .end local v2           #mimeType:Ljava/lang/String;
    :sswitch_3
    const-string v2, "vnd.android.cursor.dir/email-message"

    goto :goto_0

    .line 1105
    :sswitch_4
    const-string v2, "vnd.android.cursor.dir/email-mailbox"

    goto :goto_0

    .line 1107
    :sswitch_5
    const-string v2, "vnd.android.cursor.item/email-mailbox"

    goto :goto_0

    .line 1109
    :sswitch_6
    const-string v2, "vnd.android.cursor.dir/email-account"

    goto :goto_0

    .line 1111
    :sswitch_7
    const-string v2, "vnd.android.cursor.item/email-account"

    goto :goto_0

    .line 1114
    :sswitch_8
    const-string v2, "vnd.android.cursor.dir/email-attachment"

    goto :goto_0

    .line 1116
    :sswitch_9
    const-string v2, "vnd.android.cursor.item/email-attachment"

    goto :goto_0

    .line 1118
    :sswitch_a
    const-string v2, "vnd.android.cursor.dir/email-hostauth"

    goto :goto_0

    .line 1120
    :sswitch_b
    const-string v2, "vnd.android.cursor.item/email-hostauth"

    goto :goto_0

    .line 1122
    :sswitch_c
    const-string v2, "vnd.android.cursor.dir/email-vipmember"

    goto :goto_0

    .line 1124
    :sswitch_d
    const-string v2, "vnd.android.cursor.item/email-vipmember"

    goto :goto_0

    .line 1126
    :sswitch_e
    const-string v2, "vnd.android.cursor.dir/email-smartpush"

    goto :goto_0

    .line 1128
    :sswitch_f
    const-string v2, "vnd.android.cursor.item/email-smartpush"

    goto :goto_0

    .line 1083
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_7
        0x1000 -> :sswitch_4
        0x1001 -> :sswitch_5
        0x2000 -> :sswitch_3
        0x2001 -> :sswitch_2
        0x3000 -> :sswitch_8
        0x3001 -> :sswitch_9
        0x3002 -> :sswitch_8
        0x4000 -> :sswitch_a
        0x4001 -> :sswitch_b
        0x5000 -> :sswitch_3
        0x5001 -> :sswitch_2
        0xa000 -> :sswitch_c
        0xa001 -> :sswitch_d
        0xb000 -> :sswitch_e
        0xb001 -> :sswitch_f
        0xc000 -> :sswitch_1
        0xc001 -> :sswitch_0
    .end sparse-switch
.end method

.method public injectAttachmentService(Lcom/android/email/provider/EmailProvider$AttachmentService;)V
    .locals 0
    .parameter "as"

    .prologue
    .line 2201
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/email/provider/EmailProvider;->DEFAULT_ATTACHMENT_SERVICE:Lcom/android/email/provider/EmailProvider$AttachmentService;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/email/provider/EmailProvider;->mAttachmentService:Lcom/android/email/provider/EmailProvider$AttachmentService;

    .line 2202
    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 20
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1136
    sget-boolean v2, Lcom/android/email/provider/EmailProvider;->DEBUG_PROVIDER:Z

    if-eqz v2, :cond_0

    .line 1137
    const-string v2, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    :cond_0
    const-string v2, "insert"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v16

    .line 1140
    .local v16, match:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 1141
    .local v9, context:Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 1144
    .local v17, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 1145
    .local v10, db:Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v18, v16, 0xc

    .line 1146
    .local v18, table:I
    const-string v13, "0"

    .line 1151
    .local v13, id:Ljava/lang/String;
    const/16 v2, 0x1001

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1000

    move/from16 v0, v16

    if-ne v0, v2, :cond_2

    .line 1152
    :cond_1
    const-string v2, "unreadCount"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1153
    const-string v2, "messageCount"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1156
    :cond_2
    const/4 v3, 0x0

    .line 1159
    .local v3, resultUri:Landroid/net/Uri;
    sparse-switch v16, :sswitch_data_0

    .line 1244
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    :catch_0
    move-exception v11

    .line 1247
    .local v11, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1248
    throw v11

    .line 1174
    .end local v11           #e:Landroid/database/sqlite/SQLiteException;
    :sswitch_0
    :try_start_1
    sget-object v2, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v18

    const-string v4, "foo"

    move-object/from16 v0, p2

    invoke-virtual {v10, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    .line 1175
    .local v14, longId:J
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1176
    sparse-switch v16, :sswitch_data_1

    .line 1210
    :cond_3
    :goto_0
    const/16 v2, 0x5000

    move/from16 v0, v16

    if-eq v0, v2, :cond_4

    const/16 v2, 0x6000

    move/from16 v0, v16

    if-ne v0, v2, :cond_8

    .line 1211
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1178
    :sswitch_1
    const-string v2, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1180
    const-string v2, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 1181
    .local v19, type:I
    if-eqz v19, :cond_5

    const/4 v2, 0x4

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    const/4 v2, 0x5

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    const/4 v2, 0x6

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    const/16 v2, 0x8

    move/from16 v0, v19

    if-ne v0, v2, :cond_3

    .line 1192
    .end local v19           #type:I
    :cond_5
    :sswitch_2
    sget-object v2, Lcom/android/email/provider/EmailProvider;->CACHE_PROJECTIONS:[[Ljava/lang/String;

    aget-object v4, v2, v18

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/provider/EmailProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 1193
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 1195
    const/16 v2, 0x1000

    move/from16 v0, v16

    if-ne v0, v2, :cond_7

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1196
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/email/provider/EmailProvider;->addToMailboxTypeMap(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1201
    :cond_6
    :goto_1
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1197
    :cond_7
    if-nez v16, :cond_6

    .line 1198
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/email/provider/EmailProvider;->getOrCreateAccountMailboxTypeMap(J)Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1201
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1212
    .end local v8           #c:Landroid/database/Cursor;
    :cond_8
    const/16 v2, 0x3000

    move/from16 v0, v16

    if-ne v0, v2, :cond_a

    .line 1213
    const/4 v12, 0x0

    .line 1214
    .local v12, flags:I
    const-string v2, "flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1215
    const-string v2, "flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1218
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/provider/EmailProvider;->mAttachmentService:Lcom/android/email/provider/EmailProvider$AttachmentService;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v2, v4, v14, v15, v12}, Lcom/android/email/provider/EmailProvider$AttachmentService;->attachmentChanged(Landroid/content/Context;JI)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1252
    .end local v12           #flags:I
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/email/provider/EmailProvider;->getBaseNotificationUri(I)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "insert"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v13}, Lcom/android/email/provider/EmailProvider;->sendNotifierChange(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/email/provider/EmailProvider;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v2, v3

    .line 1256
    :goto_3
    return-object v2

    .line 1225
    .end local v14           #longId:J
    :sswitch_3
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 1226
    .restart local v14       #longId:J
    const-string v2, "mailboxKey"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1227
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_3

    .line 1230
    .end local v14           #longId:J
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 1231
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 1232
    .restart local v14       #longId:J
    const-string v2, "messageKey"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1233
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_3

    .line 1236
    .end local v14           #longId:J
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 1237
    .restart local v14       #longId:J
    const-string v2, "accountKey"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1238
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_3

    .line 1240
    .end local v14           #longId:J
    :sswitch_6
    sget-object v2, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v18

    const-string v4, "foo"

    move-object/from16 v0, p2

    invoke-virtual {v10, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    .line 1241
    .restart local v14       #longId:J
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v3

    .line 1242
    goto/16 :goto_2

    .line 1159
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_5
        0x1000 -> :sswitch_0
        0x1001 -> :sswitch_3
        0x2000 -> :sswitch_0
        0x2001 -> :sswitch_4
        0x3000 -> :sswitch_0
        0x3002 -> :sswitch_6
        0x4000 -> :sswitch_0
        0x5000 -> :sswitch_0
        0x6000 -> :sswitch_0
        0x7000 -> :sswitch_0
        0x8000 -> :sswitch_0
        0xa000 -> :sswitch_0
        0xb000 -> :sswitch_0
        0xc000 -> :sswitch_0
    .end sparse-switch

    .line 1176
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1000 -> :sswitch_1
        0x4000 -> :sswitch_2
        0x7000 -> :sswitch_2
    .end sparse-switch
.end method

.method protected isCached(Landroid/net/Uri;J)Z
    .locals 6
    .parameter "baseUri"
    .parameter "id"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2172
    const-string v5, "isCached"

    invoke-static {p1, v5}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v2

    .line 2173
    .local v2, match:I
    shr-int/lit8 v3, v2, 0xc

    .line 2174
    .local v3, table:I
    iget-object v5, p0, Lcom/android/email/provider/EmailProvider;->mContentCaches:[Lcom/android/email/provider/ContentCache;

    aget-object v0, v5, v3

    .line 2175
    .local v0, cache:Lcom/android/email/provider/ContentCache;
    if-nez v0, :cond_1

    .line 2177
    :cond_0
    :goto_0
    return v4

    .line 2176
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/provider/ContentCache;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2177
    .local v1, cc:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public mostRecentMessageQuery(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 5
    .parameter "uri"

    .prologue
    .line 2236
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2237
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 2238
    .local v1, mailboxId:Ljava/lang/String;
    const-string v2, "select max(_id) from Message where mailboxKey=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public notificationQuery(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 5
    .parameter "uri"

    .prologue
    .line 2230
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2231
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 2232
    .local v0, accountId:Ljava/lang/String;
    const-string v2, "SELECT DISTINCT Boxes._id, Boxes.unreadCount, count(Message._id) FROM Message,(SELECT _id,unreadCount,messageCount,lastNotifiedMessageCount,lastNotifiedMessageKey FROM Mailbox WHERE accountKey=? AND (type=0 OR (syncInterval!=0 AND syncInterval!=-1))) AS Boxes WHERE Boxes._id=Message.mailboxKey AND Message._id>Boxes.lastNotifiedMessageKey AND flagRead=0 AND timeStamp!=0"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 1334
    const-string v0, "EmailProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " EmailProvider : onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    invoke-direct {p0}, Lcom/android/email/provider/EmailProvider;->checkMockContext()V

    .line 1336
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/provider/EmailProvider;->grantUriPermission(Landroid/content/Context;)V

    .line 1337
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 49
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1389
    sget-boolean v7, Lcom/android/email/provider/EmailProvider;->DEBUG_PROVIDER:Z

    if-eqz v7, :cond_0

    .line 1390
    const-string v7, "EmailProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "query: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    :cond_0
    const-wide/16 v44, 0x0

    .line 1393
    .local v44, time:J
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1394
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v44

    .line 1396
    :cond_1
    const/16 v29, 0x0

    .line 1399
    .local v29, c:Landroid/database/Cursor;
    :try_start_0
    const-string v7, "query"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v40

    .line 1424
    .local v40, match:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v31

    .line 1426
    .local v31, context:Landroid/content/Context;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1427
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v43, v40, 0xc

    .line 1428
    .local v43, table:I
    const-string v7, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1432
    .local v13, limit:Ljava/lang/String;
    const/16 v30, 0x0

    .line 1433
    .local v30, cache:Lcom/android/email/provider/ContentCache;
    sget-object v7, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v6, v7, v43

    .line 1435
    .local v6, tableName:Ljava/lang/String;
    if-nez p3, :cond_2

    .line 1436
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/provider/EmailProvider;->mContentCaches:[Lcom/android/email/provider/ContentCache;

    aget-object v30, v7, v43

    .line 1438
    :cond_2
    if-nez v30, :cond_3

    .line 1439
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/email/provider/ContentCache;->notCacheable(Landroid/net/Uri;Ljava/lang/String;)V

    .line 1443
    :cond_3
    sparse-switch v40, :sswitch_data_0

    .line 1565
    :try_start_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown URI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1567
    :catch_0
    move-exception v32

    .line 1568
    .local v32, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1569
    throw v32
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1575
    .end local v32           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v7

    if-eqz v30, :cond_4

    if-eqz v29, :cond_4

    sget-boolean v8, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 1576
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v8, v8, v44

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/email/provider/ContentCache;->recordQueryTime(Landroid/database/Cursor;J)V

    .line 1578
    :cond_4
    if-nez v29, :cond_5

    .line 1580
    const-string v8, "EmailProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query returning null for uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", selection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw v7

    .line 1400
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v6           #tableName:Ljava/lang/String;
    .end local v13           #limit:Ljava/lang/String;
    .end local v30           #cache:Lcom/android/email/provider/ContentCache;
    .end local v31           #context:Landroid/content/Context;
    .end local v40           #match:I
    .end local v43           #table:I
    :catch_1
    move-exception v32

    .line 1401
    .local v32, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v48

    .line 1404
    .local v48, uriString:Ljava/lang/String;
    if-eqz v48, :cond_6

    const-string v7, "/-1"

    move-object/from16 v0, v48

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1405
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    move-object/from16 v0, v48

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1406
    const-string v7, "query"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v40

    .line 1407
    .restart local v40       #match:I
    sparse-switch v40, :sswitch_data_1

    .line 1422
    .end local v40           #match:I
    :cond_6
    throw v32

    .line 1419
    .restart local v40       #match:I
    :sswitch_0
    new-instance v7, Landroid/database/MatrixCursor;

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-direct {v7, v0, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1587
    .end local v32           #e:Ljava/lang/IllegalArgumentException;
    .end local v48           #uriString:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 1445
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6       #tableName:Ljava/lang/String;
    .restart local v13       #limit:Ljava/lang/String;
    .restart local v30       #cache:Lcom/android/email/provider/ContentCache;
    .restart local v31       #context:Landroid/content/Context;
    .restart local v43       #table:I
    :sswitch_1
    :try_start_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/email/provider/EmailProvider;->notificationQuery(Landroid/net/Uri;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v29

    .line 1575
    if-eqz v30, :cond_7

    if-eqz v29, :cond_7

    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_7

    .line 1576
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long v7, v7, v44

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/email/provider/ContentCache;->recordQueryTime(Landroid/database/Cursor;J)V

    .line 1578
    :cond_7
    if-nez v29, :cond_8

    .line 1580
    const-string v7, "EmailProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Query returning null for uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", selection: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v7, v29

    goto :goto_0

    .line 1448
    :sswitch_2
    :try_start_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/email/provider/EmailProvider;->mostRecentMessageQuery(Landroid/net/Uri;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v29

    .line 1575
    if-eqz v30, :cond_9

    if-eqz v29, :cond_9

    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_9

    .line 1576
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long v7, v7, v44

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/email/provider/ContentCache;->recordQueryTime(Landroid/database/Cursor;J)V

    .line 1578
    :cond_9
    if-nez v29, :cond_a

    .line 1580
    const-string v7, "EmailProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Query returning null for uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", selection: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v7, v29

    goto/16 :goto_0

    .line 1452
    :sswitch_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/provider/EmailProvider;->mCacheAccount:Lcom/android/email/provider/ContentCache;

    invoke-virtual {v7}, Lcom/android/email/provider/ContentCache;->getSnapshot()Ljava/util/Map;

    move-result-object v23

    .line 1453
    .local v23, accountCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/database/Cursor;>;"
    const-wide/16 v26, -0x1

    .line 1457
    .local v26, accountId:J
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v28

    .line 1458
    .local v28, accounts:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/database/Cursor;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, i$:Ljava/util/Iterator;
    :cond_b
    :goto_1
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/database/Cursor;

    .line 1461
    .local v25, accountCursor:Landroid/database/Cursor;
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1462
    const/16 v7, 0x9

    move-object/from16 v0, v25

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_11

    const/16 v35, 0x1

    .line 1464
    .local v35, isDefault:Z
    :goto_2
    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 1466
    .local v36, iterId:J
    if-eqz v35, :cond_12

    .line 1467
    move-wide/from16 v26, v36

    .line 1475
    .end local v25           #accountCursor:Landroid/database/Cursor;
    .end local v35           #isDefault:Z
    .end local v36           #iterId:J
    :cond_c
    new-instance v41, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-direct {v0, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1476
    .local v41, mc:Landroid/database/MatrixCursor;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1477
    move-object/from16 v29, v41

    .line 1575
    .end local v23           #accountCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/database/Cursor;>;"
    .end local v26           #accountId:J
    .end local v28           #accounts:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/database/Cursor;>;"
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v41           #mc:Landroid/database/MatrixCursor;
    :cond_d
    :goto_3
    if-eqz v30, :cond_e

    if-eqz v29, :cond_e

    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_e

    .line 1576
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long v7, v7, v44

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/email/provider/ContentCache;->recordQueryTime(Landroid/database/Cursor;J)V

    .line 1578
    :cond_e
    if-nez v29, :cond_f

    .line 1580
    const-string v7, "EmailProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Query returning null for uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", selection: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :cond_f
    if-eqz v29, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->isTemporary()Z

    move-result v7

    if-nez v7, :cond_10

    .line 1585
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-interface {v0, v7, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_10
    move-object/from16 v7, v29

    .line 1587
    goto/16 :goto_0

    .line 1462
    .restart local v23       #accountCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/database/Cursor;>;"
    .restart local v25       #accountCursor:Landroid/database/Cursor;
    .restart local v26       #accountId:J
    .restart local v28       #accounts:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/database/Cursor;>;"
    .restart local v33       #i$:Ljava/util/Iterator;
    :cond_11
    const/16 v35, 0x0

    goto :goto_2

    .line 1469
    .restart local v35       #isDefault:Z
    .restart local v36       #iterId:J
    :cond_12
    const-wide/16 v7, -0x1

    cmp-long v7, v26, v7

    if-eqz v7, :cond_13

    cmp-long v7, v36, v26

    if-gez v7, :cond_b

    .line 1470
    :cond_13
    move-wide/from16 v26, v36

    goto/16 :goto_1

    .line 1481
    .end local v23           #accountCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/database/Cursor;>;"
    .end local v25           #accountCursor:Landroid/database/Cursor;
    .end local v26           #accountId:J
    .end local v28           #accounts:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/database/Cursor;>;"
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v35           #isDefault:Z
    .end local v36           #iterId:J
    :sswitch_4
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v42

    .line 1482
    .local v42, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    move-object/from16 v0, v42

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    .line 1483
    .restart local v26       #accountId:J
    const/4 v7, 0x2

    move-object/from16 v0, v42

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    .line 1484
    .local v47, type:I
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move/from16 v3, v47

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/provider/EmailProvider;->getMailboxIdFromMailboxTypeMap(JI)J

    move-result-wide v38

    .line 1486
    .local v38, mailboxId:J
    new-instance v41, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-direct {v0, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1487
    .restart local v41       #mc:Landroid/database/MatrixCursor;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1488
    move-object/from16 v29, v41

    .line 1489
    goto/16 :goto_3

    .line 1503
    .end local v26           #accountId:J
    .end local v38           #mailboxId:J
    .end local v41           #mc:Landroid/database/MatrixCursor;
    .end local v42           #pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v47           #type:I
    :sswitch_5
    if-nez v40, :cond_15

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent;->COUNT_COLUMNS:[Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    if-nez p3, :cond_15

    const-string v7, "1"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1507
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1508
    :try_start_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v24

    .line 1511
    .local v24, accountCount:I
    const/16 v7, 0x10

    move/from16 v0, v24

    if-ge v0, v7, :cond_14

    .line 1512
    new-instance v41, Landroid/database/MatrixCursor;

    const/4 v7, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1513
    .restart local v41       #mc:Landroid/database/MatrixCursor;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1514
    move-object/from16 v29, v41

    .line 1515
    monitor-exit v8

    goto/16 :goto_3

    .line 1517
    .end local v24           #accountCount:I
    .end local v41           #mc:Landroid/database/MatrixCursor;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1570
    :catch_2
    move-exception v32

    .line 1571
    .local v32, e:Ljava/lang/RuntimeException;
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1572
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1573
    throw v32
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1517
    .end local v32           #e:Ljava/lang/RuntimeException;
    .restart local v24       #accountCount:I
    :cond_14
    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1519
    .end local v24           #accountCount:I
    :cond_15
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    :try_start_b
    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 1521
    goto/16 :goto_3

    .line 1534
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 1535
    .local v34, id:Ljava/lang/String;
    if-eqz v30, :cond_16

    .line 1536
    move-object/from16 v0, v30

    move-object/from16 v1, v34

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/ContentCache;->getCachedCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 1538
    :cond_16
    if-nez v29, :cond_d

    .line 1539
    const/16 v46, 0x0

    .line 1540
    .local v46, token:Lcom/android/email/provider/ContentCache$CacheToken;
    if-eqz v30, :cond_17

    .line 1541
    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/email/provider/ContentCache;->getCacheToken(Ljava/lang/String;)Lcom/android/email/provider/ContentCache$CacheToken;

    move-result-object v46

    .line 1543
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 1545
    if-eqz v30, :cond_d

    .line 1546
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, v34

    move-object/from16 v3, p2

    move-object/from16 v4, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/provider/ContentCache;->putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCache$CacheToken;)Landroid/database/Cursor;

    move-result-object v29

    goto/16 :goto_3

    .line 1552
    .end local v34           #id:Ljava/lang/String;
    .end local v46           #token:Lcom/android/email/provider/ContentCache$CacheToken;
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 1553
    .restart local v34       #id:Ljava/lang/String;
    const-string v15, "Attachment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "messageKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v7, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v5

    move-object/from16 v16, p2

    move-object/from16 v18, p4

    move-object/from16 v21, p5

    move-object/from16 v22, v13

    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 1556
    goto/16 :goto_3

    .line 1559
    .end local v34           #id:Ljava/lang/String;
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 1560
    .restart local v34       #id:Ljava/lang/String;
    const-string v15, "QuickResponse"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "accountKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v7, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v5

    move-object/from16 v16, p2

    move-object/from16 v18, p4

    move-object/from16 v21, p5

    invoke-virtual/range {v14 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    move-result-object v29

    .line 1563
    goto/16 :goto_3

    .line 1443
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_6
        0x5 -> :sswitch_3
        0x1000 -> :sswitch_5
        0x1001 -> :sswitch_6
        0x1002 -> :sswitch_4
        0x1004 -> :sswitch_1
        0x1005 -> :sswitch_2
        0x2000 -> :sswitch_5
        0x2001 -> :sswitch_6
        0x3000 -> :sswitch_5
        0x3001 -> :sswitch_6
        0x3002 -> :sswitch_7
        0x4000 -> :sswitch_5
        0x4001 -> :sswitch_6
        0x5000 -> :sswitch_5
        0x5001 -> :sswitch_6
        0x6000 -> :sswitch_5
        0x6001 -> :sswitch_6
        0x7000 -> :sswitch_5
        0x7001 -> :sswitch_6
        0x8000 -> :sswitch_5
        0x8001 -> :sswitch_6
        0x8002 -> :sswitch_8
        0xa000 -> :sswitch_5
        0xa001 -> :sswitch_6
        0xb000 -> :sswitch_5
        0xb001 -> :sswitch_6
        0xc000 -> :sswitch_5
        0xc001 -> :sswitch_6
    .end sparse-switch

    .line 1407
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_0
        0x1001 -> :sswitch_0
        0x2001 -> :sswitch_0
        0x3001 -> :sswitch_0
        0x4001 -> :sswitch_0
        0x5001 -> :sswitch_0
        0x6001 -> :sswitch_0
        0x7001 -> :sswitch_0
        0xa001 -> :sswitch_0
        0xb001 -> :sswitch_0
        0xc001 -> :sswitch_0
    .end sparse-switch
.end method

.method public shutdown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 717
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 718
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 719
    iput-object v2, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 721
    :cond_0
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    .line 722
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 723
    iput-object v2, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 725
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/provider/EmailProvider;->getBackupDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 726
    .local v0, backupDatabase:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_2

    .line 727
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 729
    :cond_2
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 33
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1804
    sget-boolean v5, Lcom/android/email/provider/EmailProvider;->DEBUG_PROVIDER:Z

    if-eqz v5, :cond_0

    .line 1805
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    :cond_0
    sget-object v5, Lcom/android/email/provider/EmailProvider;->INTEGRITY_CHECK_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_1

    .line 1809
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1810
    const/16 v28, 0x0

    .line 2027
    :goto_0
    return v28

    .line 1811
    :cond_1
    sget-object v5, Lcom/android/email/provider/EmailProvider;->ACCOUNT_BACKUP_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_2

    .line 1812
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/provider/EmailProvider;->backupAccounts(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v28

    goto :goto_0

    .line 1816
    :cond_2
    sget-object v26, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    .line 1818
    .local v26, notificationUri:Landroid/net/Uri;
    const-string v5, "update"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v24

    .line 1819
    .local v24, match:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v19

    .line 1820
    .local v19, context:Landroid/content/Context;
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    .line 1822
    .local v27, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1823
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v30, v24, 0xc

    .line 1828
    .local v30, table:I
    const/16 v5, 0x1001

    move/from16 v0, v24

    if-eq v0, v5, :cond_3

    const/16 v5, 0x1000

    move/from16 v0, v24

    if-ne v0, v5, :cond_4

    .line 1829
    :cond_3
    const-string v5, "unreadCount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1830
    const-string v5, "messageCount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1833
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/provider/EmailProvider;->mContentCaches:[Lcom/android/email/provider/ContentCache;

    aget-object v17, v5, v30

    .line 1834
    .local v17, cache:Lcom/android/email/provider/ContentCache;
    sget-object v5, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v5, v30

    .line 1835
    .local v4, tableName:Ljava/lang/String;
    const-string v23, "0"

    .line 1839
    .local v23, id:Ljava/lang/String;
    sparse-switch v24, :sswitch_data_0

    .line 2017
    :try_start_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2019
    :catch_0
    move-exception v20

    .line 2020
    .local v20, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 2021
    throw v20

    .line 1842
    .end local v20           #e:Landroid/database/sqlite/SQLiteException;
    :sswitch_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1843
    const-string v5, "field"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1844
    .local v21, field:Ljava/lang/String;
    const-string v5, "add"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    .line 1845
    .local v12, add:Ljava/lang/Long;
    if-eqz v21, :cond_5

    if-nez v12, :cond_6

    .line 1846
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No field/add specified "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1848
    :cond_6
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1849
    .local v11, actualValues:Landroid/content/ContentValues;
    if-eqz v17, :cond_7

    .line 1850
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1853
    :cond_7
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1855
    const/4 v5, 0x2

    :try_start_3
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v21, v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v16

    .line 1860
    .local v16, c:Landroid/database/Cursor;
    const/16 v28, 0x0

    .line 1861
    .local v28, result:I
    const/4 v5, 0x1

    :try_start_4
    new-array v15, v5, [Ljava/lang/String;

    .line 1862
    .local v15, bind:[Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1863
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v15, v5

    .line 1864
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long v31, v5, v7

    .line 1865
    .local v31, value:J
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1866
    const-string v5, "_id=?"

    invoke-virtual {v3, v4, v11, v5, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v28

    .line 1868
    .end local v31           #value:J
    :cond_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1870
    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1873
    :try_start_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1876
    if-eqz v17, :cond_9

    .line 1877
    :try_start_7
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 2025
    .end local v11           #actualValues:Landroid/content/ContentValues;
    .end local v12           #add:Ljava/lang/Long;
    .end local v15           #bind:[Ljava/lang/String;
    .end local v16           #c:Landroid/database/Cursor;
    .end local v21           #field:Ljava/lang/String;
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/email/provider/EmailProvider;->getBaseNotificationUri(I)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "update"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v5, v6, v1}, Lcom/android/email/provider/EmailProvider;->sendNotifierChange(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v5}, Lcom/android/email/provider/EmailProvider;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 1870
    .restart local v11       #actualValues:Landroid/content/ContentValues;
    .restart local v12       #add:Ljava/lang/Long;
    .restart local v16       #c:Landroid/database/Cursor;
    .restart local v21       #field:Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_8
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1873
    .end local v16           #c:Landroid/database/Cursor;
    .end local v28           #result:I
    :catchall_1
    move-exception v5

    :try_start_9
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1876
    :catchall_2
    move-exception v5

    if-eqz v17, :cond_a

    .line 1877
    :try_start_a
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_a
    throw v5

    .line 1893
    .end local v11           #actualValues:Landroid/content/ContentValues;
    .end local v12           #add:Ljava/lang/Long;
    .end local v21           #field:Ljava/lang/String;
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1894
    if-eqz v17, :cond_b

    .line 1895
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0

    .line 1898
    :cond_b
    const/16 v5, 0x2002

    move/from16 v0, v24

    if-ne v0, v5, :cond_e

    .line 1903
    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert or ignore into Message_Updates select * from Message where _id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1907
    :cond_c
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1

    move-result v28

    .line 1914
    .restart local v28       #result:I
    if-eqz v17, :cond_d

    .line 1915
    :try_start_c
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1918
    :cond_d
    const/16 v5, 0x3001

    move/from16 v0, v24

    if-ne v0, v5, :cond_9

    .line 1919
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v13, v5

    .line 1920
    .local v13, attId:J
    const-string v5, "flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1921
    const-string v5, "flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 1922
    .local v22, flags:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/provider/EmailProvider;->mAttachmentService:Lcom/android/email/provider/EmailProvider$AttachmentService;

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v5, v0, v13, v14, v1}, Lcom/android/email/provider/EmailProvider$AttachmentService;->attachmentChanged(Landroid/content/Context;JI)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_1

    .line 1904
    .end local v13           #attId:J
    .end local v22           #flags:I
    .end local v28           #result:I
    :cond_e
    const/16 v5, 0x2001

    move/from16 v0, v24

    if-ne v0, v5, :cond_c

    .line 1905
    :try_start_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete from Message_Updates where _id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_2

    .line 1909
    :catch_1
    move-exception v20

    .line 1911
    .restart local v20       #e:Landroid/database/sqlite/SQLiteException;
    const/16 p2, 0x0

    .line 1912
    :try_start_e
    throw v20
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1914
    .end local v20           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_3
    move-exception v5

    if-eqz v17, :cond_f

    .line 1915
    :try_start_f
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_f
    throw v5

    .line 1938
    :sswitch_2
    const v5, 0xc002

    move/from16 v0, v24

    if-ne v0, v5, :cond_11

    .line 1940
    const-string v5, "textContent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v18

    .line 1941
    .local v18, compressedBody:[B
    if-eqz v18, :cond_10

    .line 1942
    const-string v5, "textContent"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/provider/EmailProvider;->decompressBodyData([B)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    :cond_10
    const-string v5, "htmlContent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v18

    .line 1945
    if-eqz v18, :cond_11

    .line 1946
    const-string v5, "htmlContent"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/provider/EmailProvider;->decompressBodyData([B)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    .end local v18           #compressedBody:[B
    :cond_11
    sparse-switch v24, :sswitch_data_1

    .line 1983
    :goto_3
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v28

    .line 1984
    .restart local v28       #result:I
    goto/16 :goto_1

    .line 1956
    .end local v28           #result:I
    :sswitch_3
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1958
    .restart local v16       #c:Landroid/database/Cursor;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_0

    .line 1959
    const/16 v28, 0x0

    .line 1962
    .restart local v28       #result:I
    :goto_4
    :try_start_10
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1963
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1, v6, v7}, Lcom/android/email/provider/EmailProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1966
    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    .line 1968
    :cond_12
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1970
    :try_start_11
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 1973
    :try_start_12
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_1

    .line 1970
    :catchall_4
    move-exception v5

    :try_start_13
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 1973
    :catchall_5
    move-exception v5

    :try_start_14
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1980
    .end local v16           #c:Landroid/database/Cursor;
    .end local v28           #result:I
    :sswitch_4
    const-string v5, "Update"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_3

    .line 1987
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1988
    if-eqz v17, :cond_13

    .line 1989
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V

    .line 1991
    :cond_13
    sget-object v25, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    .line 1992
    .local v25, newMessageCount:Landroid/content/ContentValues;
    if-eqz p2, :cond_14

    .line 1993
    const-string v5, "set"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v29

    .line 1994
    .local v29, set:Ljava/lang/Long;
    if-eqz v29, :cond_14

    .line 1995
    new-instance v25, Landroid/content/ContentValues;

    .end local v25           #newMessageCount:Landroid/content/ContentValues;
    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 1996
    .restart local v25       #newMessageCount:Landroid/content/ContentValues;
    const-string v5, "newMessageCount"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_0

    .line 2000
    .end local v29           #set:Ljava/lang/Long;
    :cond_14
    :try_start_15
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    move-result v28

    .line 2003
    .restart local v28       #result:I
    if-eqz v17, :cond_15

    .line 2004
    :try_start_16
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2007
    :cond_15
    sget-object v26, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    .line 2008
    goto/16 :goto_1

    .line 2003
    .end local v28           #result:I
    :catchall_6
    move-exception v5

    if-eqz v17, :cond_16

    .line 2004
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_16
    throw v5

    .line 2010
    .end local v25           #newMessageCount:Landroid/content/ContentValues;
    :sswitch_6
    sget-object v5, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v28

    .line 2013
    .restart local v28       #result:I
    const-string v5, "Reset all new counts"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 2014
    sget-object v26, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_0

    .line 2015
    goto/16 :goto_1

    .line 1839
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_6
        0x4 -> :sswitch_5
        0x1000 -> :sswitch_2
        0x1001 -> :sswitch_1
        0x1003 -> :sswitch_0
        0x2000 -> :sswitch_2
        0x2001 -> :sswitch_1
        0x2002 -> :sswitch_1
        0x3000 -> :sswitch_2
        0x3001 -> :sswitch_1
        0x4000 -> :sswitch_2
        0x4001 -> :sswitch_1
        0x5000 -> :sswitch_2
        0x5001 -> :sswitch_1
        0x7000 -> :sswitch_2
        0x7001 -> :sswitch_1
        0x8001 -> :sswitch_1
        0xa000 -> :sswitch_2
        0xa001 -> :sswitch_1
        0xb000 -> :sswitch_2
        0xb001 -> :sswitch_1
        0xc000 -> :sswitch_2
        0xc001 -> :sswitch_1
        0xc002 -> :sswitch_2
    .end sparse-switch

    .line 1949
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_4
        0x4000 -> :sswitch_3
        0x7000 -> :sswitch_3
    .end sparse-switch
.end method
