.class public Lcom/android/exchange/adapter/FolderSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "FolderSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/FolderSyncParser$1;,
        Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;
    }
.end annotation


# static fields
.field public static final ALL_BUT_ACCOUNT_MAILBOX:Ljava/lang/String; = "accountKey=? and type!=68"

.field public static final CALENDAR_TYPE:I = 0x8

.field public static final CONTACTS_TYPE:I = 0x9

.field public static final DELETED_TYPE:I = 0x4

.field public static final DRAFTS_TYPE:I = 0x3

.field public static final INBOX_TYPE:I = 0x2

.field public static final JOURNAL_TYPE:I = 0xb

.field public static final MAILBOX_COMMIT_SIZE:I = 0x14

.field private static final MAILBOX_ID_COLUMNS_ID:I = 0x0

.field private static final MAILBOX_ID_COLUMNS_PARENT_SERVER_ID:I = 0x2

.field private static final MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String; = null

.field private static final MAILBOX_ID_COLUMNS_SERVER_ID:I = 0x1

.field private static final MAILBOX_STATE_INTERVAL:I = 0x1

.field private static final MAILBOX_STATE_LOOKBACK:I = 0x2

.field private static final MAILBOX_STATE_PROJECTION:[Ljava/lang/String; = null

.field private static final MAILBOX_STATE_SELECTION:Ljava/lang/String; = "accountKey=? AND (syncInterval!=-1 OR syncLookback!=0)"

.field private static final MAILBOX_STATE_SERVER_ID:I = 0x0

.field public static final NOTES_TYPE:I = 0xa

.field public static final OUTBOX_TYPE:I = 0x6

.field public static final SENT_TYPE:I = 0x5

.field public static final TAG:Ljava/lang/String; = "FolderSyncParser"

.field public static final TASKS_TYPE:I = 0x7

.field private static final UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues; = null

.field public static final USER_GENERIC_TYPE:I = 0x1

.field public static final USER_MAILBOX_TYPE:I = 0xc

.field public static final VALID_EAS_FOLDER_TYPES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final WHERE_DISPLAY_NAME_AND_ACCOUNT:Ljava/lang/String; = "displayName=? and accountKey=?"

.field private static final WHERE_PARENT_SERVER_ID_AND_ACCOUNT:Ljava/lang/String; = "parentServerId=? and accountKey=?"

.field private static final WHERE_SERVER_ID_AND_ACCOUNT:Ljava/lang/String; = "serverId=? and accountKey=?"


# instance fields
.field mAccountId:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field mAccountIdAsString:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mBindArguments:[Ljava/lang/String;

.field private mCommitElapse:J

.field private mFixupUninitializedNeeded:Z

.field mInUnitTest:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mInitialSync:Z

.field private mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mParentFixupsNeeded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusOnly:Z

.field final mSyncOptionsMap:Ljava/util/HashMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 79
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->VALID_EAS_FOLDER_TYPES:Ljava/util/List;

    .line 95
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "serverId"

    aput-object v1, v0, v3

    const-string v1, "parentServerId"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    .line 121
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

    .line 270
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "serverId"

    aput-object v1, v0, v6

    const-string v1, "syncInterval"

    aput-object v1, v0, v3

    const-string v1, "syncLookback"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_STATE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 1
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/adapter/FolderSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;Z)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;Z)V
    .locals 4
    .parameter "in"
    .parameter "adapter"
    .parameter "statusOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 105
    iput-boolean v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInUnitTest:Z

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    .line 113
    iput-boolean v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z

    .line 119
    iput-wide v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mCommitElapse:J

    .line 124
    sget-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

    const-string v1, "parentKey"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    .line 134
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    .line 135
    iget-wide v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    .line 136
    iput-boolean p3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mStatusOnly:Z

    .line 137
    return-void
.end method

