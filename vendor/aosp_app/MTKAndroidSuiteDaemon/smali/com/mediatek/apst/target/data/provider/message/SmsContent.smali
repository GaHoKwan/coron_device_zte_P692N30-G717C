.class public Lcom/mediatek/apst/target/data/provider/message/SmsContent;
.super Ljava/lang/Object;
.source "SmsContent.java"


# static fields
.field public static final COLUMN_ADDRESS:Ljava/lang/String; = "address"

.field public static final COLUMN_BODY:Ljava/lang/String; = "body"

.field public static final COLUMN_DATE:Ljava/lang/String; = "date"

.field public static final COLUMN_DATE_SENT:Ljava/lang/String; = "date_sent"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LOCKED:Ljava/lang/String; = "locked"

.field public static final COLUMN_PERSON:Ljava/lang/String; = "person"

.field public static final COLUMN_PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final COLUMN_READ:Ljava/lang/String; = "read"

.field public static final COLUMN_REPLY_PATH_PRESENT:Ljava/lang/String; = "reply_path_present"

.field public static final COLUMN_SERVICE_CENTER:Ljava/lang/String; = "service_center"

.field public static final COLUMN_SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_SUBJECT:Ljava/lang/String; = "subject"

.field public static final COLUMN_THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_CONVERSATIONS:Landroid/net/Uri; = null

.field public static final CONTENT_URI_DRAFT:Landroid/net/Uri; = null

.field public static final CONTENT_URI_FAILED:Landroid/net/Uri; = null

.field public static final CONTENT_URI_INBOX:Landroid/net/Uri; = null

.field public static final CONTENT_URI_OUTBOX:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SENT:Landroid/net/Uri; = null

.field public static final CONTENT_URI_UNDELIVERED:Landroid/net/Uri; = null

.field public static final SIM_ID_MAX:I = 0x64

.field public static final SIM_ID_MIM:I = 0x1

.field public static final STATUS_COMPLETE:I = 0x0

.field public static final STATUS_FAILED:I = 0x80

.field public static final STATUS_NONE:I = -0x1

.field public static final STATUS_PENDING:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    .line 63
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI_INBOX:Landroid/net/Uri;

    .line 66
    const-string v0, "content://sms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI_SENT:Landroid/net/Uri;

    .line 68
    const-string v0, "content://sms/draft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI_DRAFT:Landroid/net/Uri;

    .line 71
    const-string v0, "content://sms/outbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI_OUTBOX:Landroid/net/Uri;

    .line 74
    const-string v0, "content://sms/failed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI_FAILED:Landroid/net/Uri;

    .line 82
    const-string v0, "content://sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI_UNDELIVERED:Landroid/net/Uri;

    .line 85
    const-string v0, "content://sms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI_CONVERSATIONS:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createContentValues(Lcom/mediatek/apst/util/entity/message/Sms;ZZ)Landroid/content/ContentValues;
    .locals 7
    .parameter "sms"
    .parameter "setId"
    .parameter "setThreadId"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 461
    if-nez p0, :cond_1

    .line 462
    const/4 v1, 0x0

    .line 497
    :cond_0
    :goto_0
    return-object v1

    .line 465
    :cond_1
    const/16 v0, 0x8

    .line 466
    .local v0, fieldsCount:I
    if-eqz p1, :cond_2

    .line 467
    add-int/lit8 v0, v0, 0x1

    .line 469
    :cond_2
    if-eqz p2, :cond_3

    .line 470
    add-int/lit8 v0, v0, 0x1

    .line 472
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 473
    add-int/lit8 v0, v0, 0x1

    .line 475
    :cond_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 476
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "body"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Sms;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v2, "service_center"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Sms;->getServiceCenter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v2, "subject"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v2, "type"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->getBox()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 480
    const-string v2, "date"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->getDate()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 481
    const-string v5, "read"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->isRead()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 483
    const-string v2, "locked"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 486
    const-string v2, "sim_id"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->getSimId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    if-eqz p1, :cond_5

    .line 488
    const-string v2, "_id"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 490
    :cond_5
    if-eqz p2, :cond_6

    .line 491
    const-string v2, "thread_id"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 493
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 494
    const-string v2, "address"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v2, v4

    .line 481
    goto :goto_1

    :cond_8
    move v3, v4

    .line 483
    goto :goto_2
