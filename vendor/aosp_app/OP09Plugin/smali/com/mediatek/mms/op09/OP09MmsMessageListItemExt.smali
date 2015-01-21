.class public Lcom/mediatek/mms/op09/OP09MmsMessageListItemExt;
.super Lcom/mediatek/mms/ext/MmsMessageListItemImpl;
.source "OP09MmsMessageListItemExt.java"


# static fields
.field private static final COLUMN_MSG_SMS_DATE:I = 0x3

.field private static final COLUMN_MSG_SMS_ID:I = 0x1

.field private static final COLUMN_MSG_SMS_THREAD_ID:I = 0x0

.field private static final COLUMN_MSG_SMS_TYPE:I = 0x2

.field private static final MASS_SMS_PROJECTION:[Ljava/lang/String; = null

.field private static final MSG_TYPE_SMS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mms/Op09MmsMessageListItemExt"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/mms/op09/OP09MmsMessageListItemExt;->MASS_SMS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/MmsMessageListItemImpl;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-static {p1}, Lcom/mediatek/mms/op09/MessageUtils;->initSiminfoList(Landroid/content/Context;)V

    .line 79
    return-void
.end method


# virtual methods
.method public drawMassTextMsgStatus(Landroid/content/Context;ZJ)V
    .locals 19
    .parameter "context"
    .parameter "isSms"
    .parameter "timestamp"

    .prologue
    .line 163
    const-string v3, "Mms/Op09MmsMessageListItemExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawMassTextMsgStatus; context:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tisSMS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\ttimeStamp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-ltz v3, :cond_1

    .line 165
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mms/op09/OP09MmsMessageListItemExt;->getHost()Lcom/mediatek/mms/ext/IMmsMessageListItemHost;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/mediatek/mms/ext/IMmsMessageListItemHost;->drawMassTextMsgStatus(IIILjava/lang/String;)V

    .line 209
    :goto_0
    return-void

    .line 168
    :cond_1
    const/4 v15, 0x0

    .line 169
    .local v15, sendingCount:I
    const/4 v14, 0x0

    .line 170
    .local v14, sendSuccess:I
    const/4 v13, 0x0

    .line 171
    .local v13, sendFailed:I
    const-wide/16 v11, 0x0

    .line 172
    .local v11, sendDate:J
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/mediatek/mms/op09/OP09MmsMessageListItemExt;->MASS_SMS_PROJECTION:[Ljava/lang/String;

    const-string v6, " ipmsg_id = ? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 175
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_5

    .line 176
    :cond_2
    const/4 v15, 0x0

    .line 177
    const/4 v14, 0x0

    .line 178
    const/4 v13, 0x0

    .line 202
    :cond_3
    if-eqz v9, :cond_4

    .line 203
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_4
    :goto_1
    const-string v3, "Mms/Op09MmsMessageListItemExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendingCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sendSuccess:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sendFailed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mms/op09/OP09MmsMessageListItemExt;->getHost()Lcom/mediatek/mms/ext/IMmsMessageListItemHost;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lcom/mediatek/mms/op09/MessageUtils;->getShortTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v15, v14, v13, v4}, Lcom/mediatek/mms/ext/IMmsMessageListItemHost;->drawMassTextMsgStatus(IIILjava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_5
    :goto_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 182
    .local v16, type:I
    const/4 v3, 0x3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v11

    .line 183
    packed-switch v16, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 189
    :pswitch_1
    add-int/lit8 v14, v14, 0x1

    .line 190
    goto :goto_2

    .line 186
    :pswitch_2
    add-int/lit8 v15, v15, 0x1

    .line 187
    goto :goto_2

    .line 192
    :pswitch_3
    add-int/lit8 v13, v13, 0x1

    .line 193
    goto :goto_2

    .line 199
    .end local v16           #type:I
    :catch_0
    move-exception v10

    .line 200
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v3, "Mms/Op09MmsMessageListItemExt"

    const-string v4, "drawMassTextMsgStatus error."

    invoke-static {v3, v4, v10}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    if-eqz v9, :cond_4

    .line 203
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 202
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_6

    .line 203
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getSentDateStr(Landroid/content/Context;Ljava/lang/String;JIJI)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "srcTxt"
    .parameter "msgId"
    .parameter "msgType"
    .parameter "smsSentDate"
    .parameter "boxId"

    .prologue
    .line 132
    const-string v6, "Mms/Op09MmsMessageListItemExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "smsSentDate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p6

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " msgType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/16 v6, 0x82

    if-ne p5, v6, :cond_1

    .line 158
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 136
    .restart local p2
    :cond_1
    const/4 v6, 0x1

    move/from16 v0, p8

    if-ne v0, v6, :cond_0

    .line 137
    const-wide/16 v6, 0x0

    cmp-long v6, p6, v6

    if-lez v6, :cond_2

    .line 139
    move-wide/from16 v0, p6

    invoke-static {p1, v0, v1}, Lcom/mediatek/mms/op09/MessageUtils;->getShortTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 141
    :cond_2
    if-eqz p5, :cond_0

    .line 143
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 146
    .local v5, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v4

    .line 147
    .local v4, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v6

    const/16 v7, 0x82

    if-eq v6, v7, :cond_0

    .line 150
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    check-cast v3, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .local v3, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDateSent()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {p1, v6, v7}, Lcom/mediatek/mms/op09/MessageUtils;->getShortTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 151
    .end local v3           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v4           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :catch_0
    move-exception v2

    .line 152
    .local v2, e:Lcom/google/android/mms/MmsException;
    const-string v6, "Mms/Op09MmsMessageListItemExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load the message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public hideAllButton()Z
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsMessageListItemExt;->getHost()Lcom/mediatek/mms/ext/IMmsMessageListItemHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsMessageListItemHost;->hideBothButton()V

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public hideDownloadButton()Z
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsMessageListItemExt;->getHost()Lcom/mediatek/mms/ext/IMmsMessageListItemHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsMessageListItemHost;->hideDownloadButton()V

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public isEnableShowDualTime()Z
    .locals 2

    .prologue
    .line 241
    const-string v0, "Mms/Op09MmsMessageListItemExt"

    const-string v1, "isEnableShowDualTime: true"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public needEditFailedMessge(Landroid/content/Context;JJ)Z
    .locals 10
    .parameter "context"
    .parameter "msgId"
    .parameter "timeStamp"

    .prologue
    .line 212
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_1

    .line 213
    const/4 v0, 0x1

    .line 228
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/mms/op09/OP09MmsMessageListItemExt;->MASS_SMS_PROJECTION:[Ljava/lang/String;

    const-string v3, " ipmsg_id < 0 and ipmsg_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 218
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 219
    :cond_2
    const/4 v0, 0x1

    .line 224
    if-eqz v6, :cond_0

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 224
    :cond_3
    if-eqz v6, :cond_4

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_4
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v7

    .line 222
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "Mms/Op09MmsMessageListItemExt"

    const-string v1, "needEditFailedMessge error."

    invoke-static {v0, v1, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    if-eqz v6, :cond_4

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 224
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public setDualTime(Landroid/content/Context;ZILandroid/widget/TextView;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "isRecievedMsg"
    .parameter "simId"
    .parameter "dateView"
    .parameter "linearLayout"
    .parameter "timeDate"

    .prologue
    .line 247
    if-eqz p2, :cond_0

    if-nez p5, :cond_1

    .line 248
    :cond_0
    const-string v9, "Mms/Op09MmsMessageListItemExt"

    const-string v10, "Do not set dual time, just return"

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :goto_0
    return-void

    .line 253
    :cond_1
    const/4 v9, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsMessageListItemExt;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900eb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const/4 v9, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    const/4 v9, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 259
    .local v7, tv:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsMessageListItemExt;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900ea

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    const/4 v9, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 263
    .local v8, tv2:Landroid/widget/TextView;
    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-static {p1, p3}, Lcom/mediatek/mms/op09/MessageUtils;->isInternationalRoamingStatusBySimid(Landroid/content/Context;I)Z

    move-result v5

    .line 267
    .local v5, isInternational:Z
    const-string v9, "Mms/Op09MmsMessageListItemExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ternational status:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/4 v9, 0x2

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 271
    .local v6, timeZone:Landroid/widget/TextView;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 272
    .local v2, cal:Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, displayName:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_time_zone"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 276
    .local v1, autoTimeZone:I
    const-string v9, "Mms/Op09MmsMessageListItemExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Auto time zone:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 278
    .local v3, date:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 279
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 281
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsMessageListItemExt;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900e9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 284
    .end local v1           #autoTimeZone:I
    .end local v3           #date:Ljava/lang/String;
    :cond_3
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setNotifyContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)Z
    .locals 3
    .parameter "address"
    .parameter "subject"
    .parameter "msgSizeText"
    .parameter "expireText"
    .parameter "expireTextView"

    .prologue
    const/4 v2, 0x1

    .line 233
    if-nez p5, :cond_0

    .line 237
    :goto_0
    return v2

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showDownloadButton()Z
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsMessageListItemExt;->getHost()Lcom/mediatek/mms/ext/IMmsMessageListItemHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsMessageListItemHost;->showDownloadButton()V

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public showSimType(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 5
    .parameter "context"
    .parameter "simId"
    .parameter "textView"

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, simTypeDraw:Landroid/graphics/drawable/Drawable;
    invoke-static {p1, p2}, Lcom/mediatek/mms/op09/MessageUtils;->getSimInfoBySimId(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 92
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsMessageListItemExt;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundLightSmallRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 97
    :goto_0
    const-string v2, "Mms/Op09MmsMessageListItemExt"

    const-string v3, "showSimType for MessageListItem"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-eqz p3, :cond_0

    .line 100
    const-string v2, ""

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    const-string v2, "Mms/Op09MmsMessageListItemExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showSimType for MessageListItem :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsMessageListItemExt;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method