.method private commitMailboxes(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    .local p2, userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    .local p3, mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/Mailbox;>;"
    .local p4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 533
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/Mailbox;

    .line 534
    .local v2, m:Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual {p0, v2, p3}, Lcom/android/exchange/adapter/FolderSyncParser;->isValidMailFolder(Lcom/android/emailcommon/provider/Mailbox;Ljava/util/HashMap;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 535
    iput v5, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 536
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 538
    :cond_0
    new-array v7, v5, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rejecting unknown type mailbox: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 543
    .end local v2           #m:Lcom/android/emailcommon/provider/Mailbox;
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/Mailbox;

    .line 544
    .restart local v2       #m:Lcom/android/emailcommon/provider/Mailbox;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "Adding mailbox: "

    aput-object v8, v7, v6

    iget-object v8, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 545
    sget-object v7, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 550
    .end local v2           #m:Lcom/android/emailcommon/provider/Mailbox;
    :cond_2
    const-string v7, "Applying "

    iget-object v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const-string v9, " mailbox operations."

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 554
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 555
    .local v3, start:J
    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "com.android.email.provider"

    iget-object v9, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 556
    iget-wide v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mCommitElapse:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    add-long/2addr v7, v9

    sub-long/2addr v7, v3

    iput-wide v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mCommitElapse:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 563
    .end local v3           #start:J
    :goto_2
    return v5

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, e:Landroid/os/RemoteException;
    new-array v5, v5, [Ljava/lang/String;

    const-string v7, "RemoteException in commitMailboxes"

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    move v5, v6

    .line 560
    goto :goto_2

    .line 561
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 562
    .local v0, e:Landroid/content/OperationApplicationException;
    new-array v5, v5, [Ljava/lang/String;

    const-string v7, "OperationApplicationException in commitMailboxes"

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    move v5, v6

    .line 563
    goto :goto_2
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "serverId"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 218
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 219
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    const-string v3, "serverId=? and accountKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addParser()Lcom/android/emailcommon/provider/Mailbox;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v10, -0x2

    const/4 v9, -0x5

    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 326
    .local v3, serverId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 327
    .local v2, parentId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 329
    .local v4, type:I
    :goto_0
    const/16 v7, 0x1cf

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v7

    if-eq v7, v11, :cond_0

    .line 330
    iget v7, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v7, :pswitch_data_0

    .line 348
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .line 332
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 333
    goto :goto_0

    .line 336
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v4

    .line 337
    goto :goto_0

    .line 340
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 341
    goto :goto_0

    .line 344
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 345
    goto :goto_0

    .line 352
    :cond_0
    sget-object v7, Lcom/android/exchange/adapter/FolderSyncParser;->VALID_EAS_FOLDER_TYPES:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 353
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 354
    .local v0, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    iput-object v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 355
    iput-object v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 356
    iget-wide v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    iput-wide v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 357
    iput v6, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 360
    const/4 v7, -0x1

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 361
    packed-switch v4, :pswitch_data_1

    .line 411
    :goto_1
    :pswitch_4
    iget v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v8, 0x40

    if-ge v7, v8, :cond_1

    move v5, v6

    :cond_1
    iput-boolean v5, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 413
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 414
    iput-object v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    .line 415
    iget-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-nez v5, :cond_2

    .line 416
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_2
    iput-boolean v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z

    .line 424
    .end local v0           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :goto_2
    return-object v0

    .line 363
    .restart local v0       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :pswitch_5
    iput v5, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 366
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v7, v7, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    if-ne v7, v9, :cond_3

    .line 367
    iput v10, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 372
    :goto_3
    iget v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    goto :goto_1

    .line 369
    :cond_3
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v7, v7, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    goto :goto_3

    .line 375
    :pswitch_6
    const/16 v7, 0x42

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 376
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v7, v7, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    if-ne v7, v9, :cond_4

    .line 377
    iput v10, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    goto :goto_1

    .line 379
    :cond_4
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v7, v7, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    goto :goto_1

    .line 386
    :pswitch_7
    const/4 v7, 0x4

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    goto :goto_1

    .line 389
    :pswitch_8
    const/4 v7, 0x5

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    goto :goto_1

    .line 392
    :pswitch_9
    iput v11, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    goto :goto_1

    .line 395
    :pswitch_a
    const/4 v7, 0x6

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    goto :goto_1

    .line 398
    :pswitch_b
    const/16 v7, 0x41

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 399
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v7, v7, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    if-ne v7, v9, :cond_5

    .line 400
    iput v10, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    goto :goto_1

    .line 402
    :cond_5
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v7, v7, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    goto :goto_1

    .line 406
    :pswitch_c
    const/16 v7, 0x45

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    goto :goto_1

    .line 424
    .end local v0           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 330
    :pswitch_data_0
    .packed-switch 0x1c7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 361
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_6
    .end packed-switch
.end method

.method public changesParser(Ljava/util/ArrayList;Z)V
    .locals 23
    .parameter
    .parameter "initialSync"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v12, addMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mCommitElapse:J

    .line 574
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Lcom/android/exchange/provider/MailboxUtilities;->startMailboxChanges(Landroid/content/Context;J)V

    .line 576
    :cond_0
    :goto_0
    const/16 v5, 0x1ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_7

    .line 577
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x1cf

    if-ne v5, v6, :cond_3

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/FolderSyncParser;->addParser()Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v17

    .line 583
    .local v17, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v17, :cond_0

    .line 584
    const/16 v16, 0x0

    .line 585
    .local v16, localMailbox:Lcom/android/emailcommon/provider/Mailbox;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-eqz v5, :cond_1

    .line 586
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    move-object/from16 v0, v17

    iget v8, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-static {v5, v6, v7, v8}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v16

    .line 589
    :cond_1
    if-eqz v16, :cond_2

    .line 590
    const-string v5, "FolderSyncParser"

    const-string v6, "Update local folder"

    invoke-static {v5, v6}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/provider/Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_0

    .line 593
    :cond_2
    const-string v5, "FolderSyncParser"

    const-string v6, "Add new folder"

    invoke-static {v5, v6}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 598
    .end local v16           #localMailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v17           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x1d0

    if-ne v5, v6, :cond_4

    .line 599
    invoke-virtual/range {p0 .. p1}, Lcom/android/exchange/adapter/FolderSyncParser;->deleteParser(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 600
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x1d1

    if-ne v5, v6, :cond_5

    .line 601
    invoke-virtual/range {p0 .. p1}, Lcom/android/exchange/adapter/FolderSyncParser;->updateParser(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 602
    :cond_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x1d7

    if-ne v5, v6, :cond_6

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    goto :goto_0

    .line 605
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .line 610
    :cond_7
    monitor-enter p0

    .line 612
    :try_start_0
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v22, validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v21, userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 618
    .local v19, mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/Mailbox;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/emailcommon/provider/Mailbox;

    .line 619
    .restart local v17       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 683
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v17           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v19           #mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/Mailbox;>;"
    .end local v21           #userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    .end local v22           #validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 622
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v19       #mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/Mailbox;>;"
    .restart local v21       #userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    .restart local v22       #validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    :cond_8
    const/16 v18, 0x0

    .line 623
    .local v18, mailboxCommitCount:I
    :try_start_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_9
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/emailcommon/provider/Mailbox;

    .line 625
    .restart local v17       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v6, 0x45

    if-ne v5, v6, :cond_a

    .line 626
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    :goto_3
    if-eqz p2, :cond_9

    add-int/lit8 v18, v18, 0x1

    const/16 v5, 0x14

    move/from16 v0, v18

    if-ne v0, v5, :cond_9

    .line 632
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    move-object/from16 v3, v19

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/FolderSyncParser;->commitMailboxes(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 634
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v5}, Lcom/android/exchange/EasSyncService;->stop()V

    .line 635
    monitor-exit p0

    .line 684
    .end local v17           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :goto_4
    return-void

    .line 628
    .restart local v17       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_a
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 638
    :cond_b
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 639
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 640
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 641
    const/16 v18, 0x0

    goto :goto_2

    .line 645
    .end local v17           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_c
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 646
    .local v14, cv:Landroid/content/ContentValues;
    const-string v5, "syncKey"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, v6, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    sget-object v5, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    move-object/from16 v3, v19

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/FolderSyncParser;->commitMailboxes(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 653
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v5}, Lcom/android/exchange/EasSyncService;->stop()V

    .line 654
    monitor-exit p0

    goto :goto_4

    .line 658
    :cond_d
    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EasSyncService:FolderSync:commit ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mCommitElapse:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 661
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accountKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 663
    .local v11, accountSelector:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z

    if-eqz v5, :cond_e

    .line 664
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Lcom/android/exchange/provider/MailboxUtilities;->setParentKeyAndFlags(Landroid/content/Context;J)V

    .line 667
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 668
    .local v20, parentServerId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v8, "parentServerId=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v20, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 672
    .local v13, c:Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 673
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v5, v13, v11}, Lcom/android/exchange/provider/MailboxUtilities;->setFlagsAndChildrensParentKey(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 677
    :cond_f
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5

    .line 682
    .end local v13           #c:Landroid/database/Cursor;
    .end local v20           #parentServerId:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Lcom/android/exchange/provider/MailboxUtilities;->endMailboxChanges(Landroid/content/Context;J)V

    .line 683
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4
.end method

.method public commandsParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    return-void
.end method

.method public commit()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 700
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const-string v1, "Sync Issues"

    aput-object v1, v0, v10

    .line 701
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 702
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName=? and accountKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 705
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 706
    .local v9, parentServerId:Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 708
    .local v7, id:J
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 710
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 713
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 715
    if-eqz v9, :cond_1

    .line 716
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 718
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    aput-object v9, v0, v10

    .line 719
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "parentServerId=? and accountKey=?"

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 724
    :cond_1
    iget-boolean v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-eqz v0, :cond_2

    .line 725
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->restoreMailboxSyncOptions()V

    .line 727
    :cond_2
    return-void

    .line 713
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public deleteParser(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    const/16 v3, 0x1d0

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 225
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v3, :pswitch_data_0

    .line 250
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .line 227
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, serverId:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 231
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Deleting "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 233
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 238
    iget-boolean v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-nez v3, :cond_0

    .line 239
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, parentId:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v1           #parentId:Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .line 253
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #serverId:Ljava/lang/String;
    :cond_1
    return-void

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1c8
        :pswitch_0
    .end packed-switch
.end method

.method isValidMailFolder(Lcom/android/emailcommon/provider/Mailbox;Ljava/util/HashMap;)Z
    .locals 12
    .parameter "mailbox"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/Mailbox;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/Mailbox;>;"
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 441
    iget v8, p1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 443
    .local v8, folderType:I
    const/16 v1, 0x40

    if-ge v8, v1, :cond_1

    move v6, v0

    .line 468
    :cond_0
    :goto_0
    return v6

    .line 445
    :cond_1
    const/16 v1, 0x45

    if-ne v8, v1, :cond_0

    .line 447
    iget-object v1, p1, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/emailcommon/provider/Mailbox;

    .line 450
    .local v9, parent:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v9, :cond_3

    .line 451
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 452
    const-wide/16 v10, -0x1

    .line 453
    .local v10, parentId:J
    iget-object v1, p1, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 454
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 455
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND serverId=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v10, v0

    .line 460
    :cond_2
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v9

    .line 463
    if-eqz v9, :cond_0

    .line 468
    .end local v10           #parentId:J
    :cond_3
    invoke-virtual {p0, v9, p2}, Lcom/android/exchange/adapter/FolderSyncParser;->isValidMailFolder(Lcom/android/emailcommon/provider/Mailbox;Ljava/util/HashMap;)Z

    move-result v6

    goto :goto_0
.end method

.method public parse()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v3, 0x0

    .line 143
    .local v3, res:Z
    const/4 v4, 0x0

    .line 146
    .local v4, resetFolders:Z
    iget-object v6, p0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v6, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 147
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v6, "0"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    .line 148
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v6

    const/16 v7, 0x1d6

    if-eq v6, v7, :cond_4

    .line 149
    new-instance v6, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v6, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v6

    .line 147
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 164
    .local v5, status:I
    :cond_2
    const/16 v6, 0x9

    if-eq v5, v6, :cond_3

    invoke-static {v5}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isBadSyncKey(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 166
    :cond_3
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v7, "Bad sync key; RESET and delete all folders"

    invoke-virtual {v6, v7}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V

    .line 168
    iget-object v6, p0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    const-string v7, "0"

    iput-object v7, v6, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 169
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v0, cv:Landroid/content/ContentValues;
    const-string v6, "syncKey"

    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v7, v7, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 174
    iget-wide v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->deleteAccountPIMData(J)V

    .line 176
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->saveMailboxSyncOptions()V

    .line 178
    const-string v6, "FolderSyncParser"

    const-string v7, "Delete all but account mailbox for bad sync key"

    invoke-static {v6, v7}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "accountKey=? and type!=68"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-wide v11, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 182
    iget-wide v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->stopNonAccountMailboxSyncsForAccount(J)V

    .line 183
    const/4 v3, 0x1

    .line 184
    const/4 v4, 0x1

    .line 151
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v5           #status:I
    :cond_4
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_d

    .line 152
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v7, 0x1cc

    if-ne v6, v7, :cond_7

    .line 153
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v5

    .line 154
    .restart local v5       #status:I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    .line 155
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FolderSync failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V

    .line 158
    invoke-static {v5}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v5}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 161
    :cond_5
    new-instance v6, Lcom/android/exchange/CommandStatusException;

    invoke-direct {v6, v5}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v6

    .line 188
    :cond_6
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v7, "Throwing IOException; will retry later"

    invoke-virtual {v6, v7}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V

    .line 189
    new-instance v6, Lcom/android/exchange/adapter/Parser$EasParserException;

    const-string v7, "Folder status error"

    invoke-direct {v6, p0, v7}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;Ljava/lang/String;)V

    throw v6

    .line 192
    .end local v5           #status:I
    :cond_7
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v7, 0x1d2

    if-ne v6, v7, :cond_9

    .line 193
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, newKey:Ljava/lang/String;
    if-nez v4, :cond_8

    .line 195
    iget-object v6, p0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput-object v2, v6, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 196
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "New syncKey: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :cond_8
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Ignoring new syncKey: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 200
    .end local v2           #newKey:Ljava/lang/String;
    :cond_9
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v7, 0x1ce

    if-ne v6, v7, :cond_c

    .line 201
    iget-boolean v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mStatusOnly:Z

    if-eqz v6, :cond_b

    .line 213
    :cond_a
    :goto_2
    return v3

    .line 202
    :cond_b
    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    iget-boolean v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    invoke-virtual {p0, v6, v7}, Lcom/android/exchange/adapter/FolderSyncParser;->changesParser(Ljava/util/ArrayList;Z)V

    goto/16 :goto_1

    .line 204
    :cond_c
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto/16 :goto_1

    .line 206
    :cond_d
    iget-boolean v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mStatusOnly:Z

    if-nez v6, :cond_a

    .line 207
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v6}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 208
    :try_start_0
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v6}, Lcom/android/exchange/AbstractSyncService;->isStopped()Z

    move-result v6

    if-eqz v6, :cond_e

    if-eqz v4, :cond_f

    .line 209
    :cond_e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->commit()V

    .line 210
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Leaving FolderSyncParser with Account syncKey="

    aput-object v9, v6, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v9, v9, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    aput-object v9, v6, v8

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 212
    :cond_f
    monitor-exit v7

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public responsesParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    return-void
.end method

.method restoreMailboxSyncOptions()V
    .locals 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 307
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 308
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 309
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 310
    .local v3, serverId:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;

    .line 311
    .local v2, options:Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;
    const-string v4, "syncInterval"

    #getter for: Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->mInterval:I
    invoke-static {v2}, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->access$100(Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v4, "syncLookback"

    #getter for: Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->mLookback:I
    invoke-static {v2}, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->access$200(Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 315
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "serverId=? and accountKey=?"

    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 319
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #options:Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;
    .end local v3           #serverId:Ljava/lang/String;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    throw v4

    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 321
    return-void
.end method

.method saveMailboxSyncOptions()V
    .locals 9
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 285
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 286
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_STATE_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND (syncInterval!=-1 OR syncLookback!=0)"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v7, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 288
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 290
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;

    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;-><init>(IILcom/android/exchange/adapter/FolderSyncParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 299
    :cond_1
    return-void
.end method

.method public updateParser(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x0

    .line 473
    .local v5, serverId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 474
    .local v2, displayName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 475
    .local v4, parentId:Ljava/lang/String;
    :goto_0
    const/16 v6, 0x1d1

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    .line 476
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v6, :pswitch_data_0

    .line 487
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .line 478
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 479
    goto :goto_0

    .line 481
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 482
    goto :goto_0

    .line 484
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 485
    goto :goto_0

    .line 493
    :cond_0
    if-eqz v5, :cond_6

    if-nez v2, :cond_1

    if-eqz v4, :cond_6

    .line 494
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 497
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 498
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Updating "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 500
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 501
    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_2
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, oldParentId:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 505
    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 509
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v2, :cond_4

    .line 510
    const-string v6, "displayName"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_4
    const-string v6, "parentServerId"

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v6, "parentKey"

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 516
    sget-object v6, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #oldParentId:Ljava/lang/String;
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 526
    .end local v0           #c:Landroid/database/Cursor;
    :cond_6
    return-void

    .line 523
    .restart local v0       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x1c7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