.end method

.method public static createMeasuredContentValues(Lcom/mediatek/apst/util/entity/message/Sms;ZZ)Lcom/mediatek/android/content/MeasuredContentValues;
    .locals 7
    .parameter "sms"
    .parameter "setId"
    .parameter "setThreadId"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 511
    if-nez p0, :cond_1

    .line 512
    const/4 v1, 0x0

    .line 548
    :cond_0
    :goto_0
    return-object v1

    .line 516
    :cond_1
    const/16 v0, 0x8

    .line 517
    .local v0, fieldsCount:I
    if-eqz p1, :cond_2

    .line 518
    add-int/lit8 v0, v0, 0x1

    .line 520
    :cond_2
    if-eqz p2, :cond_3

    .line 521
    add-int/lit8 v0, v0, 0x1

    .line 523
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 524
    add-int/lit8 v0, v0, 0x1

    .line 526
    :cond_4
    new-instance v1, Lcom/mediatek/android/content/MeasuredContentValues;

    invoke-direct {v1, v0}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 527
    .local v1, values:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v2, "body"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Sms;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v2, "service_center"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Sms;->getServiceCenter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v2, "subject"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v2, "type"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->getBox()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 531
    const-string v2, "date"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->getDate()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 532
    const-string v5, "read"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->isRead()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 534
    const-string v2, "locked"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 537
    const-string v2, "sim_id"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->getSimId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 538
    if-eqz p1, :cond_5

    .line 539
    const-string v2, "_id"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 541
    :cond_5
    if-eqz p2, :cond_6

    .line 542
    const-string v2, "thread_id"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 544
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->getBox()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 545
    const-string v2, "address"

    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v2, v4

    .line 532
    goto :goto_1

    :cond_8
    move v3, v4

    .line 534
    goto :goto_2
.end method

