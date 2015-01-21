.class public Lcom/android/exchange/adapter/Search;
.super Ljava/lang/Object;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/Search$1;,
        Lcom/android/exchange/adapter/Search$TestSearchParser;,
        Lcom/android/exchange/adapter/Search$SearchParser;
    }
.end annotation


# static fields
.field private static final MAX_SEARCH_RESULTS:I = 0x1f4

.field private static final MIN_QUERY_LENGTH:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    return-void
.end method

.method public static searchMessages(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 24
    .parameter "context"
    .parameter "accountId"
    .parameter "searchParams"
    .parameter "destMailboxId"

    .prologue
    .line 61
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 62
    .local v12, offset:I
    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    .line 63
    .local v10, limit:I
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    .line 64
    .local v8, filter:Ljava/lang/String;
    if-ltz v10, :cond_0

    const/16 v20, 0x1f4

    move/from16 v0, v20

    if-gt v10, v0, :cond_0

    if-gez v12, :cond_2

    :cond_0
    const/4 v13, 0x0

    .line 145
    :cond_1
    :goto_0
    return v13

    .line 66
    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 68
    :cond_4
    const/4 v13, -0x1

    .line 69
    .local v13, res:I
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v5

    .line 70
    .local v5, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v5, :cond_1

    .line 71
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/exchange/EasSyncService;->setupServiceForAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/exchange/EasSyncService;

    move-result-object v19

    .line 72
    .local v19, svc:Lcom/android/exchange/EasSyncService;
    if-eqz v19, :cond_1

    .line 73
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v16

    .line 75
    .local v16, searchMailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v16, :cond_1

    .line 76
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 79
    .local v18, statusValues:Landroid/content/ContentValues;
    :try_start_0
    const-string v20, "uiSyncStatus"

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 82
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 83
    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 84
    new-instance v15, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v15}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 85
    .local v15, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v20, 0x3c5

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0x3c7

    invoke-virtual/range {v20 .. v21}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 86
    const/16 v20, 0x3c8

    const-string v21, "Mailbox"

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 87
    const/16 v20, 0x3c9

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0x3d3

    invoke-virtual/range {v20 .. v21}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 88
    const/16 v20, 0x10

    const-string v21, "Email"

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 91
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 92
    .local v11, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v11, :cond_5

    .line 93
    const/4 v13, 0x0

    .line 137
    .end local v13           #res:I
    :try_start_1
    const-string v20, "uiSyncStatus"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 139
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, p4

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 141
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v15           #s:Lcom/android/exchange/adapter/Serializer;
    :catch_0
    move-exception v20

    goto/16 :goto_0

    .line 95
    .restart local v11       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v13       #res:I
    .restart local v15       #s:Lcom/android/exchange/adapter/Serializer;
    :cond_5
    const/16 v20, 0x12

    :try_start_2
    iget-object v0, v11, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 97
    const/16 v20, 0x3d5

    move/from16 v0, v20

    invoke-virtual {v15, v0, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 98
    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 99
    const/16 v20, 0x3ca

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 100
    if-nez v12, :cond_6

    .line 101
    const/16 v20, 0x3d9

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 103
    :cond_6
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 104
    const/16 v20, 0x3d7

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 107
    :cond_7
    const/16 v20, 0x3cb

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int v22, v12, v10

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 108
    const/16 v20, 0x445

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 109
    const/16 v20, 0x446

    const-string v21, "2"

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 110
    const/16 v20, 0x447

    const-string v21, "5120"

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 111
    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 112
    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 113
    const-string v20, "Search"

    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v14

    .line 115
    .local v14, resp:Lcom/android/exchange/EasResponse;
    :try_start_3
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v6

    .line 116
    .local v6, code:I
    const/16 v20, 0xc8

    move/from16 v0, v20

    if-ne v6, v0, :cond_8

    .line 117
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v9

    .line 119
    .local v9, is:Ljava/io/InputStream;
    :try_start_4
    new-instance v17, Lcom/android/exchange/adapter/Search$SearchParser;

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v9, v1, v8, v2}, Lcom/android/exchange/adapter/Search$SearchParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;Ljava/lang/String;Lcom/android/exchange/adapter/Search$1;)V

    .line 120
    .local v17, sp:Lcom/android/exchange/adapter/Search$SearchParser;
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/adapter/Search$SearchParser;->parse()Z

    .line 121
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/adapter/Search$SearchParser;->getTotalResults()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v13

    .line 123
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 129
    .end local v9           #is:Ljava/io/InputStream;
    .end local v17           #sp:Lcom/android/exchange/adapter/Search$SearchParser;
    :goto_1
    :try_start_6
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 137
    :try_start_7
    const-string v20, "uiSyncStatus"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 139
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, p4

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 123
    .restart local v9       #is:Ljava/io/InputStream;
    :catchall_0
    move-exception v20

    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    throw v20
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 129
    .end local v6           #code:I
    .end local v9           #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v20

    :try_start_9
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->close()V

    throw v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 131
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v14           #resp:Lcom/android/exchange/EasResponse;
    .end local v15           #s:Lcom/android/exchange/adapter/Serializer;
    :catch_1
    move-exception v7

    .line 132
    .local v7, e:Ljava/io/IOException;
    const/16 v20, 0x1

    :try_start_a
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Search exception "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v19 .. v20}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 137
    :try_start_b
    const-string v20, "uiSyncStatus"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 139
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, p4

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0

    .line 126
    .end local v7           #e:Ljava/io/IOException;
    .restart local v6       #code:I
    .restart local v11       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v14       #resp:Lcom/android/exchange/EasResponse;
    .restart local v15       #s:Lcom/android/exchange/adapter/Serializer;
    :cond_8
    const/16 v20, 0x1

    :try_start_c
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Search returned "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v19 .. v20}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_1

    .line 134
    .end local v6           #code:I
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v14           #resp:Lcom/android/exchange/EasResponse;
    .end local v15           #s:Lcom/android/exchange/adapter/Serializer;
    :catchall_2
    move-exception v20

    .line 137
    :try_start_d
    const-string v21, "uiSyncStatus"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 139
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x64

    move-object/from16 v0, v21

    move-wide/from16 v1, p4

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_2

    .line 134
    :goto_2
    throw v20

    .line 141
    :catch_2
    move-exception v21

    goto :goto_2
.end method
