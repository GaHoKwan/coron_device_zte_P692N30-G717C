.class public Lcom/mediatek/wappush/SiManager;
.super Lcom/mediatek/wappush/WapPushManager;
.source "SiManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Mms/WapPush"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/wappush/WapPushManager;-><init>(Landroid/content/Context;)V

    .line 62
    return-void
.end method


# virtual methods
.method public handleIncoming(Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;)V
    .locals 31
    .parameter "message"

    .prologue
    .line 67
    if-nez p1, :cond_1

    .line 68
    const-string v3, "Mms/WapPush"

    const-string v7, "SiManager handleIncoming: null message"

    invoke-static {v3, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const/16 v20, 0x0

    .line 75
    .local v20, siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;

    move-object/from16 v20, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/wappush/WapPushManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 82
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 85
    .local v12, cursor:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    const-wide/16 v29, 0x3e8

    div-long v27, v27, v29

    move-wide/from16 v0, v27

    long-to-int v11, v0

    .line 88
    .local v11, currentTime:I
    move-object/from16 v0, v20

    iget v3, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->create:I

    if-nez v3, :cond_2

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    const-wide/16 v29, 0x3e8

    div-long v27, v27, v29

    move-wide/from16 v0, v27

    long-to-int v3, v0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->create:I

    .line 97
    :cond_2
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->siid:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 98
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->url:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->siid:Ljava/lang/String;

    .line 103
    :cond_3
    move-object/from16 v0, v20

    iget v3, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->expiration:I

    if-lez v3, :cond_4

    move-object/from16 v0, v20

    iget v3, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->expiration:I

    if-ge v3, v11, :cond_4

    .line 104
    const-string v3, "Mms/WapPush"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "SiManager:Expired Message! "

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->url:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v11           #currentTime:I
    .end local v12           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v13

    .line 77
    .local v13, e:Ljava/lang/Exception;
    const-string v3, "Mms/WapPush"

    const-string v7, "SiManager SiMessage error"

    invoke-static {v3, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 109
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v11       #currentTime:I
    .restart local v12       #cursor:Landroid/database/Cursor;
    :cond_4
    move-object/from16 v0, v20

    iget v3, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->action:I

    if-nez v3, :cond_5

    .line 110
    const-string v3, "Mms/WapPush"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "SiManager:Discard None Message! "

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->url:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_5
    const/4 v3, 0x7

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v3

    const/4 v3, 0x1

    const-string v7, "siid"

    aput-object v7, v4, v3

    const/4 v3, 0x2

    const-string v7, "url"

    aput-object v7, v4, v3

    const/4 v3, 0x3

    const-string v7, "created"

    aput-object v7, v4, v3

    const/4 v3, 0x4

    const-string v7, "address"

    aput-object v7, v4, v3

    const/4 v3, 0x5

    const-string v7, "text"

    aput-object v7, v4, v3

    const/4 v3, 0x6

    const-string v7, "sim_id"

    aput-object v7, v4, v3

    .line 121
    .local v4, projection:[Ljava/lang/String;
    const-string v5, "siid=? AND sim_id=?"

    .line 122
    .local v5, selection:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->siid:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v3, 0x1

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->getSimId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 125
    .local v6, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->siid:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 126
    sget-object v3, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI_SI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 129
    :cond_6
    const/16 v17, 0x0

    .line 130
    .local v17, onlyUpdate:Z
    const-wide/16 v18, 0x0

    .line 131
    .local v18, rowId:J
    if-eqz v12, :cond_b

    .line 133
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 135
    :cond_7
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 136
    .local v15, messageId:J
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 137
    .local v21, siid:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 138
    .local v10, createdTime:I
    const/4 v3, 0x4

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, address:Ljava/lang/String;
    const/4 v3, 0x5

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 141
    .local v22, text:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->siid:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 143
    move-object/from16 v0, v20

    iget v3, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->create:I

    if-lez v3, :cond_8

    move-object/from16 v0, v20

    iget v3, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->create:I

    if-ge v3, v10, :cond_8

    .line 144
    const-string v3, "Mms/WapPush"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "SiManager:Out of order Message! "

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->url:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 146
    :cond_8
    :try_start_2
    move-object/from16 v0, v20

    iget v3, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->create:I

    if-lt v3, v10, :cond_9

    .line 148
    const/16 v17, 0x1

    .line 149
    move-wide/from16 v18, v15

    .line 152
    :cond_9
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_7

    .line 156
    .end local v8           #address:Ljava/lang/String;
    .end local v10           #createdTime:I
    .end local v15           #messageId:J
    .end local v21           #siid:Ljava/lang/String;
    .end local v22           #text:Ljava/lang/String;
    :cond_a
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_b
    move-object/from16 v0, v20

    iget v3, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->action:I

    const/4 v7, 0x4

    if-ne v3, v7, :cond_c

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/wappush/WapPushManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v7, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v3, v7, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/wappush/WapPushManager;->mContext:Landroid/content/Context;

    const-wide/16 v27, -0x2

    move-wide/from16 v0, v27

    invoke-static {v3, v0, v1}, Lcom/android/mms/transaction/WapPushMessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;J)V

    .line 164
    const-string v3, "Mms/WapPush"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "SiManager:Discard delete Message! "

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->url:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :catchall_0
    move-exception v3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3

    .line 169
    :cond_c
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v26, values:Landroid/content/ContentValues;
    const-string v3, "address"

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->getSenderAddr()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v3, "service_center"

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->getServiceCenterAddr()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v3, "sim_id"

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->getSimId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v3, "url"

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->url:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v3, "siid"

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->siid:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v3, "action"

    move-object/from16 v0, v20

    iget v7, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->action:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-string v3, "created"

    move-object/from16 v0, v20

    iget v7, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->create:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string v3, "expiration"

    move-object/from16 v0, v20

    iget v7, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->expiration:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    const-string v3, "text"

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->text:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v3, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    const/16 v25, 0x0

    .line 182
    .local v25, uri:Landroid/net/Uri;
    if-nez v17, :cond_e

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/wappush/WapPushManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v7, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI_SI:Landroid/net/Uri;

    move-object/from16 v0, v26

    invoke-virtual {v3, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v25

    .line 194
    :goto_2
    if-eqz v25, :cond_d

    .line 195
    const-string v3, "Mms/WapPush"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "uri:"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v3, "Mms/WapPush"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "SiManager:Store msg! "

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->url:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/wappush/WapPushManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/android/mms/transaction/WapPushMessagingNotification;->getWapPushThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v23

    .line 199
    .local v23, threadId:J
    const-string v3, "Mms/WapPush"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "insert new Si message, threaId:"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v23

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/wappush/WapPushManager;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v23

    invoke-static {v3, v0, v1}, Lcom/android/mms/transaction/WapPushMessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;J)V

    .line 204
    .end local v23           #threadId:J
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 206
    .local v14, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/wappush/WapPushManager;->mContext:Landroid/content/Context;

    const-class v27, Lcom/android/mms/ui/WPMessageDialogActivity;

    move-object/from16 v0, v27

    invoke-direct {v3, v7, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 207
    const-string v3, "address"

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->getSenderAddr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v3, "service_center"

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->getServiceCenterAddr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v3, "sim_id"

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->getSimId()I

    move-result v7

    invoke-virtual {v14, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    const-string v3, "url"

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->url:Ljava/lang/String;

    invoke-virtual {v14, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v3, "siid"

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->siid:Ljava/lang/String;

    invoke-virtual {v14, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v3, "action"

    move-object/from16 v0, v20

    iget v7, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->action:I

    invoke-virtual {v14, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    const-string v3, "created"

    move-object/from16 v0, v20

    iget v7, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->create:I

    invoke-virtual {v14, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    const-string v3, "expiration"

    move-object/from16 v0, v20

    iget v7, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->expiration:I

    invoke-virtual {v14, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    const-string v3, "text"

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->text:Ljava/lang/String;

    invoke-virtual {v14, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v3, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    move-wide/from16 v0, v27

    invoke-virtual {v14, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 217
    const/high16 v3, 0x1000

    invoke-virtual {v14, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    const-string v3, "uri"

    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/wappush/WapPushManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 186
    .end local v14           #intent:Landroid/content/Intent;
    :cond_e
    const-string v3, "read"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string v3, "seen"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/wappush/WapPushManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v7, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI_SI:Landroid/net/Uri;

    move-object/from16 v0, v26

    invoke-virtual {v3, v7, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 189
    .local v9, count:I
    sget-object v3, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    .line 190
    const-string v3, "Mms/WapPush"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "update a si message.count:"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
