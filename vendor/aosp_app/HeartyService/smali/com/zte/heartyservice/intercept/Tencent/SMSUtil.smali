.class public abstract Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;
.super Ljava/lang/Object;
.source "SMSUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/intercept/Tencent/SMSUtil$SmsManagerV2;,
        Lcom/zte/heartyservice/intercept/Tencent/SMSUtil$ISmsManager;
    }
.end annotation


# static fields
.field public static final URI_MMS:Landroid/net/Uri;

.field public static final URI_MMS_ADDRESS:Landroid/net/Uri;

.field public static final URI_MMS_INBOX:Landroid/net/Uri;

.field public static final URI_MMS_OUTBOX:Landroid/net/Uri;

.field public static final URI_MMS_PART:Landroid/net/Uri;

.field public static final URI_MMS_SMS:Landroid/net/Uri;

.field public static final URI_SMS:Landroid/net/Uri;

.field public static final URI_SMS_INBOX:Landroid/net/Uri;

.field public static final URI_SMS_OUTBOX:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->URI_SMS_INBOX:Landroid/net/Uri;

    .line 37
    const-string v0, "content://sms/outbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->URI_SMS_OUTBOX:Landroid/net/Uri;

    .line 39
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->URI_SMS:Landroid/net/Uri;

    .line 41
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->URI_MMS:Landroid/net/Uri;

    .line 43
    const-string v0, "content://mms-sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->URI_MMS_SMS:Landroid/net/Uri;

    .line 45
    const-string v0, "content://mms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->URI_MMS_INBOX:Landroid/net/Uri;

    .line 47
    const-string v0, "content://mms/outbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->URI_MMS_OUTBOX:Landroid/net/Uri;

    .line 49
    const-string v0, "content://mms/part"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->URI_MMS_PART:Landroid/net/Uri;

    .line 51
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->URI_MMS_ADDRESS:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    return-void
.end method

.method public static generateContentValues(Lcom/zte/heartyservice/intercept/Tencent/SmsLog;Z)Landroid/content/ContentValues;
    .locals 4
    .parameter "log"
    .parameter "issys"

    .prologue
    .line 532
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 534
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v1, "date"

    iget-wide v2, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->date:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 537
    const-string v1, "protocol"

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->protocolType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 538
    const-string v1, "read"

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 540
    const-string v1, "type"

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 542
    const-string v1, "body"

    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 547
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->subscription:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 550
    :cond_0
    if-nez p1, :cond_1

    .line 552
    const-string v1, "read_extend"

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 553
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_1
    return-object v0
.end method

.method public static generateContentValuesForSystem(Lcom/zte/heartyservice/intercept/Tencent/SmsLog;Z)Landroid/content/ContentValues;
    .locals 4
    .parameter "log"
    .parameter "issys"

    .prologue
    .line 560
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 562
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v1, "date"

    iget-wide v2, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->date:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 565
    const-string v1, "protocol"

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->protocolType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    const-string v1, "read"

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 568
    const-string v1, "type"

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 570
    const-string v1, "body"

    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 575
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v2

    iget v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->subscription:I

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/msim/SimManager;->getSmsSysId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 578
    :cond_0
    if-nez p1, :cond_1

    .line 580
    const-string v1, "read_extend"

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_1
    return-object v0
.end method

