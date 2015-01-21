.class public Lcom/android/exchange/utility/FetchMessageUtil;
.super Ljava/lang/Object;
.source "FetchMessageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;
    }
.end annotation


# static fields
.field private static final NEED_COMPRESS_BODY_SIZE:I = 0x7d000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    return-void
.end method

.method public static fetchMessage(Landroid/content/Context;J)I
    .locals 17
    .parameter "context"
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v6, 0x0

    .line 101
    .local v6, res:I
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    .line 102
    .local v5, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v5, :cond_0

    .line 103
    const/16 v13, 0x10

    .line 192
    :goto_0
    return v13

    .line 106
    :cond_0
    iget-wide v13, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 107
    .local v1, account:Lcom/android/emailcommon/provider/Account;
    if-nez v1, :cond_1

    .line 108
    const/16 v13, 0x15

    goto :goto_0

    .line 111
    :cond_1
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/exchange/EasSyncService;->setupServiceForAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/exchange/EasSyncService;

    move-result-object v11

    .line 112
    .local v11, svc:Lcom/android/exchange/EasSyncService;
    if-nez v11, :cond_2

    .line 113
    const/16 v13, 0x15

    goto :goto_0

    .line 116
    :cond_2
    iget-wide v13, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v4

    .line 118
    .local v4, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v4, :cond_3

    .line 119
    const/16 v13, 0x15

    goto :goto_0

    .line 121
    :cond_3
    iput-object v4, v11, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 122
    iput-object v1, v11, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 123
    new-instance v8, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v8}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 124
    .local v8, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v13, 0x505

    invoke-virtual {v8, v13}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v13

    const/16 v14, 0x506

    invoke-virtual {v13, v14}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v13

    const/16 v14, 0x507

    const-string v15, "Mailbox"

    invoke-virtual {v13, v14, v15}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 128
    iget-object v13, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 129
    const-string v13, "Email"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fetch remote searched message: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/16 v13, 0x3d8

    iget-object v14, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-virtual {v8, v13, v14}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 137
    :goto_1
    const/16 v13, 0x508

    invoke-virtual {v8, v13}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 138
    iget-object v13, v11, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const-wide/high16 v15, 0x4028

    cmpl-double v13, v13, v15

    if-ltz v13, :cond_8

    .line 139
    const/16 v13, 0x445

    invoke-virtual {v8, v13}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 140
    const/16 v13, 0x446

    const-string v14, "2"

    invoke-virtual {v8, v13, v14}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 142
    const/16 v13, 0x447

    const/high16 v14, 0x18

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 143
    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 144
    const-string v13, "Email"

    const-string v14, "Add Sync commands options for EX2007"

    invoke-static {v13, v14}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_2
    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 149
    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 151
    const/16 v12, 0x7530

    .line 152
    .local v12, timeout:I
    sget-boolean v13, Lcom/android/emailcommon/Logging;->DEBUG:Z

    if-eqz v13, :cond_4

    .line 153
    const-string v13, "Email"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "send ItemOperations Fetch commond: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_4
    const-string v13, "ItemOperations"

    new-instance v14, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v11, v13, v14, v12}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;

    move-result-object v7

    .line 158
    .local v7, resp:Lcom/android/exchange/EasResponse;
    :try_start_0
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v9

    .line 159
    .local v9, status:I
    const/16 v13, 0xc8

    if-ne v9, v13, :cond_9

    const/4 v10, 0x1

    .line 160
    .local v10, success:Z
    :goto_3
    const/16 v13, 0xc8

    if-ne v9, v13, :cond_b

    .line 161
    sget-boolean v13, Lcom/android/emailcommon/Logging;->DEBUG:Z

    if-eqz v13, :cond_5

    .line 162
    const-string v13, "Email"

    const-string v14, "Fetch response ok"

    invoke-static {v13, v14}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_5
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 165
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_a

    .line 167
    :try_start_1
    new-instance v2, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;

    invoke-direct {v2, v3, v11}, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 168
    .local v2, iop:Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;
    invoke-virtual {v2}, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->parse()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 190
    .end local v2           #iop:Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;
    .end local v3           #is:Ljava/io/InputStream;
    :cond_6
    :goto_4
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V

    move v13, v6

    .line 192
    goto/16 :goto_0

    .line 132
    .end local v7           #resp:Lcom/android/exchange/EasResponse;
    .end local v9           #status:I
    .end local v10           #success:Z
    .end local v12           #timeout:I
    :cond_7
    const-string v13, "Email"

    const-string v14, "Fetch local messages"

    invoke-static {v13, v14}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/16 v13, 0x12

    iget-object v14, v4, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v8, v13, v14}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v13

    const/16 v14, 0xd

    iget-object v15, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_1

    .line 146
    :cond_8
    const/16 v13, 0x19

    const-string v14, "7"

    invoke-virtual {v8, v13, v14}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_2

    .line 159
    .restart local v7       #resp:Lcom/android/exchange/EasResponse;
    .restart local v9       #status:I
    .restart local v12       #timeout:I
    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 170
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v10       #success:Z
    :catchall_0
    move-exception v13

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 190
    .end local v3           #is:Ljava/io/InputStream;
    .end local v9           #status:I
    .end local v10           #success:Z
    :catchall_1
    move-exception v13

    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V

    throw v13

    .line 173
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v9       #status:I
    .restart local v10       #success:Z
    :cond_a
    :try_start_4
    sget-boolean v13, Lcom/android/emailcommon/Logging;->DEBUG:Z

    if-eqz v13, :cond_6

    .line 174
    const-string v13, "Email"

    const-string v14, "Empty input stream in sync command response"

    invoke-static {v13, v14}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 178
    .end local v3           #is:Ljava/io/InputStream;
    :cond_b
    sget-boolean v13, Lcom/android/emailcommon/Logging;->DEBUG:Z

    if-eqz v13, :cond_c

    .line 179
    const-string v13, "Email"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Sync response error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_c
    invoke-static {v9}, Lcom/android/exchange/EasResponse;->isProvisionError(I)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 182
    const/16 v6, 0x17

    goto :goto_4

    .line 183
    :cond_d
    invoke-static {v9}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v13

    if-eqz v13, :cond_e

    .line 184
    const/16 v6, 0x16

    goto :goto_4

    .line 186
    :cond_e
    const/16 v6, 0x20

    goto :goto_4
.end method