.method public static cursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 10
    .parameter "cursor"
    .parameter "buffer"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v8, -0x1

    .line 311
    if-nez p0, :cond_0

    .line 312
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object p1, v5, v4

    const-string v4, "Cursor is null."

    invoke-static {v5, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    :goto_0
    return v3

    .line 314
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    if-eq v6, v8, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 316
    :cond_1
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object p1, v5, v4

    const-string v4, "Cursor has moved to the end."

    invoke-static {v5, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_2
    if-nez p1, :cond_3

    .line 320
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object p1, v5, v4

    const-string v4, "Buffer is null."

    invoke-static {v5, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 329
    :try_start_0
    const-string v6, "_id"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 330
    .local v0, colId:I
    if-eq v8, v0, :cond_4

    .line 331
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 336
    :goto_1
    const-string v6, "thread_id"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 337
    if-eq v8, v0, :cond_5

    .line 338
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 343
    :goto_2
    const-string v6, "address"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 344
    if-eq v8, v0, :cond_6

    .line 345
    new-instance v6, Lcom/mediatek/apst/util/entity/message/TargetAddress;

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/mediatek/apst/util/entity/message/TargetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 350
    :goto_3
    const-string v6, "date"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 351
    if-eq v8, v0, :cond_7

    .line 352
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 357
    :goto_4
    const-string v6, "type"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 358
    if-eq v8, v0, :cond_8

    .line 359
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 364
    :goto_5
    const-string v6, "read"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 365
    if-eq v8, v0, :cond_a

    .line 366
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v4, :cond_9

    move v6, v4

    :goto_6
    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    .line 372
    :goto_7
    const-string v6, "subject"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 373
    if-eq v8, v0, :cond_b

    .line 374
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 379
    :goto_8
    const-string v6, "locked"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 380
    if-eq v8, v0, :cond_d

    .line 381
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v4, :cond_c

    move v6, v4

    :goto_9
    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    .line 387
    :goto_a
    const-string v6, "body"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 388
    if-eq v8, v0, :cond_e

    .line 389
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 394
    :goto_b
    const-string v6, "service_center"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 395
    if-eq v8, v0, :cond_f

    .line 396
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 401
    :goto_c
    const-string v6, "date_sent"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 402
    if-eq v8, v0, :cond_10

    .line 403
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 409
    :goto_d
    const-string v6, "sim_id"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 410
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[cursorToRaw]----------------The COLUMN_SIM_ID is  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .line 412
    if-eq v8, v0, :cond_11

    .line 413
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 415
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lcom/mediatek/apst/target/util/Global;->getSimInfoById(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v2

    .line 417
    .local v2, info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    invoke-virtual {v2}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v2}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v2}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getICCId()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 422
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[cursorToRaw]----------------The sim id form db is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    :goto_e
    move v3, v4

    .line 447
    goto/16 :goto_0

    .line 333
    .end local v2           #info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    :cond_4
    const-wide/16 v6, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 435
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 436
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object p1, v5, v4

    invoke-static {v5, v9, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 437
    invoke-virtual {p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 340
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_5
    const-wide/16 v6, -0x1

    :try_start_1
    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 439
    .end local v0           #colId:I
    :catch_1
    move-exception v1

    .line 444
    .local v1, e:Ljava/nio/BufferOverflowException;
    invoke-virtual {p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move v3, v5

    .line 445
    goto/16 :goto_0

    .line 347
    .end local v1           #e:Ljava/nio/BufferOverflowException;
    .restart local v0       #colId:I
    :cond_6
    :try_start_2
    new-instance v6, Lcom/mediatek/apst/util/entity/message/TargetAddress;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/mediatek/apst/util/entity/message/TargetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_3

    .line 354
    :cond_7
    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto/16 :goto_4

    .line 361
    :cond_8
    const/4 v6, -0x1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_5

    :cond_9
    move v6, v3

    .line 366
    goto/16 :goto_6

    .line 369
    :cond_a
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    goto/16 :goto_7

    .line 376
    :cond_b
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_c
    move v6, v3

    .line 381
    goto/16 :goto_9

    .line 384
    :cond_d
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    goto/16 :goto_a

    .line 391
    :cond_e
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 398
    :cond_f
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 405
    :cond_10
    const/4 v6, -0x1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_d

    .line 426
    :cond_11
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 428
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/mediatek/apst/target/util/Global;->getSimInfoById(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v2

    .line 429
    .restart local v2       #info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    invoke-virtual {v2}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 431
    invoke-virtual {v2}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 433
    invoke-virtual {v2}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getICCId()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_e
.end method

.method public static cursorToSms(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/message/Sms;
    .locals 13
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v12, -0x1

    .line 206
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-eq v7, v12, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-ne v7, v10, :cond_2

    :cond_0
    move-object v5, v6

    .line 300
    :cond_1
    :goto_0
    return-object v5

    .line 212
    :cond_2
    new-instance v5, Lcom/mediatek/apst/util/entity/message/Sms;

    invoke-direct {v5}, Lcom/mediatek/apst/util/entity/message/Sms;-><init>()V

    .line 217
    .local v5, sms:Lcom/mediatek/apst/util/entity/message/Sms;
    :try_start_0
    const-string v7, "_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 218
    .local v1, colId:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "----------------COLUMN_ID colId = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .line 219
    if-eq v12, v1, :cond_3

    .line 220
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 221
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "----------------sms id is "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .line 225
    :cond_3
    const-string v7, "thread_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 226
    if-eq v12, v1, :cond_4

    .line 227
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/mediatek/apst/util/entity/message/Message;->setThreadId(J)V

    .line 230
    :cond_4
    const-string v7, "address"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 231
    if-eq v12, v1, :cond_5

    .line 232
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, address:Ljava/lang/String;
    new-instance v7, Lcom/mediatek/apst/util/entity/message/TargetAddress;

    invoke-direct {v7, v0}, Lcom/mediatek/apst/util/entity/message/TargetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/mediatek/apst/util/entity/message/Message;->setTarget(Lcom/mediatek/apst/util/entity/message/TargetAddress;)V

    .line 236
    .end local v0           #address:Ljava/lang/String;
    :cond_5
    const-string v7, "date"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 237
    if-eq v12, v1, :cond_6

    .line 238
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/mediatek/apst/util/entity/message/Message;->setDate(J)V

    .line 241
    :cond_6
    const-string v7, "type"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 242
    if-eq v12, v1, :cond_7

    .line 243
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/mediatek/apst/util/entity/message/Message;->setBox(I)V

    .line 246
    :cond_7
    const-string v7, "read"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 247
    if-eq v12, v1, :cond_8

    .line 248
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v8, :cond_e

    move v7, v8

    :goto_1
    invoke-virtual {v5, v7}, Lcom/mediatek/apst/util/entity/message/Message;->setRead(Z)V

    .line 251
    :cond_8
    const-string v7, "subject"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 252
    if-eq v12, v1, :cond_9

    .line 253
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mediatek/apst/util/entity/message/Message;->setSubject(Ljava/lang/String;)V

    .line 256
    :cond_9
    const-string v7, "locked"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 257
    if-eq v12, v1, :cond_a

    .line 258
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v8, :cond_f

    move v7, v8

    :goto_2
    invoke-virtual {v5, v7}, Lcom/mediatek/apst/util/entity/message/Message;->setLocked(Z)V

    .line 262
    :cond_a
    const-string v7, "body"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 263
    if-eq v12, v1, :cond_b

    .line 264
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mediatek/apst/util/entity/message/Sms;->setBody(Ljava/lang/String;)V

    .line 267
    :cond_b
    const-string v7, "service_center"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 268
    if-eq v12, v1, :cond_c

    .line 269
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mediatek/apst/util/entity/message/Sms;->setServiceCenter(Ljava/lang/String;)V

    .line 273
    :cond_c
    const-string v7, "date_sent"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 274
    if-eq v12, v1, :cond_d

    .line 275
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/mediatek/apst/util/entity/message/Message;->setDate_sent(I)V

    .line 280
    :cond_d
    const-string v7, "sim_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 281
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "----------------colId = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .line 282
    if-eq v12, v1, :cond_1

    .line 283
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 284
    .local v4, simId:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "*************The simId = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v5, v4}, Lcom/mediatek/apst/util/entity/message/Message;->setSimId(I)V

    .line 287
    invoke-static {v4}, Lcom/mediatek/apst/target/util/Global;->getSimInfoById(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v3

    .line 288
    .local v3, info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    invoke-virtual {v3}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mediatek/apst/util/entity/message/Message;->setSimName(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v3}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mediatek/apst/util/entity/message/Message;->setSimNumber(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v3}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getICCId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mediatek/apst/util/entity/message/Message;->setSimICCId(Ljava/lang/String;)V

    .line 293
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "----------------The sim id form db is "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 296
    .end local v1           #colId:I
    .end local v3           #info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .end local v4           #simId:I
    :catch_0
    move-exception v2

    .line 297
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-array v7, v8, [Ljava/lang/Object;

    aput-object p0, v7, v9

    invoke-static {v7, v6, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #colId:I
    :cond_e
    move v7, v9

    .line 248
    goto/16 :goto_1

    :cond_f
    move v7, v9

    .line 258
    goto/16 :goto_2
.end method