.method public static getLogFromCursor(Landroid/database/Cursor;Z)Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    .locals 19
    .parameter "cursor"
    .parameter "issys"

    .prologue
    .line 225
    const/4 v11, 0x0

    .line 226
    .local v11, smslog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 227
    if-eqz p1, :cond_3

    const-string v17, "_id"

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 228
    .local v5, idIndex:I
    const-string v17, "thread_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 229
    .local v15, threadIdIndex:I
    const-string v17, "address"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 230
    .local v2, addressIndex:I
    const-string v17, "person"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 231
    .local v6, personIndex:I
    const-string v17, "date"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 232
    .local v4, dateIndex:I
    const-string v17, "protocol"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 233
    .local v7, protocolIndex:I
    const-string v17, "read"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 234
    .local v9, readIndex:I
    const-string v17, "status"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 235
    .local v12, statusIndex:I
    const-string v17, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 236
    .local v16, typeIndex:I
    const-string v17, "subject"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 237
    .local v13, subjectIndex:I
    const-string v17, "body"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 238
    .local v3, bodyIndex:I
    const-string v17, "service_center"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 239
    .local v10, serviceCenterIndex:I
    const-string v17, "read_extend"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 241
    .local v8, readExtendIndex:I
    const/4 v14, -0x1

    .line 242
    .local v14, subscriptionIndex:I
    sget-object v17, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    if-eqz v17, :cond_0

    .line 243
    sget-object v17, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 247
    :cond_0
    new-instance v11, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    .end local v11           #smslog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    invoke-direct {v11}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;-><init>()V

    .line 249
    .restart local v11       #smslog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->id:I

    .line 251
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->setAddress(Ljava/lang/String;)V

    .line 253
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v11, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->date:J

    .line 254
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->protocolType:I

    .line 255
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read:I

    .line 257
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->type:I

    .line 259
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->body:Ljava/lang/String;

    .line 263
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_1

    .line 264
    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->subscription:I

    .line 267
    :cond_1
    if-nez p1, :cond_5

    .line 268
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_4

    .line 269
    iget v0, v11, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    .line 281
    .end local v2           #addressIndex:I
    .end local v3           #bodyIndex:I
    .end local v4           #dateIndex:I
    .end local v5           #idIndex:I
    .end local v6           #personIndex:I
    .end local v7           #protocolIndex:I
    .end local v8           #readExtendIndex:I
    .end local v9           #readIndex:I
    .end local v10           #serviceCenterIndex:I
    .end local v12           #statusIndex:I
    .end local v13           #subjectIndex:I
    .end local v14           #subscriptionIndex:I
    .end local v15           #threadIdIndex:I
    .end local v16           #typeIndex:I
    :cond_2
    :goto_1
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    .line 282
    return-object v11

    .line 227
    :cond_3
    const-string v17, "id"

    goto/16 :goto_0

    .line 271
    .restart local v2       #addressIndex:I
    .restart local v3       #bodyIndex:I
    .restart local v4       #dateIndex:I
    .restart local v5       #idIndex:I
    .restart local v6       #personIndex:I
    .restart local v7       #protocolIndex:I
    .restart local v8       #readExtendIndex:I
    .restart local v9       #readIndex:I
    .restart local v10       #serviceCenterIndex:I
    .restart local v12       #statusIndex:I
    .restart local v13       #subjectIndex:I
    .restart local v14       #subscriptionIndex:I
    .restart local v15       #threadIdIndex:I
    .restart local v16       #typeIndex:I
    :cond_4
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    goto :goto_1

    .line 274
    :cond_5
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_6

    .line 275
    iget v0, v11, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    goto :goto_1

    .line 277
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v11, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    goto :goto_1
.end method

