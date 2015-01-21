.class public abstract Lcom/android/exchange/adapter/AbstractSyncParser;
.super Lcom/android/exchange/adapter/Parser;
.source "AbstractSyncParser.java"


# instance fields
.field protected mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;

.field private mLooping:Z

.field protected mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field protected mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 0
    .parameter "p"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Lcom/android/exchange/adapter/Parser;)V

    .line 66
    invoke-direct {p0, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;->init(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 0
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 61
    invoke-direct {p0, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;->init(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 62
    return-void
.end method

.method private init(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    .line 71
    iget-object v0, p1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 72
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    .line 74
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 75
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput-object v0, p0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 76
    return-void
.end method


# virtual methods
.method public abstract commandsParser()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation
.end method

.method public abstract commit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mLooping:Z

    return v0
.end method

.method public parse()Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v6, 0x0

    .line 122
    .local v6, moreAvailable:Z
    const/4 v8, 0x0

    .line 123
    .local v8, newSyncKey:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v4, v13, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 124
    .local v4, interval:I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mLooping:Z

    .line 126
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v13

    const/4 v14, 0x5

    if-eq v13, v14, :cond_0

    .line 127
    new-instance v13, Lcom/android/exchange/adapter/Parser$EasParserException;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v13

    .line 129
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 130
    .local v10, startParse:J
    const/4 v5, 0x0

    .line 131
    .local v5, mailboxUpdated:Z
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 134
    .local v2, cv:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v13

    const/4 v14, 0x3

    if-eq v13, v14, :cond_12

    .line 135
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v14, 0xf

    if-eq v13, v14, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v14, 0x1c

    if-eq v13, v14, :cond_1

    .line 137
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v14, 0xe

    if-ne v13, v14, :cond_b

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v12

    .line 140
    .local v12, status:I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    .line 141
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Sync failed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v12}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V

    .line 142
    const/4 v13, 0x3

    if-eq v12, v13, :cond_2

    invoke-static {v12}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isBadSyncKey(I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 144
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    const-string v14, "0"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 147
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    const/4 v14, -0x2

    iput v14, v13, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v14, "Bad sync key; RESET and delete data"

    invoke-virtual {v13, v14}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "status = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V

    .line 150
    sget-object v13, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v14, "eng"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 151
    new-instance v3, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v3, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 153
    .local v3, handler:Landroid/os/Handler;
    new-instance v13, Lcom/android/exchange/adapter/AbstractSyncParser$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/exchange/adapter/AbstractSyncParser$1;-><init>(Lcom/android/exchange/adapter/AbstractSyncParser;)V

    invoke-virtual {v3, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    .end local v3           #handler:Landroid/os/Handler;
    :cond_3
    const-string v13, "Email"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    invoke-virtual {v14}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 167
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "[BSK Recovery] Bad sync key occurs"

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v13, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    sput-wide v13, Lcom/android/exchange/Exchange;->sBadSyncKeyMailboxId:J

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/exchange/ExchangePreferences;->getPreferences(Landroid/content/Context;)Lcom/android/exchange/ExchangePreferences;

    move-result-object v9

    .line 170
    .local v9, pref:Lcom/android/exchange/ExchangePreferences;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v13, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v9, v13, v14}, Lcom/android/exchange/ExchangePreferences;->setBadSyncKeyMailboxId(J)V

    .line 173
    .end local v9           #pref:Lcom/android/exchange/ExchangePreferences;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    invoke-virtual {v13}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->wipe()V

    .line 175
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 176
    :cond_5
    const/16 v13, 0x10

    if-eq v12, v13, :cond_6

    const/4 v13, 0x5

    if-ne v12, v13, :cond_7

    .line 180
    :cond_6
    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13}, Ljava/io/IOException;-><init>()V

    throw v13

    .line 181
    :cond_7
    const/16 v13, 0x8

    if-eq v12, v13, :cond_8

    const/16 v13, 0xc

    if-ne v12, v13, :cond_9

    .line 185
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v14, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v16, 0x1

    invoke-static/range {v13 .. v16}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 188
    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13}, Ljava/io/IOException;-><init>()V

    throw v13

    .line 189
    :cond_9
    const/4 v13, 0x7

    if-ne v12, v13, :cond_a

    .line 190
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z

    .line 191
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 194
    :cond_a
    new-instance v13, Lcom/android/exchange/CommandStatusException;

    invoke-direct {v13, v12}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v13

    .line 197
    .end local v12           #status:I
    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v14, 0x16

    if-ne v13, v14, :cond_c

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->commandsParser()V

    goto/16 :goto_0

    .line 199
    :cond_c
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/4 v14, 0x6

    if-ne v13, v14, :cond_d

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->responsesParser()V

    goto/16 :goto_0

    .line 201
    :cond_d
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v14, 0x14

    if-ne v13, v14, :cond_e

    .line 202
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 203
    :cond_e
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v14, 0xb

    if-ne v13, v14, :cond_11

    .line 204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    invoke-virtual {v13}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v13

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 205
    const/4 v6, 0x1

    .line 207
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 208
    .local v7, newKey:Ljava/lang/String;
    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "Parsed key for "

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v15, v15, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string v15, ": "

    aput-object v15, v13, v14

    const/4 v14, 0x3

    aput-object v7, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v13, v13, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 210
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    const/4 v14, 0x1

    invoke-virtual {v13, v7, v14}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 211
    const-string v13, "syncKey"

    invoke-virtual {v2, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v5, 0x1

    .line 213
    const/4 v8, 0x1

    .line 216
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v13, v13, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    const/4 v14, -0x2

    if-ne v13, v14, :cond_1

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    const/4 v14, -0x3

    iput v14, v13, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    goto/16 :goto_0

    .line 220
    .end local v7           #newKey:Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto/16 :goto_0

    .line 225
    :cond_12
    if-eqz v6, :cond_13

    if-nez v8, :cond_13

    .line 226
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mLooping:Z

    .line 228
    :cond_13
    const-string v13, "Email"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    invoke-virtual {v14}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 229
    const/4 v13, 0x2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EasSyncService:Email.parse spend ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v10

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 233
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->commit()V

    .line 235
    const/4 v1, 0x0

    .line 238
    .local v1, abortSyncs:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v13, v13, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    if-eq v13, v4, :cond_1a

    .line 239
    const-string v13, "syncInterval"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v14, v14, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    const/4 v5, 0x1

    .line 251
    :cond_15
    :goto_1
    if-eqz v5, :cond_17

    .line 252
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v13}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 253
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v13}, Lcom/android/exchange/AbstractSyncService;->isStopped()Z

    move-result v13

    if-nez v13, :cond_16

    .line 254
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v15, v2}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 256
    :cond_16
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_17
    if-eqz v1, :cond_18

    .line 260
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "Aborting account syncs due to mailbox change to ping..."

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v13, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v13, v14}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(J)V

    .line 265
    :cond_18
    if-eqz v6, :cond_19

    .line 266
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "MoreAvailable"

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 268
    :cond_19
    return v6

    .line 242
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget v13, v13, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    if-lez v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/Parser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v13, v13, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    const/4 v14, -0x2

    if-ne v13, v14, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v13, v13, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    if-lez v13, :cond_15

    .line 245
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "Changes found to ping loop mailbox "

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v15, v15, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string v15, ": will ping."

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 246
    const-string v13, "syncInterval"

    const/4 v14, -0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    const/4 v5, 0x1

    .line 248
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 256
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13
.end method

.method public abstract responsesParser()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public skipParser(I)V
    .locals 2
    .parameter "endTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method userLog(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "string"
    .parameter "num"
    .parameter "string2"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 277
    return-void
.end method

.method varargs userLog([Ljava/lang/String;)V
    .locals 1
    .parameter "strings"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0, p1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 273
    return-void
.end method
