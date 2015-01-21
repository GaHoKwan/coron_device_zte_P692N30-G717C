.class public Lcom/android/exchange/EasAccountService;
.super Lcom/android/exchange/EasSyncService;
.source "EasAccountService.java"


# static fields
.field private static final ACCOUNT_MAILBOX_SLEEP_TEXT:Ljava/lang/String; = "Account mailbox sleeping for 20m"

.field private static final ACCOUNT_MAILBOX_SLEEP_TIME:I = 0x124f80

.field private static final AND_FREQUENCY_PING_PUSH_AND_NOT_ACCOUNT_MAILBOX:Ljava/lang/String; = " AND syncInterval IN (-3,-2) AND type!=\"68\""

.field private static final MAX_PING_FAILURES:I = 0x1

.field private static final PING_CONNECT_TIMEOUT:I = 0xea60

.field private static final PING_FALLBACK_INBOX:I = 0x5

.field private static final PING_FALLBACK_PIM:I = 0x19

.field private static final PING_FUDGE_LOW:I = 0xa

.field private static final PING_HEARTBEAT_INCREMENT:I = 0x12c

.field private static final PING_MINUTES:I = 0x3c

.field private static final PING_SOCKET_TIMEOUT:I = 0xea60

.field private static final PING_STARTING_HEARTBEAT:I = 0x1d6

.field private static final PROTOCOL_PING_STATUS_BAD_PARAMETERS:I = 0x3

.field private static final PROTOCOL_PING_STATUS_COMPLETED:I = 0x1

.field private static final PROTOCOL_PING_STATUS_RETRY:I = 0x8

.field private static final WHERE_ACCOUNT_AND_SYNC_INTERVAL_PING:Ljava/lang/String; = "accountKey=? and syncInterval=-3"

.field private static final WHERE_ACCOUNT_KEY_AND_SERVER_ID:Ljava/lang/String; = "accountKey=? and serverId=?"

.field private static final WHERE_PUSH_HOLD_NOT_ACCOUNT_MAILBOX:Ljava/lang/String; = "accountKey=? and syncInterval=-4"