.method public static getLogFromSysCursor(Landroid/database/Cursor;Z)Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    .locals 20
    .parameter "cursor"
    .parameter "issys"

    .prologue
    .line 358
    const/4 v12, 0x0

    .line 359
    .local v12, smslog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 360
    if-eqz p1, :cond_3

    const-string v18, "_id"

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 361
    .local v6, idIndex:I
    const-string v18, "thread_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 362
    .local v16, threadIdIndex:I
    const-string v18, "address"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 363
    .local v2, addressIndex:I
    const-string v18, "person"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 364
    .local v7, personIndex:I
    const-string v18, "date"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 365
    .local v4, dateIndex:I
    const-string v18, "protocol"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 366
    .local v8, protocolIndex:I
    const-string v18, "read"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 367
    .local v10, readIndex:I
    const-string v18, "status"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 368
    .local v13, statusIndex:I
    const-string v18, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 369
    .local v17, typeIndex:I
    const-string v18, "subject"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 370
    .local v14, subjectIndex:I
    const-string v18, "body"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 371
    .local v3, bodyIndex:I
    const-string v18, "service_center"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 372
    .local v11, serviceCenterIndex:I
    const-string v18, "read_extend"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 373
    .local v9, readExtendIndex:I
    const/4 v15, -0x1

    .line 374
    .local v15, subscriptionIndex:I
    sget-object v18, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    if-eqz v18, :cond_0

    .line 375
    sget-object v18, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 378
    :cond_0
    new-instance v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    .end local v12           #smslog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    invoke-direct {v12}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;-><init>()V

    .line 380
    .restart local v12       #smslog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->id:I

    .line 381
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->setAddress(Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->date:J

    .line 383
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->protocolType:I

    .line 384
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read:I

    .line 385
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->type:I

    .line 386
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->body:Ljava/lang/String;

    .line 388
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_1

    .line 389
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 390
    .local v5, id:I
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/zte/heartyservice/msim/SimManager;->getSmsIdFromSys(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->subscription:I

    .line 392
    .end local v5           #id:I
    :cond_1
    if-nez p1, :cond_5

    .line 393
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_4

    .line 394
    iget v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    .line 406
    .end local v2           #addressIndex:I
    .end local v3           #bodyIndex:I
    .end local v4           #dateIndex:I
    .end local v6           #idIndex:I
    .end local v7           #personIndex:I
    .end local v8           #protocolIndex:I
    .end local v9           #readExtendIndex:I
    .end local v10           #readIndex:I
    .end local v11           #serviceCenterIndex:I
    .end local v13           #statusIndex:I
    .end local v14           #subjectIndex:I
    .end local v15           #subscriptionIndex:I
    .end local v16           #threadIdIndex:I
    .end local v17           #typeIndex:I
    :cond_2
    :goto_1
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    .line 407
    return-object v12

    .line 360
    :cond_3
    const-string v18, "id"

    goto/16 :goto_0

    .line 396
    .restart local v2       #addressIndex:I
    .restart local v3       #bodyIndex:I
    .restart local v4       #dateIndex:I
    .restart local v6       #idIndex:I
    .restart local v7       #personIndex:I
    .restart local v8       #protocolIndex:I
    .restart local v9       #readExtendIndex:I
    .restart local v10       #readIndex:I
    .restart local v11       #serviceCenterIndex:I
    .restart local v13       #statusIndex:I
    .restart local v14       #subjectIndex:I
    .restart local v15       #subscriptionIndex:I
    .restart local v16       #threadIdIndex:I
    .restart local v17       #typeIndex:I
    :cond_4
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    goto :goto_1

    .line 399
    :cond_5
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_6

    .line 400
    iget v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    goto :goto_1

    .line 402
    :cond_6
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    goto :goto_1
.end method

.method public static getLogsFromCursor(Landroid/database/Cursor;Z)Ljava/util/List;
    .locals 21
    .parameter "cursor"
    .parameter "issys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    if-eqz p1, :cond_2

    const-string v19, "_id"

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 294
    .local v6, idIndex:I
    const-string v19, "thread_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 295
    .local v17, threadIdIndex:I
    const-string v19, "address"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 296
    .local v2, addressIndex:I
    const-string v19, "person"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 297
    .local v7, personIndex:I
    const-string v19, "date"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 298
    .local v4, dateIndex:I
    const-string v19, "protocol"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 299
    .local v8, protocolIndex:I
    const-string v19, "read"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 300
    .local v10, readIndex:I
    const-string v19, "status"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 301
    .local v14, statusIndex:I
    const-string v19, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 302
    .local v18, typeIndex:I
    const-string v19, "subject"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 303
    .local v15, subjectIndex:I
    const-string v19, "body"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 304
    .local v3, bodyIndex:I
    const-string v19, "service_center"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 305
    .local v11, serviceCenterIndex:I
    const-string v19, "read_extend"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 306
    .local v9, readExtendIndex:I
    const-string v19, "displayName"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 308
    .local v5, displayNameIndex:I
    const/16 v16, -0x1

    .line 309
    .local v16, subscriptionIndex:I
    sget-object v19, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    if-eqz v19, :cond_0

    .line 310
    sget-object v19, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 314
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v13, smslogs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 316
    :goto_1
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v19

    if-nez v19, :cond_6

    .line 317
    new-instance v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    invoke-direct {v12}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;-><init>()V

    .line 318
    .local v12, smsLog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->id:I

    .line 320
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->setAddress(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->date:J

    .line 323
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->protocolType:I

    .line 324
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read:I

    .line 326
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->type:I

    .line 328
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->body:Ljava/lang/String;

    .line 331
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 332
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->subscription:I

    .line 335
    :cond_1
    if-nez p1, :cond_4

    .line 336
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_3

    .line 337
    iget v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    .line 341
    :goto_2
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->name:Ljava/lang/String;

    .line 349
    :goto_3
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 293
    .end local v2           #addressIndex:I
    .end local v3           #bodyIndex:I
    .end local v4           #dateIndex:I
    .end local v5           #displayNameIndex:I
    .end local v6           #idIndex:I
    .end local v7           #personIndex:I
    .end local v8           #protocolIndex:I
    .end local v9           #readExtendIndex:I
    .end local v10           #readIndex:I
    .end local v11           #serviceCenterIndex:I
    .end local v12           #smsLog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    .end local v13           #smslogs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    .end local v14           #statusIndex:I
    .end local v15           #subjectIndex:I
    .end local v16           #subscriptionIndex:I
    .end local v17           #threadIdIndex:I
    .end local v18           #typeIndex:I
    :cond_2
    const-string v19, "id"

    goto/16 :goto_0

    .line 339
    .restart local v2       #addressIndex:I
    .restart local v3       #bodyIndex:I
    .restart local v4       #dateIndex:I
    .restart local v5       #displayNameIndex:I
    .restart local v6       #idIndex:I
    .restart local v7       #personIndex:I
    .restart local v8       #protocolIndex:I
    .restart local v9       #readExtendIndex:I
    .restart local v10       #readIndex:I
    .restart local v11       #serviceCenterIndex:I
    .restart local v12       #smsLog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    .restart local v13       #smslogs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    .restart local v14       #statusIndex:I
    .restart local v15       #subjectIndex:I
    .restart local v16       #subscriptionIndex:I
    .restart local v17       #threadIdIndex:I
    .restart local v18       #typeIndex:I
    :cond_3
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    goto :goto_2

    .line 343
    :cond_4
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_5

    .line 344
    iget v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    goto :goto_3

    .line 346
    :cond_5
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    goto :goto_3

    .line 352
    .end local v12           #smsLog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    :cond_6
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    .line 353
    return-object v13
.end method

.method public static getLogsFromSysCursor(Landroid/database/Cursor;Z)Ljava/util/List;
    .locals 22
    .parameter "cursor"
    .parameter "issys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    if-eqz p1, :cond_2

    const-string v20, "_id"

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 412
    .local v7, idIndex:I
    const-string v20, "thread_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 413
    .local v18, threadIdIndex:I
    const-string v20, "address"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 414
    .local v2, addressIndex:I
    const-string v20, "person"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 415
    .local v8, personIndex:I
    const-string v20, "date"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 416
    .local v4, dateIndex:I
    const-string v20, "protocol"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 417
    .local v9, protocolIndex:I
    const-string v20, "read"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 418
    .local v11, readIndex:I
    const-string v20, "status"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 419
    .local v15, statusIndex:I
    const-string v20, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 420
    .local v19, typeIndex:I
    const-string v20, "subject"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 421
    .local v16, subjectIndex:I
    const-string v20, "body"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 422
    .local v3, bodyIndex:I
    const-string v20, "service_center"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 423
    .local v12, serviceCenterIndex:I
    const-string v20, "read_extend"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 424
    .local v10, readExtendIndex:I
    const-string v20, "displayName"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 425
    .local v5, displayNameIndex:I
    const/16 v17, -0x1

    .line 426
    .local v17, subscriptionIndex:I
    sget-object v20, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    if-eqz v20, :cond_0

    .line 427
    sget-object v20, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 430
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v14, smslogs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 432
    :goto_1
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v20

    if-nez v20, :cond_6

    .line 433
    new-instance v13, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    invoke-direct {v13}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;-><init>()V

    .line 434
    .local v13, smsLog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v13, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->id:I

    .line 435
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->setAddress(Ljava/lang/String;)V

    .line 436
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v13, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->date:J

    .line 437
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v13, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->protocolType:I

    .line 438
    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v13, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read:I

    .line 439
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v13, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->type:I

    .line 440
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->body:Ljava/lang/String;

    .line 441
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 442
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 443
    .local v6, id:I
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/zte/heartyservice/msim/SimManager;->getSmsIdFromSys(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v13, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->subscription:I

    .line 445
    .end local v6           #id:I
    :cond_1
    if-nez p1, :cond_4

    .line 446
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_3

    .line 447
    iget v0, v13, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v13, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    .line 451
    :goto_2
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->name:Ljava/lang/String;

    .line 459
    :goto_3
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 411
    .end local v2           #addressIndex:I
    .end local v3           #bodyIndex:I
    .end local v4           #dateIndex:I
    .end local v5           #displayNameIndex:I
    .end local v7           #idIndex:I
    .end local v8           #personIndex:I
    .end local v9           #protocolIndex:I
    .end local v10           #readExtendIndex:I
    .end local v11           #readIndex:I
    .end local v12           #serviceCenterIndex:I
    .end local v13           #smsLog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    .end local v14           #smslogs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    .end local v15           #statusIndex:I
    .end local v16           #subjectIndex:I
    .end local v17           #subscriptionIndex:I
    .end local v18           #threadIdIndex:I
    .end local v19           #typeIndex:I
    :cond_2
    const-string v20, "id"

    goto/16 :goto_0

    .line 449
    .restart local v2       #addressIndex:I
    .restart local v3       #bodyIndex:I
    .restart local v4       #dateIndex:I
    .restart local v5       #displayNameIndex:I
    .restart local v7       #idIndex:I
    .restart local v8       #personIndex:I
    .restart local v9       #protocolIndex:I
    .restart local v10       #readExtendIndex:I
    .restart local v11       #readIndex:I
    .restart local v12       #serviceCenterIndex:I
    .restart local v13       #smsLog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    .restart local v14       #smslogs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    .restart local v15       #statusIndex:I
    .restart local v16       #subjectIndex:I
    .restart local v17       #subscriptionIndex:I
    .restart local v18       #threadIdIndex:I
    .restart local v19       #typeIndex:I
    :cond_3
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v13, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    goto :goto_2

    .line 453
    :cond_4
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_5

    .line 454
    iget v0, v13, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v13, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    goto :goto_3

    .line 456
    :cond_5
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v13, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    goto :goto_3

    .line 462
    .end local v13           #smsLog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    :cond_6
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    .line 463
    return-object v14
.end method

.method public static replySMS(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "number"

    .prologue
    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 193
    .local v1, smsUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "address"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 197
    return-void
.end method

.method public static sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 3
    .parameter "SmsPort"
    .parameter "SmsBody"
    .parameter "pintent"

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 66
    .local v1, smsManager:Lcom/zte/heartyservice/intercept/Tencent/SMSUtil$ISmsManager;
    new-instance v1, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil$SmsManagerV2;

    .end local v1           #smsManager:Lcom/zte/heartyservice/intercept/Tencent/SMSUtil$ISmsManager;
    invoke-direct {v1}, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil$SmsManagerV2;-><init>()V

    .line 69
    .restart local v1       #smsManager:Lcom/zte/heartyservice/intercept/Tencent/SMSUtil$ISmsManager;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil$ISmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 70
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static transpondSMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "number"
    .parameter "body"

    .prologue
    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 210
    .local v1, transpondSmsUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "sms_body"

    invoke-static {p2}, Lcom/zte/heartyservice/intercept/Tencent/Tools;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 214
    return-void
.end method