# instance fields
.field private final mBindArguments:[Ljava/lang/String;

.field private mIsForcePing:Z

.field private mPingChangeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPingForceHeartbeat:I

.field mPingHeartbeat:I

.field mPingHeartbeatDropped:Z

.field private mPingHighWaterMark:I

.field mPingMaxHeartbeat:I

.field mPingMinHeartbeat:I

.field private mPingResponseCode:I


# direct methods
.method protected constructor <init>()V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v2, 0x1d6

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;-><init>()V

    .line 122
    const/16 v0, 0x48

    iput v0, p0, Lcom/android/exchange/EasAccountService;->mPingForceHeartbeat:I

    .line 124
    iput v2, p0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    .line 126
    const/16 v0, 0x686

    iput v0, p0, Lcom/android/exchange/EasAccountService;->mPingMaxHeartbeat:I

    .line 128
    iput v2, p0, Lcom/android/exchange/EasAccountService;->mPingHeartbeat:I

    .line 130
    iput v1, p0, Lcom/android/exchange/EasAccountService;->mPingHighWaterMark:I

    .line 132
    iput-boolean v1, p0, Lcom/android/exchange/EasAccountService;->mPingHeartbeatDropped:Z

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasAccountService;->mBindArguments:[Ljava/lang/String;

    .line 137
    iput-boolean v1, p0, Lcom/android/exchange/EasAccountService;->mIsForcePing:Z

    .line 139
    iput v1, p0, Lcom/android/exchange/EasAccountService;->mPingResponseCode:I

    .line 151
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 3
    .parameter "context"
    .parameter "mailbox"

    .prologue
    const/16 v2, 0x1d6

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 122
    const/16 v0, 0x48

    iput v0, p0, Lcom/android/exchange/EasAccountService;->mPingForceHeartbeat:I

    .line 124
    iput v2, p0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    .line 126
    const/16 v0, 0x686

    iput v0, p0, Lcom/android/exchange/EasAccountService;->mPingMaxHeartbeat:I

    .line 128
    iput v2, p0, Lcom/android/exchange/EasAccountService;->mPingHeartbeat:I

    .line 130
    iput v1, p0, Lcom/android/exchange/EasAccountService;->mPingHighWaterMark:I

    .line 132
    iput-boolean v1, p0, Lcom/android/exchange/EasAccountService;->mPingHeartbeatDropped:Z

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasAccountService;->mBindArguments:[Ljava/lang/String;

    .line 137
    iput-boolean v1, p0, Lcom/android/exchange/EasAccountService;->mIsForcePing:Z

    .line 139
    iput v1, p0, Lcom/android/exchange/EasAccountService;->mPingResponseCode:I

    .line 147
    return-void
.end method

.method private exitStatusToServiceStatus(I)I
    .locals 1
    .parameter "exitStatus"

    .prologue
    .line 1097
    packed-switch p1, :pswitch_data_0

    .line 1103
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1099
    :pswitch_1
    const/16 v0, 0x17

    goto :goto_0

    .line 1101
    :pswitch_2
    const/16 v0, 0x16

    goto :goto_0

    .line 1097
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handlePingRedirect(Ljava/lang/String;)V
    .locals 6
    .parameter "location"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 211
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Ping command redirect error"

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 218
    .local v1, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v1, :cond_0

    .line 220
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 221
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 222
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 223
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Redirecting to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 225
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 226
    .local v0, haValues:Landroid/content/ContentValues;
    const-string v2, "address"

    iget-object v3, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    .end local v0           #haValues:Landroid/content/ContentValues;
    .end local v1           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private isLikelyNatFailure(Ljava/lang/String;)Z
    .locals 2
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    .line 572
    if-nez p1, :cond_1

    .line 576
    :cond_0
    :goto_0
    return v0

    .line 573
    :cond_1
    const-string v1, "reset by peer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parsePingResult(Ljava/io/InputStream;Landroid/content/ContentResolver;Ljava/util/HashMap;)I
    .locals 19
    .parameter "is"
    .parameter "cr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/StaleFolderListException;,
            Lcom/android/exchange/IllegalHeartbeatException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 1018
    .local p3, errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v15, Lcom/android/exchange/adapter/PingParser;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v15, v0, v1}, Lcom/android/exchange/adapter/PingParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1019
    .local v15, pp:Lcom/android/exchange/adapter/PingParser;
    invoke-virtual {v15}, Lcom/android/exchange/adapter/PingParser;->parse()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasAccountService;->mBindArguments:[Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1023
    invoke-virtual {v15}, Lcom/android/exchange/adapter/PingParser;->getSyncList()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exchange/EasAccountService;->mPingChangeList:Ljava/util/ArrayList;

    .line 1024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasAccountService;->mPingChangeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1025
    .local v16, serverId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasAccountService;->mBindArguments:[Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v16, v2, v3

    .line 1026
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v5, "accountKey=? and serverId=?"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/EasAccountService;->mBindArguments:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1028
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    new-instance v2, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v2

    .line 1030
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1047
    const/16 v2, 0xe

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1048
    .local v17, status:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/exchange/ExchangeService;->getStatusType(Ljava/lang/String;)I

    move-result v18

    .line 1050
    .local v18, type:I
    const/4 v2, 0x3

    move/from16 v0, v18

    if-ne v0, v2, :cond_1

    .line 1051
    invoke-static/range {v17 .. v17}, Lcom/android/exchange/ExchangeService;->getStatusChangeCount(Ljava/lang/String;)I

    move-result v9

    .line 1052
    .local v9, changeCount:I
    if-lez v9, :cond_3

    .line 1053
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    .end local v9           #changeCount:I
    :cond_1
    :goto_1
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1074
    .local v12, mailboxId:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/exchange/EasSyncService;->isMailboxSyncable(J)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1075
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skip "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " autosync when uncheck in Syncable Settings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    .end local v12           #mailboxId:J
    .end local v17           #status:Ljava/lang/String;
    .end local v18           #type:I
    :cond_2
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1054
    .restart local v9       #changeCount:I
    .restart local v17       #status:Ljava/lang/String;
    .restart local v18       #type:I
    :cond_3
    if-nez v9, :cond_1

    .line 1057
    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1058
    .local v14, name:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 1059
    .local v10, failures:Ljava/lang/Integer;
    if-nez v10, :cond_4

    .line 1060
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Last ping reported changes in error for: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v14, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 1061
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1084
    .end local v9           #changeCount:I
    .end local v10           #failures:Ljava/lang/Integer;
    .end local v14           #name:Ljava/lang/String;
    .end local v17           #status:Ljava/lang/String;
    .end local v18           #type:I
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1062
    .restart local v9       #changeCount:I
    .restart local v10       #failures:Ljava/lang/Integer;
    .restart local v14       #name:Ljava/lang/String;
    .restart local v17       #status:Ljava/lang/String;
    .restart local v18       #type:I
    :cond_4
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 1064
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/exchange/EasAccountService;->pushFallback(J)V

    goto :goto_2

    .line 1067
    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Last ping reported changes in error for: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v14, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1080
    .end local v9           #changeCount:I
    .end local v10           #failures:Ljava/lang/Integer;
    .end local v14           #name:Ljava/lang/String;
    .restart local v12       #mailboxId:J
    :cond_6
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v12, v13, v2, v3}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1088
    .end local v8           #c:Landroid/database/Cursor;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #mailboxId:J
    .end local v16           #serverId:Ljava/lang/String;
    .end local v17           #status:Ljava/lang/String;
    .end local v18           #type:I
    :cond_7
    invoke-virtual {v15}, Lcom/android/exchange/adapter/PingParser;->getSyncStatus()I

    move-result v2

    return v2
.end method

.method private pushFallback(J)V
    .locals 6
    .parameter "mailboxId"

    .prologue
    const/4 v5, 0x0

    .line 547
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 548
    .local v1, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v1, :cond_0

    .line 562
    :goto_0
    return-void

    .line 551
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 552
    .local v0, cv:Landroid/content/ContentValues;
    const/16 v2, 0x19

    .line 553
    .local v2, mins:I
    iget v3, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v3, :cond_1

    .line 554
    const/4 v2, 0x5

    .line 556
    :cond_1
    const-string v3, "syncInterval"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 557
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** PING ERROR LOOP: Set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " min sync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V

    .line 561
    const-string v3, "push fallback"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sleep(JZ)V
    .locals 5
    .parameter "ms"
    .parameter "runAsleep"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 581
    if-eqz p3, :cond_0

    .line 582
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "use the alarm sleep mode"

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 583
    iget-wide v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const-wide/16 v3, 0x1388

    add-long/2addr v3, p1

    invoke-static {v1, v2, v3, v4}, Lcom/android/exchange/ExchangeService;->setEasSyncAlarm(JJ)V

    .line 584
    iget-wide v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->releaseEasWakeLock(J)V

    .line 585
    monitor-enter p0

    .line 587
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "EasSyncService-sleep-ok"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 592
    iget-wide v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->acquireEasWakeLock(J)V

    .line 593
    iget-wide v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->clearEasSyncAlarm(J)V

    .line 595
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    :goto_1
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException catched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 591
    const/4 v1, 0x1

    :try_start_3
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "EasSyncService-sleep-ok"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 592
    iget-wide v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->acquireEasWakeLock(J)V

    .line 593
    iget-wide v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->clearEasSyncAlarm(J)V

    goto :goto_0

    .line 595
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 591
    :catchall_1
    move-exception v1

    const/4 v2, 0x1

    :try_start_4
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "EasSyncService-sleep-ok"

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 592
    iget-wide v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->acquireEasWakeLock(J)V

    .line 593
    iget-wide v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->clearEasSyncAlarm(J)V

    .line 591
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 598
    :cond_0
    :try_start_5
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 599
    :catch_1
    move-exception v0

    .line 601
    .restart local v0       #e:Ljava/lang/InterruptedException;
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException catched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getPingChangeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/exchange/EasAccountService;->mPingChangeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPingResponseCode()I
    .locals 1

    .prologue
    .line 1113
    iget v0, p0, Lcom/android/exchange/EasAccountService;->mPingResponseCode:I

    return v0
.end method

.method resetHeartbeats(I)V
    .locals 4
    .parameter "legalHeartbeat"

    .prologue
    const/4 v3, 0x0

    .line 508
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resetting min/max heartbeat, legal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 512
    iget v0, p0, Lcom/android/exchange/EasAccountService;->mPingHeartbeat:I

    if-le p1, v0, :cond_4

    .line 516
    iget v0, p0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    if-ge v0, p1, :cond_0

    .line 517
    iput p1, p0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    .line 519
    :cond_0
    iget v0, p0, Lcom/android/exchange/EasAccountService;->mPingForceHeartbeat:I

    if-ge v0, p1, :cond_1

    .line 520
    iput p1, p0, Lcom/android/exchange/EasAccountService;->mPingForceHeartbeat:I

    .line 523
    :cond_1
    iget v0, p0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    iget v1, p0, Lcom/android/exchange/EasAccountService;->mPingMaxHeartbeat:I

    if-le v0, v1, :cond_2

    .line 524
    iput p1, p0, Lcom/android/exchange/EasAccountService;->mPingMaxHeartbeat:I

    .line 537
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/exchange/EasAccountService;->mIsForcePing:Z

    if-nez v0, :cond_3

    .line 538
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "Reset ping heartbeat interval"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iput p1, p0, Lcom/android/exchange/EasAccountService;->mPingHeartbeat:I

    .line 542
    iput-boolean v3, p0, Lcom/android/exchange/EasAccountService;->mPingHeartbeatDropped:Z

    .line 544
    :cond_3
    return-void

    .line 526
    :cond_4
    iget v0, p0, Lcom/android/exchange/EasAccountService;->mPingHeartbeat:I

    if-ge p1, v0, :cond_2

    .line 529
    iput p1, p0, Lcom/android/exchange/EasAccountService;->mPingMaxHeartbeat:I

    .line 531
    iget v0, p0, Lcom/android/exchange/EasAccountService;->mPingMaxHeartbeat:I

    iget v1, p0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    if-ge v0, v1, :cond_2

    .line 532
    iput p1, p0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 155
    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->setupService()Z

    move-result v3

    if-nez v3, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-boolean v3, p0, Lcom/android/exchange/EasAccountService;->mStop:Z
    :try_end_0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    .line 163
    :try_start_1
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 164
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v3, v4}, Lcom/android/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v2

    .line 165
    .local v2, trafficFlags:I
    or-int/lit8 v3, v2, 0x0

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 166
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v3, :cond_3

    .line 181
    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 182
    iget-boolean v3, p0, Lcom/android/exchange/EasAccountService;->mStop:Z

    if-nez v3, :cond_9

    .line 183
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Sync finished"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 184
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_0

    .line 199
    :goto_1
    const-string v3, "sync finished"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 201
    .end local v2           #trafficFlags:I
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v4, "EmailProvider unavailable; sync ended prematurely"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    .end local v0           #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    .restart local v2       #trafficFlags:I
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/android/exchange/EasAccountService;->sync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 181
    :try_start_4
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 182
    iget-boolean v3, p0, Lcom/android/exchange/EasAccountService;->mStop:Z

    if-nez v3, :cond_a

    .line 183
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Sync finished"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 184
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_1

    .line 199
    :goto_2
    const-string v3, "sync finished"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 171
    .end local v2           #trafficFlags:I
    :catch_1
    move-exception v0

    .line 172
    .local v0, e:Lcom/android/exchange/EasAuthenticationException;
    const/4 v3, 0x1

    :try_start_5
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Caught authentication error"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 173
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 181
    :try_start_6
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 182
    iget-boolean v3, p0, Lcom/android/exchange/EasAccountService;->mStop:Z

    if-nez v3, :cond_6

    .line 183
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Sync finished"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 184
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_2

    .line 199
    :goto_3
    const-string v3, "sync finished"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 174
    .end local v0           #e:Lcom/android/exchange/EasAuthenticationException;
    :catch_2
    move-exception v0

    .line 175
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, message:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Caught IOException: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    if-nez v1, :cond_4

    const-string v1, "No message"

    .end local v1           #message:Ljava/lang/String;
    :cond_4
    aput-object v1, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 177
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 181
    :try_start_8
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 182
    iget-boolean v3, p0, Lcom/android/exchange/EasAccountService;->mStop:Z

    if-nez v3, :cond_7

    .line 183
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Sync finished"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 184
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_3

    .line 199
    :goto_4
    const-string v3, "sync finished"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_8
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 178
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/Exception;
    :try_start_9
    const-string v3, "Uncaught exception in AccountMailboxService"

    invoke-virtual {p0, v3, v0}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 181
    :try_start_a
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 182
    iget-boolean v3, p0, Lcom/android/exchange/EasAccountService;->mStop:Z

    if-nez v3, :cond_8

    .line 183
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Sync finished"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 184
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_4

    .line 199
    :goto_5
    const-string v3, "sync finished"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 182
    iget-boolean v4, p0, Lcom/android/exchange/EasAccountService;->mStop:Z

    if-nez v4, :cond_5

    .line 183
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Sync finished"

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 184
    iget v4, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v4, :pswitch_data_5

    .line 199
    :goto_6
    const-string v4, "sync finished"

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 181
    throw v3

    .line 195
    :cond_5
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Stopped sync finished."

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_6

    .line 191
    :pswitch_0
    const-string v4, "Sync ended due to an exception."

    invoke-virtual {p0, v4}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V

    goto :goto_6

    .line 188
    :pswitch_1
    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_6

    .line 195
    .local v0, e:Lcom/android/exchange/EasAuthenticationException;
    :cond_6
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Stopped sync finished."

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 191
    :pswitch_2
    const-string v3, "Sync ended due to an exception."

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 188
    :pswitch_3
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_3

    .line 195
    .local v0, e:Ljava/io/IOException;
    :cond_7
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Stopped sync finished."

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_4

    .line 191
    :pswitch_4
    const-string v3, "Sync ended due to an exception."

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 188
    :pswitch_5
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_4

    .line 195
    .local v0, e:Ljava/lang/Exception;
    :cond_8
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Stopped sync finished."

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_5

    .line 191
    :pswitch_6
    const-string v3, "Sync ended due to an exception."

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 188
    :pswitch_7
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_5

    .line 195
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #trafficFlags:I
    :cond_9
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Stopped sync finished."

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 191
    :pswitch_8
    const-string v3, "Sync ended due to an exception."

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 188
    :pswitch_9
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_1

    .line 195
    :cond_a
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Stopped sync finished."

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 191
    :pswitch_a
    const-string v3, "Sync ended due to an exception."

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 188
    :pswitch_b
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V
    :try_end_a
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_2

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method runPingLoop()V
    .locals 45
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/StaleFolderListException;,
            Lcom/android/exchange/IllegalHeartbeatException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 741
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasAccountService;->mPingHeartbeat:I

    move/from16 v31, v0

    .line 742
    .local v31, pingHeartbeat:I
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "runPingLoop"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 744
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    if-eqz v3, :cond_0

    .line 745
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 748
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x6ddd00

    add-long v12, v3, v5

    .line 749
    .local v12, endTime:J
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    .line 750
    .local v29, pingErrorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 751
    .local v40, readyMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v28, notReadyMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    .line 753
    .local v30, pingFoldersMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v38, 0x0

    .line 754
    .local v38, pingWaitCount:I
    const-wide/16 v20, -0x1

    .line 756
    .local v20, inboxId:J
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v12

    if-gez v3, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/AbstractSyncService;->isStopped()Z

    move-result v3

    if-nez v3, :cond_30

    .line 758
    const/16 v39, 0x0

    .line 760
    .local v39, pushCount:I
    const/4 v10, 0x0

    .line 762
    .local v10, canPushCount:I
    const/16 v44, 0x0

    .line 764
    .local v44, uninitCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "accountKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND syncInterval IN (-3,-2) AND type!=\"68\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 767
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 768
    new-instance v3, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v3}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v3

    .line 770
    :cond_2
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    .line 771
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->clear()V

    .line 772
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->clear()V

    .line 774
    const-wide/16 v3, -0x1

    cmp-long v3, v20, v3

    if-nez v3, :cond_3

    .line 775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v20

    .line 779
    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 780
    add-int/lit8 v39, v39, 0x1

    .line 781
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 782
    .local v24, mailboxId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->isMailboxSyncable(J)Z

    move-result v3

    if-nez v3, :cond_4

    .line 783
    add-int/lit8 v39, v39, -0x1

    .line 784
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignore "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pingloop Checking when uncheck in Syncable Settings"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 820
    .end local v24           #mailboxId:J
    :catchall_0
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    .line 793
    .restart local v24       #mailboxId:J
    :cond_4
    :try_start_1
    invoke-static/range {v24 .. v25}, Lcom/android/exchange/ExchangeService;->pingStatus(J)I

    move-result v35

    .line 794
    .local v35, pingStatus:I
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 795
    .local v26, mailboxName:Ljava/lang/String;
    if-nez v35, :cond_7

    .line 796
    const/4 v3, 0x7

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 797
    .local v43, syncKey:Ljava/lang/String;
    if-eqz v43, :cond_5

    const-string v3, "0"

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 799
    :cond_5
    add-int/lit8 v39, v39, -0x1

    .line 800
    add-int/lit8 v44, v44, 0x1

    .line 801
    goto :goto_1

    .line 804
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 806
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/exchange/EasSyncService;->getTargetCollectionClassFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v17

    .line 807
    .local v17, folderClass:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 810
    .end local v17           #folderClass:Ljava/lang/String;
    .end local v43           #syncKey:Ljava/lang/String;
    :cond_7
    const/4 v3, 0x1

    move/from16 v0, v35

    if-eq v0, v3, :cond_8

    const/4 v3, 0x2

    move/from16 v0, v35

    if-ne v0, v3, :cond_9

    .line 812
    :cond_8
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 813
    :cond_9
    const/4 v3, 0x3

    move/from16 v0, v35

    if-ne v0, v3, :cond_3

    .line 814
    add-int/lit8 v39, v39, -0x1

    .line 815
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v26, v3, v4

    const/4 v4, 0x1

    const-string v5, " in error state; ignore"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 820
    .end local v24           #mailboxId:J
    .end local v26           #mailboxName:Ljava/lang/String;
    .end local v35           #pingStatus:I
    :cond_a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 823
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_c

    .line 824
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 825
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ping not ready for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 827
    :cond_b
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 828
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ping ready for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 834
    :cond_c
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    const/4 v3, 0x1

    move/from16 v0, v38

    if-le v0, v3, :cond_f

    const/16 v18, 0x1

    .line 837
    .local v18, forcePing:Z
    :goto_2
    if-lez v10, :cond_d

    move/from16 v0, v39

    if-eq v10, v0, :cond_e

    if-nez v18, :cond_e

    :cond_d
    sget-boolean v3, Lcom/android/emailcommon/Configuration;->IS_TEST:Z

    if-eqz v3, :cond_2b

    .line 839
    :cond_e
    new-instance v42, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v42 .. v42}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 840
    .local v42, s:Lcom/android/exchange/adapter/Serializer;
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 842
    .local v15, entrySetIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v4, "Ping heartbeat interval"

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasAccountService;->mPingForceHeartbeat:I

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 843
    const/16 v3, 0x345

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x348

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasAccountService;->mPingForceHeartbeat:I

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x349

    invoke-virtual {v3, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 847
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 848
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 849
    .local v14, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v3, 0x34a

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x34b

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x34c

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_5

    .line 834
    .end local v14           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15           #entrySetIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v18           #forcePing:Z
    .end local v42           #s:Lcom/android/exchange/adapter/Serializer;
    :cond_f
    const/16 v18, 0x0

    goto :goto_2

    .restart local v15       #entrySetIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v18       #forcePing:Z
    .restart local v42       #s:Lcom/android/exchange/adapter/Serializer;
    :cond_10
    move/from16 v3, v31

    .line 842
    goto :goto_3

    :cond_11
    move/from16 v3, v31

    .line 843
    goto :goto_4

    .line 855
    :cond_12
    invoke-virtual/range {v42 .. v42}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 856
    const/16 v38, 0x0

    .line 857
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 860
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/AbstractSyncService;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1012
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #canPushCount:I
    .end local v15           #entrySetIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v18           #forcePing:Z
    .end local v39           #pushCount:I
    .end local v42           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v44           #uninitCount:I
    :goto_6
    return-void

    .line 864
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v10       #canPushCount:I
    .restart local v15       #entrySetIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v18       #forcePing:Z
    .restart local v39       #pushCount:I
    .restart local v42       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v44       #uninitCount:I
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    .line 867
    .local v36, pingTime:J
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/exchange/EasAccountService;->mIsForcePing:Z

    .line 868
    if-eqz v18, :cond_14

    .line 869
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/exchange/EasAccountService;->mIsForcePing:Z

    .line 870
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Forcing ping after waiting for all boxes to be ready"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 872
    :cond_14
    invoke-virtual/range {v42 .. v42}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v4

    if-eqz v18, :cond_16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasAccountService;->mPingForceHeartbeat:I

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/android/exchange/EasAccountService;->sendPing([BI)[B

    move-result-object v41

    .line 874
    .local v41, res:[B
    const-string v3, "Ping response: "

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasAccountService;->mPingResponseCode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 878
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->canAutoSync(Lcom/android/emailcommon/provider/Account;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 879
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->stop()V

    .line 883
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/AbstractSyncService;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 884
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Stopping pingLoop"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 937
    .end local v41           #res:[B
    :catch_0
    move-exception v11

    .line 938
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v27

    .line 941
    .local v27, message:Ljava/lang/String;
    if-eqz v27, :cond_21

    const/16 v19, 0x1

    .line 942
    .local v19, hasMessage:Z
    :goto_8
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException runPingLoop: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v19, :cond_22

    move-object/from16 v3, v27

    :goto_9
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 943
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    if-eqz v3, :cond_23

    .line 944
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    goto/16 :goto_0

    .end local v11           #e:Ljava/io/IOException;
    .end local v19           #hasMessage:Z
    .end local v27           #message:Ljava/lang/String;
    :cond_16
    move/from16 v3, v31

    .line 872
    goto :goto_7

    .line 888
    .restart local v41       #res:[B
    :cond_17
    :try_start_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasAccountService;->mPingResponseCode:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1e

    .line 889
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v23, v0

    .line 890
    .local v23, len:I
    if-eqz v23, :cond_1d

    .line 891
    new-instance v22, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 892
    .local v22, is:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v3, v2}, Lcom/android/exchange/EasAccountService;->parsePingResult(Ljava/io/InputStream;Landroid/content/ContentResolver;Ljava/util/HashMap;)I

    move-result v34

    .line 894
    .local v34, pingResult:I
    const-string v3, "ping result:"

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 897
    const/4 v3, 0x1

    move/from16 v0, v34

    if-ne v0, v3, :cond_1b

    if-nez v18, :cond_1b

    .line 898
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasAccountService;->mPingHighWaterMark:I

    move/from16 v0, v31

    if-le v0, v3, :cond_18

    .line 899
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasAccountService;->mPingHighWaterMark:I

    .line 900
    const-string v3, "Setting high water mark at: "

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasAccountService;->mPingHighWaterMark:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 902
    :cond_18
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasAccountService;->mPingMaxHeartbeat:I

    move/from16 v0, v31

    if-ge v0, v3, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/exchange/EasAccountService;->mPingHeartbeatDropped:Z

    if-nez v3, :cond_1a

    .line 904
    move/from16 v0, v31

    add-int/lit16 v0, v0, 0x12c

    move/from16 v31, v0

    .line 905
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasAccountService;->mPingMaxHeartbeat:I

    move/from16 v0, v31

    if-le v0, v3, :cond_19

    .line 906
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasAccountService;->mPingMaxHeartbeat:I

    move/from16 v31, v0

    .line 908
    :cond_19
    const-string v3, "Increase ping heartbeat to "

    const-string v4, "s"

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 919
    :cond_1a
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v3, v4}, Lcom/android/exchange/ExchangeService;->removeFromSyncErrorMap(J)V

    goto/16 :goto_0

    .line 910
    :cond_1b
    const/4 v3, 0x3

    move/from16 v0, v34

    if-eq v0, v3, :cond_1c

    const/16 v3, 0x8

    move/from16 v0, v34

    if-ne v0, v3, :cond_1a

    .line 914
    :cond_1c
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server error during Ping: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 916
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 921
    .end local v22           #is:Ljava/io/InputStream;
    .end local v34           #pingResult:I
    :cond_1d
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Ping returned empty result; throwing IOException"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 922
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 924
    .end local v23           #len:I
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasAccountService;->mPingResponseCode:I

    invoke-static {v3}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 925
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 926
    const-string v3, "Authorization error during Ping: "

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasAccountService;->mPingResponseCode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 927
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 928
    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasAccountService;->mPingResponseCode:I

    invoke-static {v3}, Lcom/android/exchange/EasResponse;->isProvisionError(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 929
    const-string v3, "Provisioning required during Ping: "

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasAccountService;->mPingResponseCode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 930
    new-instance v3, Lcom/android/exchange/CommandStatusException;

    const/16 v4, 0x8e

    invoke-direct {v3, v4}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v3

    .line 931
    :cond_20
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasAccountService;->mPingResponseCode:I

    invoke-static {v3}, Lcom/android/exchange/EasResponse;->isServerError(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 932
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server error during Ping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasAccountService;->mPingResponseCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 933
    .local v16, errorStr:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 934
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 935
    new-instance v3, Ljava/io/IOException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 941
    .end local v16           #errorStr:Ljava/lang/String;
    .end local v41           #res:[B
    .restart local v11       #e:Ljava/io/IOException;
    .restart local v27       #message:Ljava/lang/String;
    :cond_21
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 942
    .restart local v19       #hasMessage:Z
    :cond_22
    const-string v3, "[no message]"

    goto/16 :goto_9

    .line 947
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    if-nez v3, :cond_24

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/exchange/EasAccountService;->isLikelyNatFailure(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 948
    :cond_24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v32, v3, v36

    .line 949
    .local v32, pingLength:J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    move/from16 v0, v31

    if-le v0, v3, :cond_26

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasAccountService;->mPingHighWaterMark:I

    move/from16 v0, v31

    if-le v0, v3, :cond_26

    .line 951
    move/from16 v0, v31

    add-int/lit16 v0, v0, -0x12c

    move/from16 v31, v0

    .line 952
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/exchange/EasAccountService;->mPingHeartbeatDropped:Z

    .line 953
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    move/from16 v0, v31

    if-ge v0, v3, :cond_25

    .line 954
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    move/from16 v31, v0

    .line 956
    :cond_25
    const-string v3, "Decreased ping heartbeat to "

    const-string v4, "s"

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 957
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    if-eqz v3, :cond_27

    .line 963
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Ping aborted; retry"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 964
    :cond_27
    const-wide/16 v3, 0x7d0

    cmp-long v3, v32, v3

    if-gez v3, :cond_28

    .line 965
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Abort or NAT type return < 2 seconds; throwing IOException"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 966
    throw v11

    .line 968
    :cond_28
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "NAT type IOException"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 970
    .end local v32           #pingLength:J
    :cond_29
    if-eqz v19, :cond_2a

    const-string v3, "roken pipe"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 975
    :cond_2a
    throw v11

    .line 978
    .end local v11           #e:Ljava/io/IOException;
    .end local v15           #entrySetIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v19           #hasMessage:Z
    .end local v27           #message:Ljava/lang/String;
    .end local v36           #pingTime:J
    .end local v42           #s:Lcom/android/exchange/adapter/Serializer;
    :cond_2b
    if-eqz v18, :cond_2c

    .line 981
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "pingLoop waiting 60s for any pingable boxes"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 982
    const-wide/32 v3, 0xea60

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/exchange/EasAccountService;->sleep(JZ)V

    .line 983
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "end waiting 60s for any pingable boxes"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 984
    :cond_2c
    if-lez v39, :cond_2d

    .line 988
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "pingLoop waiting 60s for any busy pingable boxes"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 989
    const-wide/32 v3, 0xea60

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/exchange/EasAccountService;->sleep(JZ)V

    .line 990
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_0

    .line 992
    :cond_2d
    if-lez v44, :cond_2e

    .line 996
    const-string v3, "pingLoop waiting for initial sync of "

    const-string v4, " box(es)"

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 997
    const-wide/16 v3, 0x2710

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/exchange/EasAccountService;->sleep(JZ)V

    goto/16 :goto_0

    .line 998
    :cond_2e
    const-wide/16 v3, -0x1

    cmp-long v3, v20, v3

    if-nez v3, :cond_2f

    .line 1000
    const-wide/32 v3, 0xafc8

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/exchange/EasAccountService;->sleep(JZ)V

    goto/16 :goto_0

    .line 1005
    :cond_2f
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Account mailbox sleeping for 20m"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 1006
    const-wide/32 v3, 0x124f80

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/exchange/EasAccountService;->sleep(JZ)V

    goto/16 :goto_0

    .line 1011
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #canPushCount:I
    .end local v18           #forcePing:Z
    .end local v39           #pushCount:I
    .end local v44           #uninitCount:I
    :cond_30
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasAccountService;->mPingHeartbeat:I

    goto/16 :goto_6
.end method

.method protected sendPing([BI)[B
    .locals 17
    .parameter "bytes"
    .parameter "heartbeat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v14, v14, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": Ping"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 609
    sget-boolean v12, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v12, :cond_0

    .line 610
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Send ping, timeout: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "s, high: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/exchange/EasAccountService;->mPingHighWaterMark:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x73

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 613
    :cond_0
    const/16 v12, 0x400

    new-array v3, v12, [B

    .line 614
    .local v3, b:[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 615
    .local v4, ba:Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    .line 616
    .local v8, out:Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 617
    .local v6, in:Ljava/io/InputStream;
    const-wide/16 v1, 0x0

    .line 619
    .local v1, alarmTime:J
    const-string v12, "Ping"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/exchange/EasSyncService;->makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 620
    .local v11, us:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    if-eqz v12, :cond_1

    .line 621
    const-string v12, "httpts"

    const-string v13, "https"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 623
    :try_start_0
    invoke-static {}, Lcom/android/exchange/EasAccountService;->trustAllHttpsCertificates()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :cond_1
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 634
    .local v10, url:Ljava/net/URL;
    :try_start_1
    sget-boolean v12, Lcom/android/emailcommon/Configuration;->IS_TEST:Z

    if-nez v12, :cond_6

    .line 635
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljava/net/HttpURLConnection;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    .line 647
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    const-string v13, "POST"

    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 649
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 650
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 651
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    const-string v13, "Content-Type"

    const-string v14, "application/vnd.ms-sync.wbxml"

    invoke-virtual {v12, v13, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    const-string v13, "Authorization"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    const-string v13, "MS-ASProtocolVersion"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    const-string v13, "Connection"

    const-string v14, "Keep-Alive"

    invoke-virtual {v12, v13, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    const-string v13, "User-Agent"

    sget-object v14, Lcom/android/exchange/EasAccountService;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    const v13, 0xea60

    invoke-virtual {v12, v13}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 659
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    const v13, 0xea60

    invoke-virtual {v12, v13}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 662
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/exchange/EasAccountService;->mStop:Z

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    if-eqz v12, :cond_8

    .line 663
    :cond_2
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sendPing with mStop= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/exchange/EasAccountService;->mStop:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mPostReset= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 664
    new-instance v12, Ljava/io/IOException;

    invoke-direct {v12}, Ljava/io/IOException;-><init>()V

    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    :catchall_0
    move-exception v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 719
    if-eqz v8, :cond_3

    .line 721
    const/4 v14, 0x1

    :try_start_2
    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "call out.close()"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 722
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 724
    :cond_3
    if-eqz v6, :cond_4

    .line 726
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "call in.close()"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 727
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 729
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    if-eqz v14, :cond_5

    .line 731
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "call mHttpConn.disconnect()"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 733
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    .line 735
    :cond_5
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 718
    throw v12

    .line 624
    .end local v10           #url:Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 625
    .local v5, e:Ljava/lang/Exception;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "trustAllHttpsCertificates exception"

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 626
    const/4 v12, 0x0

    .line 716
    .end local v5           #e:Ljava/lang/Exception;
    :goto_1
    return-object v12

    .line 637
    .restart local v10       #url:Ljava/net/URL;
    :cond_6
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getMockConnection()Ljava/net/HttpURLConnection;

    move-result-object v7

    .line 638
    .local v7, mockConnection:Ljava/net/HttpURLConnection;
    if-eqz v7, :cond_7

    .line 639
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "Run testcase, inject mock connection .."

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 640
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    goto/16 :goto_0

    .line 642
    :cond_7
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljava/net/HttpURLConnection;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    goto/16 :goto_0

    .line 666
    .end local v7           #mockConnection:Ljava/net/HttpURLConnection;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v12}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 669
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V

    .line 670
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 671
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "Wrote ping cmd out"

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 675
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/exchange/EasAccountService;->mIsForcePing:Z

    if-eqz v12, :cond_9

    .line 676
    move/from16 v0, p2

    mul-int/lit16 v12, v0, 0x3e8

    add-int/lit16 v12, v12, 0x2710

    int-to-long v1, v12

    .line 681
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 682
    :try_start_4
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v14, v15, v1, v2}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 683
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "runAsleep after sending ping"

    aput-object v15, v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 684
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 687
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/exchange/EasAccountService;->mPingResponseCode:I

    .line 688
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "ping response received or ping aborted"

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 690
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 691
    :try_start_7
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v14, v15}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 692
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "runAwake after getting ping response"

    aput-object v15, v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 693
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 696
    const/16 v12, 0xc8

    :try_start_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exchange/EasAccountService;->mPingResponseCode:I

    if-ne v12, v13, :cond_a

    .line 697
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v12}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 698
    const/4 v12, 0x0

    array-length v13, v3

    invoke-virtual {v6, v3, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    .line 699
    .local v9, size:I
    :goto_3
    const/4 v12, -0x1

    if-eq v9, v12, :cond_d

    .line 700
    const/4 v12, 0x0

    invoke-virtual {v4, v3, v12, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 701
    const/4 v12, 0x0

    array-length v13, v3

    invoke-virtual {v6, v3, v12, v13}, Ljava/io/InputStream;->read([BII)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v9

    goto :goto_3

    .line 678
    .end local v9           #size:I
    :cond_9
    move/from16 v0, p2

    mul-int/lit16 v12, v0, 0x3e8

    add-int/lit16 v12, v12, 0x7530

    int-to-long v1, v12

    goto :goto_2

    .line 684
    :catchall_1
    move-exception v12

    :try_start_9
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v12

    .line 690
    :catchall_2
    move-exception v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 691
    :try_start_b
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v14, v15}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 692
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "runAwake after getting ping response"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 693
    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 690
    :try_start_c
    throw v12

    .line 703
    :cond_a
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exchange/EasAccountService;->mPingResponseCode:I

    if-ne v12, v13, :cond_b

    .line 704
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "ping aborted"

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 705
    new-instance v12, Ljava/io/IOException;

    const-string v13, "ping aborted"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 707
    :cond_b
    const/16 v12, 0x1c3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exchange/EasAccountService;->mPingResponseCode:I

    if-ne v12, v13, :cond_c

    .line 708
    const-string v12, "Ping http response redirect code: "

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exchange/EasAccountService;->mPingResponseCode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 709
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    const-string v13, "X-MS-Location"

    invoke-virtual {v12, v13}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/exchange/EasAccountService;->handlePingRedirect(Ljava/lang/String;)V

    .line 710
    new-instance v12, Ljava/io/IOException;

    const-string v13, "ping redirect"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 713
    :cond_c
    const-string v12, "Ping http response code: "

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exchange/EasAccountService;->mPingResponseCode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 715
    :cond_d
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 716
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v12

    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 719
    if-eqz v8, :cond_e

    .line 721
    const/4 v14, 0x1

    :try_start_d
    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "call out.close()"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 722
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 724
    :cond_e
    if-eqz v6, :cond_f

    .line 726
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "call in.close()"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 727
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 729
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    if-eqz v14, :cond_10

    .line 731
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "call mHttpConn.disconnect()"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 733
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    .line 735
    :cond_10
    monitor-exit v13

    goto/16 :goto_1

    :catchall_3
    move-exception v12

    monitor-exit v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v12

    :catchall_4
    move-exception v12

    :try_start_e
    monitor-exit v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v12

    .line 693
    :catchall_5
    move-exception v12

    :try_start_f
    monitor-exit v13
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    throw v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :catchall_6
    move-exception v12

    :try_start_11
    monitor-exit v13
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    throw v12
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
.end method

.method public sync()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/adapter/Parser$EasParserException;
        }
    .end annotation

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Lcom/android/exchange/provider/MailboxUtilities;->checkMailboxConsistency(Landroid/content/Context;J)V

    .line 248
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-interface/range {v18 .. v22}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 254
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v18, v0

    const-string v19, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 256
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "Account syncKey INIT to 0"

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 257
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 258
    .local v6, cv:Landroid/content/ContentValues;
    const-string v18, "syncKey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 262
    .end local v6           #cv:Landroid/content/ContentValues;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 263
    .local v9, firstSync:Z
    if-eqz v9, :cond_1

    .line 264
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "Initial FolderSync"

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 268
    :cond_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 269
    .restart local v6       #cv:Landroid/content/ContentValues;
    const-string v18, "syncInterval"

    const/16 v19, -0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v20, "accountKey=? and syncInterval=-3"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_2

    .line 273
    const-string v18, "change ping boxes to push"

    invoke-static/range {v18 .. v18}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 280
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    if-nez v9, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    const-wide/32 v20, 0x5265c00

    cmp-long v18, v18, v20

    if-lez v18, :cond_4

    .line 282
    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "Determine EAS protocol version"

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->sendHttpClientOptions()Lcom/android/exchange/EasResponse;
    :try_end_1
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v14

    .line 285
    .local v14, resp:Lcom/android/exchange/EasResponse;
    :try_start_2
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v5

    .line 286
    .local v5, code:I
    const-string v18, "OPTIONS response: "

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 287
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v5, v0, :cond_8

    .line 288
    const-string v18, "MS-ASProtocolCommands"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    .line 289
    .local v10, header:Lorg/apache/http/Header;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 290
    const-string v18, "ms-asprotocolversions"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 292
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v10}, Lcom/android/exchange/EasSyncService;->setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 299
    :try_start_4
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 302
    const-string v18, "protocolVersion"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 304
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 306
    const-string v18, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 316
    :try_start_5
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->close()V

    .line 321
    .end local v5           #code:I
    .end local v10           #header:Lorg/apache/http/Header;
    .end local v14           #resp:Lcom/android/exchange/EasResponse;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide/high16 v20, 0x4028

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 323
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    .line 327
    .local v4, account:Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    if-eqz v4, :cond_a

    iget v0, v4, Lcom/android/emailcommon/provider/Account;->mFlags:I

    move/from16 v18, v0

    :goto_1
    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x1000

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 331
    const-string v18, "flags"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 336
    .end local v4           #account:Lcom/android/emailcommon/provider/Account;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    move/from16 v18, v0

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 337
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 338
    const-string v18, "syncInterval"

    const/16 v19, -0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v20, "accountKey=? and type in (0,68,66,65)"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_6

    .line 342
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "Push account; set pushable boxes to push..."

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 347
    :cond_6
    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    .line 348
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->tryProvision(Lcom/android/exchange/EasSyncService;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 349
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "tryProvision for the first sync failed!"

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 351
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_5
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 501
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v9           #firstSync:Z
    :cond_7
    :goto_2
    return-void

    .line 293
    .restart local v5       #code:I
    .restart local v6       #cv:Landroid/content/ContentValues;
    .restart local v9       #firstSync:Z
    .restart local v10       #header:Lorg/apache/http/Header;
    .restart local v14       #resp:Lcom/android/exchange/EasResponse;
    :catch_0
    move-exception v7

    .line 296
    .local v7, e:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_6
    new-instance v18, Ljava/io/IOException;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 316
    .end local v5           #code:I
    .end local v7           #e:Lcom/android/emailcommon/mail/MessagingException;
    .end local v10           #header:Lorg/apache/http/Header;
    :catchall_0
    move-exception v18

    :try_start_7
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->close()V

    throw v18
    :try_end_7
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 459
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v9           #firstSync:Z
    .end local v14           #resp:Lcom/android/exchange/EasResponse;
    :catch_1
    move-exception v7

    .line 465
    .local v7, e:Lcom/android/exchange/CommandStatusException;
    iget v0, v7, Lcom/android/exchange/CommandStatusException;->mStatus:I

    move/from16 v16, v0

    .line 466
    .local v16, status:I
    invoke-static/range {v16 .. v16}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 467
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->tryProvision(Lcom/android/exchange/EasSyncService;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 469
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto :goto_2

    .line 308
    .end local v7           #e:Lcom/android/exchange/CommandStatusException;
    .end local v16           #status:I
    .restart local v5       #code:I
    .restart local v6       #cv:Landroid/content/ContentValues;
    .restart local v9       #firstSync:Z
    .restart local v14       #resp:Lcom/android/exchange/EasResponse;
    :cond_8
    const/16 v18, 0x1c3

    move/from16 v0, v18

    if-ne v5, v0, :cond_9

    :try_start_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exchange/EasSyncService;->canHandleAccountMailboxRedirect(Lcom/android/exchange/EasResponse;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 310
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Will retry after a brief hold..."

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 312
    :cond_9
    const-string v18, "OPTIONS command failed; throwing IOException"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V

    .line 313
    new-instance v18, Ljava/io/IOException;

    invoke-direct/range {v18 .. v18}, Ljava/io/IOException;-><init>()V

    throw v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 327
    .end local v5           #code:I
    .end local v14           #resp:Lcom/android/exchange/EasResponse;
    .restart local v4       #account:Lcom/android/emailcommon/provider/Account;
    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    move/from16 v18, v0
    :try_end_9
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 387
    .end local v4           #account:Lcom/android/emailcommon/provider/Account;
    .restart local v14       #resp:Lcom/android/exchange/EasResponse;
    .local v15, s:Lcom/android/exchange/adapter/Serializer;
    :cond_b
    :try_start_a
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v5

    .line 388
    .restart local v5       #code:I
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v5, v0, :cond_e

    .line 389
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_12

    .line 390
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 392
    .local v11, is:Ljava/io/InputStream;
    new-instance v18, Lcom/android/exchange/adapter/FolderSyncParser;

    new-instance v19, Lcom/android/exchange/adapter/AccountSyncAdapter;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AccountSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/android/exchange/adapter/FolderSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/exchange/adapter/FolderSyncParser;->parse()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v18

    if-eqz v18, :cond_12

    .line 409
    :try_start_b
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->close()V

    .line 356
    .end local v5           #code:I
    .end local v11           #is:Ljava/io/InputStream;
    .end local v14           #resp:Lcom/android/exchange/EasResponse;
    .end local v15           #s:Lcom/android/exchange/adapter/Serializer;
    :cond_c
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/AbstractSyncService;->isStopped()Z

    move-result v18

    if-nez v18, :cond_7

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/exchange/ExchangeService;->canAutoSync(Lcom/android/emailcommon/provider/Account;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 361
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "Sending Account syncKey: "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 362
    new-instance v15, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v15}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 363
    .restart local v15       #s:Lcom/android/exchange/adapter/Serializer;
    const/16 v18, 0x1d6

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v18

    const/16 v19, 0x1d2

    invoke-virtual/range {v18 .. v19}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 365
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "run Folder Sync"

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 370
    const/16 v18, 0x2

    const-string v19, "EasSyncService:FolderSync:Start"

    invoke-static/range {v18 .. v19}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 373
    const/16 v18, 0x2

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "EasSyncService:FolderSync: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 375
    const/16 v18, 0x2

    const-string v19, "EasSyncService:FolderSync:Send"

    invoke-static/range {v18 .. v19}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 378
    const-string v18, "FolderSync"

    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v14

    .line 380
    .restart local v14       #resp:Lcom/android/exchange/EasResponse;
    const/16 v18, 0x2

    const-string v19, "EasSyncService:FolderSync:Receive"

    invoke-static/range {v18 .. v19}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V
    :try_end_b
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 384
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/AbstractSyncService;->isStopped()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result v18

    if-eqz v18, :cond_b

    .line 409
    :try_start_d
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_d
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_2

    .line 485
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v9           #firstSync:Z
    .end local v14           #resp:Lcom/android/exchange/EasResponse;
    .end local v15           #s:Lcom/android/exchange/adapter/Serializer;
    :catch_2
    move-exception v7

    .line 489
    .local v7, e:Ljava/io/IOException;
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/AbstractSyncService;->isStopped()Z

    move-result v18

    if-nez v18, :cond_d

    .line 493
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-interface/range {v18 .. v22}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_7

    .line 499
    :cond_d
    :goto_4
    throw v7

    .line 397
    .end local v7           #e:Ljava/io/IOException;
    .restart local v5       #code:I
    .restart local v6       #cv:Landroid/content/ContentValues;
    .restart local v9       #firstSync:Z
    .restart local v14       #resp:Lcom/android/exchange/EasResponse;
    .restart local v15       #s:Lcom/android/exchange/adapter/Serializer;
    :cond_e
    :try_start_f
    invoke-static {v5}, Lcom/android/exchange/EasResponse;->isProvisionError(I)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 398
    new-instance v18, Lcom/android/exchange/CommandStatusException;

    const/16 v19, 0x8e

    invoke-direct/range {v18 .. v19}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v18
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 409
    .end local v5           #code:I
    :catchall_1
    move-exception v18

    :try_start_10
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->close()V

    throw v18
    :try_end_10
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    .line 399
    .restart local v5       #code:I
    :cond_f
    :try_start_11
    invoke-static {v5}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 400
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 409
    :try_start_12
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_12
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_2

    .line 402
    :cond_10
    const/16 v18, 0x1c3

    move/from16 v0, v18

    if-ne v5, v0, :cond_11

    :try_start_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exchange/EasSyncService;->canHandleAccountMailboxRedirect(Lcom/android/exchange/EasResponse;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move-result v18

    if-eqz v18, :cond_11

    .line 409
    :try_start_14
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_14
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2

    goto/16 :goto_3

    .line 406
    :cond_11
    :try_start_15
    const-string v18, "FolderSync response error: "

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 409
    :cond_12
    :try_start_16
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->close()V

    .line 413
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 414
    const-string v18, "syncInterval"

    const/16 v19, -0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v20, "accountKey=? and syncInterval=-4"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_13

    .line 418
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "Set push/hold boxes to push..."

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V
    :try_end_16
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2

    .line 423
    :cond_13
    const/16 v18, 0x2

    :try_start_17
    const-string v19, "EasSyncService:FinishFolderSync"

    invoke-static/range {v18 .. v19}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 426
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exchange/EasAccountService;->exitStatusToServiceStatus(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v18 .. v22}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2

    .line 436
    :goto_5
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 437
    .local v12, key:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_14

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v13

    .line 439
    .local v13, policy:Lcom/android/emailcommon/provider/Policy;
    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v18

    if-nez v18, :cond_14

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->resetSecurityPolicies()V

    .line 445
    .end local v13           #policy:Lcom/android/emailcommon/provider/Policy;
    :cond_14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->getName()Ljava/lang/String;
    :try_end_18
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2

    move-result-object v17

    .line 447
    .local v17, threadName:Ljava/lang/String;
    :try_start_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasAccountService;->runPingLoop()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2
    .catch Lcom/android/exchange/StaleFolderListException; {:try_start_19 .. :try_end_19} :catch_4
    .catch Lcom/android/exchange/IllegalHeartbeatException; {:try_start_19 .. :try_end_19} :catch_5

    .line 456
    :try_start_1a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 428
    .end local v12           #key:Ljava/lang/String;
    .end local v17           #threadName:Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 430
    .local v8, e1:Landroid/os/RemoteException;
    const-string v18, "Email"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "RemoteException catched: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_2

    goto :goto_5

    .line 448
    .end local v8           #e1:Landroid/os/RemoteException;
    .restart local v12       #key:Ljava/lang/String;
    .restart local v17       #threadName:Ljava/lang/String;
    :catch_4
    move-exception v7

    .line 450
    .local v7, e:Lcom/android/exchange/StaleFolderListException;
    const/16 v18, 0x1

    :try_start_1b
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "Ping interrupted; folder list requires sync..."

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 456
    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_1c
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_2

    goto/16 :goto_3

    .line 451
    .end local v7           #e:Lcom/android/exchange/StaleFolderListException;
    :catch_5
    move-exception v7

    .line 454
    .local v7, e:Lcom/android/exchange/IllegalHeartbeatException;
    :try_start_1d
    iget v0, v7, Lcom/android/exchange/IllegalHeartbeatException;->mLegalHeartbeat:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasAccountService;->resetHeartbeats(I)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 456
    :try_start_1e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v7           #e:Lcom/android/exchange/IllegalHeartbeatException;
    :catchall_2
    move-exception v18

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v18
    :try_end_1e
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_2

    .line 472
    .end local v5           #code:I
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v9           #firstSync:Z
    .end local v12           #key:Ljava/lang/String;
    .end local v14           #resp:Lcom/android/exchange/EasResponse;
    .end local v15           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v17           #threadName:Ljava/lang/String;
    .local v7, e:Lcom/android/exchange/CommandStatusException;
    .restart local v16       #status:I
    :cond_15
    invoke-static/range {v16 .. v16}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 473
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 475
    :try_start_1f
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    const/16 v21, 0x19

    const/16 v22, 0x0

    invoke-interface/range {v18 .. v22}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_6

    goto/16 :goto_2

    .line 477
    :catch_6
    move-exception v18

    goto/16 :goto_2

    .line 482
    :cond_16
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unexpected status: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {v16 .. v16}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 483
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto/16 :goto_2

    .line 496
    .end local v16           #status:I
    .local v7, e:Ljava/io/IOException;
    :catch_7
    move-exception v18

    goto/16 :goto_4

    .line 250
    .end local v7           #e:Ljava/io/IOException;
    :catch_8
    move-exception v18

    goto/16 :goto_0
.end method

.method public testHandleAccountMailboxRedirect(Lcom/android/exchange/EasResponse;)Z
    .locals 1
    .parameter "resp"

    .prologue
    .line 1109
    invoke-virtual {p0, p1}, Lcom/android/exchange/EasSyncService;->canHandleAccountMailboxRedirect(Lcom/android/exchange/EasResponse;)Z

    move-result v0

    return v0
.end method

.method public testIsLikelyNatFailure(Ljava/lang/String;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 1132
    invoke-direct {p0, p1}, Lcom/android/exchange/EasAccountService;->isLikelyNatFailure(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public testParsePing(Ljava/io/InputStream;Landroid/content/ContentResolver;Ljava/util/HashMap;)I
    .locals 1
    .parameter "is"
    .parameter "cr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/StaleFolderListException;,
            Lcom/android/exchange/IllegalHeartbeatException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 1120
    .local p3, errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/EasAccountService;->parsePingResult(Ljava/io/InputStream;Landroid/content/ContentResolver;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public testPushFallback(J)V
    .locals 0
    .parameter "mailboxId"

    .prologue
    .line 1128
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasAccountService;->pushFallback(J)V

    .line 1129
    return-void
.end method
