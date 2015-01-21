.class public final Ltmsdk/common/module/aresengine/DefaultSysDao;
.super Ltmsdk/common/module/aresengine/AbsSysDao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/module/aresengine/DefaultSysDao$b;,
        Ltmsdk/common/module/aresengine/DefaultSysDao$a;,
        Ltmsdk/common/module/aresengine/DefaultSysDao$c;
    }
.end annotation


# static fields
.field private static volatile yR:Ltmsdk/common/module/aresengine/DefaultSysDao;

.field private static final yS:Landroid/net/Uri;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private yT:Ltmsdk/common/module/aresengine/DefaultSysDao$c;

.field private yU:Ltmsdkobf/lp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ltmsdk/common/module/aresengine/DefaultSysDao;->yS:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Ltmsdk/common/module/aresengine/AbsSysDao;-><init>()V

    .line 70
    iput-object p1, p0, Ltmsdk/common/module/aresengine/DefaultSysDao;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Ltmsdk/common/module/aresengine/DefaultSysDao;->mContentResolver:Landroid/content/ContentResolver;

    .line 72
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 73
    .local v0, above_2_0:Z
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Ltmsdk/common/module/aresengine/DefaultSysDao$b;

    invoke-direct {v1, p0}, Ltmsdk/common/module/aresengine/DefaultSysDao$b;-><init>(Ltmsdk/common/module/aresengine/DefaultSysDao;)V

    :goto_1
    iput-object v1, p0, Ltmsdk/common/module/aresengine/DefaultSysDao;->yT:Ltmsdk/common/module/aresengine/DefaultSysDao$c;

    .line 75
    invoke-static {}, Ltmsdkobf/lp;->gA()Ltmsdkobf/lp;

    move-result-object v1

    iput-object v1, p0, Ltmsdk/common/module/aresengine/DefaultSysDao;->yU:Ltmsdkobf/lp;

    .line 76
    return-void

    .line 72
    .end local v0           #above_2_0:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    .restart local v0       #above_2_0:Z
    :cond_1
    new-instance v1, Ltmsdk/common/module/aresengine/DefaultSysDao$a;

    invoke-direct {v1, p0}, Ltmsdk/common/module/aresengine/DefaultSysDao$a;-><init>(Ltmsdk/common/module/aresengine/DefaultSysDao;)V

    goto :goto_1
.end method

.method static synthetic a(Ltmsdk/common/module/aresengine/DefaultSysDao;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Ltmsdk/common/module/aresengine/DefaultSysDao;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private a(Landroid/net/Uri;Ltmsdk/common/module/aresengine/SmsEntity;Ljava/lang/String;)Z
    .locals 12
    .parameter "uri"
    .parameter "sms"
    .parameter "selection"

    .prologue
    .line 388
    const/4 v10, 0x0

    .line 389
    .local v10, rst:Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v11, v10

    .line 415
    .end local v10           #rst:Z
    .local v11, rst:I
    :goto_0
    return v11

    .line 393
    .end local v11           #rst:I
    .restart local v10       #rst:Z
    :cond_1
    :try_start_0
    iget-object v0, p0, Ltmsdk/common/module/aresengine/DefaultSysDao;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 395
    .local v8, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v8}, Ltmsdk/common/module/aresengine/DefaultSysDao;->e(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 396
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Ltmsdk/common/module/aresengine/SmsEntity;->id:I

    .line 397
    const-string v0, "date"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p2, Ltmsdk/common/module/aresengine/SmsEntity;->date:J

    .line 398
    const-wide/16 v0, 0x0

    iget-wide v2, p2, Ltmsdk/common/module/aresengine/SmsEntity;->date:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Ltmsdk/common/module/aresengine/SmsEntity;->date:J

    .line 401
    :cond_2
    const-string v0, "read"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Ltmsdk/common/module/aresengine/SmsEntity;->read:I

    .line 402
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getDualSimAdapter()Ltmsdkobf/lm;

    move-result-object v7

    .line 403
    .local v7, adpter:Ltmsdkobf/lm;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ltmsdkobf/lm;->gw()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 404
    invoke-interface {v7}, Ltmsdkobf/lm;->gw()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 405
    .local v6, addIndex:I
    if-lez v6, :cond_3

    .line 406
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Ltmsdk/common/module/aresengine/SmsEntity;->fromCard:Ljava/lang/String;

    .line 409
    .end local v6           #addIndex:I
    :cond_3
    const/4 v10, 0x1

    .line 411
    .end local v7           #adpter:Ltmsdkobf/lm;
    :cond_4
    invoke-direct {p0, v8}, Ltmsdk/common/module/aresengine/DefaultSysDao;->f(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_1
    move v11, v10

    .line 415
    .restart local v11       #rst:I
    goto :goto_0

    .line 412
    .end local v11           #rst:I
    :catch_0
    move-exception v9

    .line 413
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Landroid/net/Uri;Ltmsdk/common/module/aresengine/SmsEntity;Z)Z
    .locals 9
    .parameter "uri"
    .parameter "sms"
    .parameter "loadCustomInfo"

    .prologue
    .line 338
    const/4 v5, 0x0

    .line 340
    .local v5, rst:Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v6, v5

    .line 378
    .end local v5           #rst:Z
    .local v6, rst:I
    :goto_0
    return v6

    .line 344
    .end local v6           #rst:I
    .restart local v5       #rst:Z
    :cond_1
    iget-object v7, p0, Ltmsdk/common/module/aresengine/DefaultSysDao;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    .line 346
    .local v4, persister:Lcom/google/android/mms/pdu/PduPersister;
    :try_start_0
    invoke-virtual {v4, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    .line 347
    .local v3, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    new-instance v7, Ltmsdk/common/module/aresengine/MmsData;

    invoke-direct {v7}, Ltmsdk/common/module/aresengine/MmsData;-><init>()V

    iput-object v7, p2, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    .line 348
    instance-of v7, v3, Lcom/google/android/mms/pdu/RetrieveConf;

    if-nez v7, :cond_2

    instance-of v7, v3, Lcom/google/android/mms/pdu/SendReq;

    if-nez v7, :cond_2

    instance-of v7, v3, Lcom/google/android/mms/pdu/NotificationInd;

    if-eqz v7, :cond_4

    .line 349
    :cond_2
    instance-of v7, v3, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v7, :cond_6

    .line 350
    iget-object v7, p2, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    check-cast v3, Lcom/google/android/mms/pdu/SendReq;

    .end local v3           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v7, v3}, Ltmsdk/common/module/aresengine/MmsData;->a(Lcom/google/android/mms/pdu/SendReq;)V

    .line 351
    iget-object v7, p2, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    iget-object v7, v7, Ltmsdk/common/module/aresengine/MmsData;->mmsContentConfigHeader:Ltmsdk/common/module/aresengine/MmsContentConfigHeader;

    if-eqz v7, :cond_3

    .line 352
    iget-object v7, p2, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    iget-object v7, v7, Ltmsdk/common/module/aresengine/MmsData;->mmsContentConfigHeader:Ltmsdk/common/module/aresengine/MmsContentConfigHeader;

    invoke-virtual {v7}, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->fv()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    .line 367
    :cond_3
    :goto_1
    const/4 v7, 0x1

    iput v7, p2, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    const/4 v5, 0x1

    .line 374
    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    if-eqz p3, :cond_5

    .line 375
    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, v7}, Ltmsdk/common/module/aresengine/DefaultSysDao;->a(Landroid/net/Uri;Ltmsdk/common/module/aresengine/SmsEntity;Ljava/lang/String;)Z

    :cond_5
    move v6, v5

    .line 378
    .restart local v6       #rst:I
    goto :goto_0

    .line 355
    .end local v6           #rst:I
    .restart local v3       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_6
    :try_start_1
    instance-of v7, v3, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v7, :cond_8

    .line 356
    iget-object v8, p2, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v7, v0

    invoke-virtual {v8, v7}, Ltmsdk/common/module/aresengine/MmsData;->writeRetrieveConf(Lcom/google/android/mms/pdu/RetrieveConf;)V

    .line 360
    :cond_7
    :goto_3
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 361
    .local v2, encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_9

    .line 362
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 370
    .end local v2           #encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v3           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :catch_0
    move-exception v1

    .line 371
    .local v1, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v1}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_2

    .line 357
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    .restart local v3       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_8
    :try_start_2
    instance-of v7, v3, Lcom/google/android/mms/pdu/NotificationInd;

    if-eqz v7, :cond_7

    .line 358
    iget-object v8, p2, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object v7, v0

    invoke-virtual {v8, v7}, Ltmsdk/common/module/aresengine/MmsData;->writeNotificationInd(Lcom/google/android/mms/pdu/NotificationInd;)V

    goto :goto_3

    .line 364
    .restart local v2       #encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_9
    const-string v7, ""

    iput-object v7, p2, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Ltmsdk/common/module/aresengine/DefaultSysDao;Landroid/database/Cursor;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ltmsdk/common/module/aresengine/DefaultSysDao;->e(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Ltmsdk/common/module/aresengine/DefaultSysDao;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ltmsdk/common/module/aresengine/DefaultSysDao;->f(Landroid/database/Cursor;)V

    return-void
.end method

.method private c(Landroid/database/Cursor;)Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 494
    new-instance v2, Ltmsdk/common/module/aresengine/SmsEntity;

    invoke-direct {v2}, Ltmsdk/common/module/aresengine/SmsEntity;-><init>()V

    .line 496
    .local v2, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Ltmsdk/common/module/aresengine/SmsEntity;->id:I

    .line 497
    const-string v3, "address"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    .line 498
    const-string v3, "type"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Ltmsdk/common/module/aresengine/SmsEntity;->type:I

    .line 499
    const-string v3, "body"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    .line 500
    const-string v3, "date"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Ltmsdk/common/module/aresengine/SmsEntity;->date:J

    .line 501
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getDualSimAdapter()Ltmsdkobf/lm;

    move-result-object v1

    .line 502
    .local v1, adpter:Ltmsdkobf/lm;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ltmsdkobf/lm;->gv()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 503
    invoke-interface {v1}, Ltmsdkobf/lm;->gv()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 504
    .local v0, addIndex:I
    if-lez v0, :cond_0

    .line 505
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ltmsdk/common/module/aresengine/SmsEntity;->fromCard:Ljava/lang/String;

    .line 508
    .end local v0           #addIndex:I
    :cond_0
    return-object v2
.end method

.method private d(Ltmsdk/common/module/aresengine/SmsEntity;)Landroid/content/ContentValues;
    .locals 4
    .parameter "sms"

    .prologue
    .line 482
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 484
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    iget-object v2, p1, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v1, "body"

    iget-object v2, p1, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v1, "date"

    iget-wide v2, p1, Ltmsdk/common/module/aresengine/SmsEntity;->date:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 487
    const-string v1, "read"

    iget v2, p1, Ltmsdk/common/module/aresengine/SmsEntity;->read:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 488
    const-string v1, "type"

    iget v2, p1, Ltmsdk/common/module/aresengine/SmsEntity;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 490
    return-object v0
.end method

.method private d(Landroid/database/Cursor;)Ltmsdk/common/module/aresengine/CallLogEntity;
    .locals 6
    .parameter "cursor"

    .prologue
    .line 512
    new-instance v2, Ltmsdk/common/module/aresengine/CallLogEntity;

    invoke-direct {v2}, Ltmsdk/common/module/aresengine/CallLogEntity;-><init>()V

    .line 514
    .local v2, calllog:Ltmsdk/common/module/aresengine/CallLogEntity;
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Ltmsdk/common/module/aresengine/CallLogEntity;->id:I

    .line 515
    const-string v3, "number"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[ -]+"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    .line 516
    const-string v3, "type"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Ltmsdk/common/module/aresengine/CallLogEntity;->type:I

    .line 517
    const-string v3, "duration"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Ltmsdk/common/module/aresengine/CallLogEntity;->duration:J

    .line 518
    const-string v3, "date"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Ltmsdk/common/module/aresengine/CallLogEntity;->date:J

    .line 519
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getDualSimAdapter()Ltmsdkobf/lm;

    move-result-object v1

    .line 520
    .local v1, adpter:Ltmsdkobf/lm;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ltmsdkobf/lm;->gx()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 521
    invoke-interface {v1}, Ltmsdkobf/lm;->gx()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 522
    .local v0, addIndex:I
    if-lez v0, :cond_0

    .line 523
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ltmsdk/common/module/aresengine/CallLogEntity;->fromCard:Ljava/lang/String;

    .line 527
    .end local v0           #addIndex:I
    :cond_0
    return-object v2
.end method

.method private e(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 531
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 535
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Ltmsdk/common/module/aresengine/DefaultSysDao;
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    sget-object v0, Ltmsdk/common/module/aresengine/DefaultSysDao;->yR:Ltmsdk/common/module/aresengine/DefaultSysDao;

    if-nez v0, :cond_1

    .line 60
    const-class v1, Ltmsdk/common/module/aresengine/DefaultSysDao;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Ltmsdk/common/module/aresengine/DefaultSysDao;->yR:Ltmsdk/common/module/aresengine/DefaultSysDao;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ltmsdk/common/module/aresengine/DefaultSysDao;

    invoke-direct {v0, p0}, Ltmsdk/common/module/aresengine/DefaultSysDao;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltmsdk/common/module/aresengine/DefaultSysDao;->yR:Ltmsdk/common/module/aresengine/DefaultSysDao;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    sget-object v0, Ltmsdk/common/module/aresengine/DefaultSysDao;->yR:Ltmsdk/common/module/aresengine/DefaultSysDao;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .parameter "phonenum"

    .prologue
    .line 82
    iget-object v0, p0, Ltmsdk/common/module/aresengine/DefaultSysDao;->yU:Ltmsdkobf/lp;

    invoke-virtual {v0, p1}, Ltmsdkobf/lp;->cN(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllCallLog()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/aresengine/CallLogEntity;>;"
    sget-object v11, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    monitor-enter v11

    .line 133
    :try_start_0
    iget-object v0, p0, Ltmsdk/common/module/aresengine/DefaultSysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 134
    .local v7, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v7}, Ltmsdk/common/module/aresengine/DefaultSysDao;->e(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    const-string v0, "number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 137
    .local v10, numberIndex:I
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, number:Ljava/lang/String;
    invoke-static {v9}, Ltmsdkobf/kg;->cl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0, v7}, Ltmsdk/common/module/aresengine/DefaultSysDao;->d(Landroid/database/Cursor;)Ltmsdk/common/module/aresengine/CallLogEntity;

    move-result-object v6

    .line 140
    .local v6, callLog:Ltmsdk/common/module/aresengine/CallLogEntity;
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v6           #callLog:Ltmsdk/common/module/aresengine/CallLogEntity;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 147
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #number:Ljava/lang/String;
    .end local v10           #numberIndex:I
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 146
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-direct {p0, v7}, Ltmsdk/common/module/aresengine/DefaultSysDao;->f(Landroid/database/Cursor;)V

    .line 147
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    return-object v8
.end method

.method public getAllContact()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    iget-object v1, p0, Ltmsdk/common/module/aresengine/DefaultSysDao;->yT:Ltmsdk/common/module/aresengine/DefaultSysDao$c;

    invoke-interface {v1}, Ltmsdk/common/module/aresengine/DefaultSysDao$c;->fu()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 90
    :goto_0
    return-object v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getLastCallLog()Ltmsdk/common/module/aresengine/CallLogEntity;
    .locals 9

    .prologue
    .line 153
    const/4 v6, 0x0

    .line 155
    .local v6, callog:Ltmsdk/common/module/aresengine/CallLogEntity;
    sget-object v8, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    monitor-enter v8

    .line 156
    const/4 v7, 0x0

    .line 158
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Ltmsdk/common/module/aresengine/DefaultSysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 159
    invoke-direct {p0, v7}, Ltmsdk/common/module/aresengine/DefaultSysDao;->e(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0, v7}, Ltmsdk/common/module/aresengine/DefaultSysDao;->d(Landroid/database/Cursor;)Ltmsdk/common/module/aresengine/CallLogEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 166
    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0, v7}, Ltmsdk/common/module/aresengine/DefaultSysDao;->f(Landroid/database/Cursor;)V

    .line 167
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    if-eqz v6, :cond_1

    .line 170
    iget-object v0, v6, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "null"

    :goto_1
    iput-object v0, v6, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    .line 173
    :cond_1
    return-object v6

    .line 167
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 170
    :cond_2
    iget-object v0, v6, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    goto :goto_1

    .line 162
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getLastInBoxMms(II)Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 12
    .parameter "time"
    .parameter "smsstate"

    .prologue
    .line 293
    new-instance v2, Ltmsdk/common/module/aresengine/SmsEntity;

    invoke-direct {v2}, Ltmsdk/common/module/aresengine/SmsEntity;-><init>()V

    .line 295
    .local v2, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    monitor-enter v7

    .line 296
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, where:Ljava/lang/String;
    sget-object v6, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v6, v2, v5}, Ltmsdk/common/module/aresengine/DefaultSysDao;->a(Landroid/net/Uri;Ltmsdk/common/module/aresengine/SmsEntity;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v2, Ltmsdk/common/module/aresengine/SmsEntity;->date:J

    sub-long v0, v8, v10

    .line 299
    .local v0, deltal:J
    if-ltz p1, :cond_0

    mul-int/lit16 v6, p1, 0x3e8

    int-to-long v8, v6

    cmp-long v6, v0, v8

    if-lez v6, :cond_0

    .line 300
    const/4 v2, 0x0

    .line 301
    monitor-exit v7

    move-object v3, v2

    .line 314
    .end local v0           #deltal:J
    .end local v2           #sms:Ltmsdk/common/module/aresengine/SmsEntity;
    .local v3, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    :goto_0
    return-object v3

    .line 303
    .end local v3           #sms:Ltmsdk/common/module/aresengine/SmsEntity;
    .restart local v0       #deltal:J
    .restart local v2       #sms:Ltmsdk/common/module/aresengine/SmsEntity;
    :cond_0
    sget-object v6, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    iget v8, v2, Ltmsdk/common/module/aresengine/SmsEntity;->id:I

    int-to-long v8, v8

    invoke-static {v6, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 305
    .local v4, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    invoke-direct {p0, v4, v2, v6}, Ltmsdk/common/module/aresengine/DefaultSysDao;->a(Landroid/net/Uri;Ltmsdk/common/module/aresengine/SmsEntity;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 306
    const/4 v2, 0x0

    .line 308
    :cond_1
    if-eqz v2, :cond_2

    .line 309
    const/4 v6, 0x1

    iput v6, v2, Ltmsdk/common/module/aresengine/SmsEntity;->type:I

    .line 312
    .end local v0           #deltal:J
    .end local v4           #uri:Landroid/net/Uri;
    :cond_2
    monitor-exit v7

    move-object v3, v2

    .line 314
    .end local v2           #sms:Ltmsdk/common/module/aresengine/SmsEntity;
    .restart local v3       #sms:Ltmsdk/common/module/aresengine/SmsEntity;
    goto :goto_0

    .line 312
    .end local v3           #sms:Ltmsdk/common/module/aresengine/SmsEntity;
    .end local v5           #where:Ljava/lang/String;
    .restart local v2       #sms:Ltmsdk/common/module/aresengine/SmsEntity;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public getLastInBoxSms(II)Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 12
    .parameter "time"
    .parameter "smsstate"

    .prologue
    .line 214
    const/4 v10, 0x0

    .line 215
    .local v10, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    sget-object v11, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    monitor-enter v11

    .line 217
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type=1 AND read="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Ltmsdk/common/module/aresengine/DefaultSysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 220
    .local v6, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v6}, Ltmsdk/common/module/aresengine/DefaultSysDao;->e(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0, v6}, Ltmsdk/common/module/aresengine/DefaultSysDao;->c(Landroid/database/Cursor;)Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v10

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, v10, Ltmsdk/common/module/aresengine/SmsEntity;->date:J

    sub-long v7, v0, v4

    .line 224
    .local v7, deltal:J
    if-ltz p1, :cond_0

    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    cmp-long v0, v7, v0

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_1

    .line 231
    .end local v7           #deltal:J
    :cond_0
    :goto_0
    invoke-direct {p0, v6}, Ltmsdk/common/module/aresengine/DefaultSysDao;->f(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_1
    :try_start_1
    monitor-exit v11

    .line 237
    return-object v10

    .line 227
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #deltal:J
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 232
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #deltal:J
    :catch_0
    move-exception v9

    .line 233
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 235
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getLastOutBoxMms(I)Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 1
    .parameter "time"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Ltmsdk/common/module/aresengine/DefaultSysDao;->getLastSentMms(I)Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v0

    return-object v0
.end method

.method public getLastOutBoxSms(I)Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 1
    .parameter "time"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Ltmsdk/common/module/aresengine/DefaultSysDao;->getLastSentSms(I)Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v0

    return-object v0
.end method

.method public getLastSentMms(I)Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 12
    .parameter "time"

    .prologue
    const-wide/16 v10, 0x0

    .line 248
    new-instance v2, Ltmsdk/common/module/aresengine/SmsEntity;

    invoke-direct {v2}, Ltmsdk/common/module/aresengine/SmsEntity;-><init>()V

    .line 249
    .local v2, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    monitor-enter v5

    .line 250
    :try_start_0
    sget-object v4, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-direct {p0, v4, v2, v6}, Ltmsdk/common/module/aresengine/DefaultSysDao;->a(Landroid/net/Uri;Ltmsdk/common/module/aresengine/SmsEntity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v2, Ltmsdk/common/module/aresengine/SmsEntity;->date:J

    sub-long v0, v6, v8

    .line 253
    .local v0, deltal:J
    cmp-long v4, v0, v10

    if-ltz v4, :cond_0

    mul-int/lit16 v4, p1, 0x3e8

    int-to-long v6, v4

    cmp-long v4, v0, v6

    if-gtz v4, :cond_3

    cmp-long v4, v0, v10

    if-lez v4, :cond_3

    .line 255
    :cond_0
    sget-object v4, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    iget v6, v2, Ltmsdk/common/module/aresengine/SmsEntity;->id:I

    int-to-long v6, v6

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 257
    .local v3, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4}, Ltmsdk/common/module/aresengine/DefaultSysDao;->a(Landroid/net/Uri;Ltmsdk/common/module/aresengine/SmsEntity;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 258
    const/4 v2, 0x0

    .line 260
    :cond_1
    if-eqz v2, :cond_2

    .line 261
    const/4 v4, 0x2

    iput v4, v2, Ltmsdk/common/module/aresengine/SmsEntity;->type:I

    .line 286
    .end local v0           #deltal:J
    .end local v3           #uri:Landroid/net/Uri;
    :cond_2
    :goto_0
    monitor-exit v5

    .line 288
    return-object v2

    .line 265
    .restart local v0       #deltal:J
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 286
    .end local v0           #deltal:J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getLastSentSms(I)Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 12
    .parameter "time"

    .prologue
    .line 184
    const/4 v10, 0x0

    .line 186
    .local v10, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    sget-object v11, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    monitor-enter v11

    .line 187
    const/4 v6, 0x0

    .line 189
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "type=2"

    .line 190
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Ltmsdk/common/module/aresengine/DefaultSysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 191
    invoke-direct {p0, v6}, Ltmsdk/common/module/aresengine/DefaultSysDao;->e(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0, v6}, Ltmsdk/common/module/aresengine/DefaultSysDao;->c(Landroid/database/Cursor;)Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v10

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, v10, Ltmsdk/common/module/aresengine/SmsEntity;->date:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long v7, v0, v4

    .line 196
    .local v7, deltal:J
    if-ltz p1, :cond_0

    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    cmp-long v0, v7, v0

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_1

    .line 205
    .end local v7           #deltal:J
    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0, v6}, Ltmsdk/common/module/aresengine/DefaultSysDao;->f(Landroid/database/Cursor;)V

    .line 207
    .end local v3           #where:Ljava/lang/String;
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    return-object v10

    .line 199
    .restart local v3       #where:Ljava/lang/String;
    .restart local v7       #deltal:J
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 202
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #deltal:J
    :catch_0
    move-exception v9

    .line 203
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 205
    :try_start_3
    invoke-direct {p0, v6}, Ltmsdk/common/module/aresengine/DefaultSysDao;->f(Landroid/database/Cursor;)V

    goto :goto_1

    .line 207
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 205
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-direct {p0, v6}, Ltmsdk/common/module/aresengine/DefaultSysDao;->f(Landroid/database/Cursor;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getMms(II)Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 5
    .parameter "pduId"
    .parameter "messagebox"

    .prologue
    .line 319
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 320
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 321
    sget-object v2, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 323
    :cond_0
    new-instance v0, Ltmsdk/common/module/aresengine/SmsEntity;

    invoke-direct {v0}, Ltmsdk/common/module/aresengine/SmsEntity;-><init>()V

    .line 324
    .local v0, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Ltmsdk/common/module/aresengine/DefaultSysDao;->a(Landroid/net/Uri;Ltmsdk/common/module/aresengine/SmsEntity;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 325
    const/4 v0, 0x0

    .line 327
    :cond_1
    return-object v0
.end method

.method public getSimContact()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 96
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "name"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v1, "traffic"

    aput-object v1, v2, v0

    .line 97
    .local v2, projection:[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v7, contacts:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/aresengine/ContactEntity;>;"
    sget-object v10, Ltmsdk/common/module/aresengine/DefaultSysDao;->yS:Landroid/net/Uri;

    monitor-enter v10

    .line 100
    const/4 v8, 0x0

    .line 102
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Ltmsdk/common/module/aresengine/DefaultSysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Ltmsdk/common/module/aresengine/DefaultSysDao;->yS:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 108
    if-eqz v8, :cond_1

    :try_start_1
    invoke-direct {p0, v8}, Ltmsdk/common/module/aresengine/DefaultSysDao;->e(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    new-instance v6, Ltmsdk/common/module/aresengine/ContactEntity;

    invoke-direct {v6}, Ltmsdk/common/module/aresengine/ContactEntity;-><init>()V

    .line 112
    .local v6, contact:Ltmsdk/common/module/aresengine/ContactEntity;
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Ltmsdk/common/module/aresengine/ContactEntity;->id:I

    .line 113
    const-string v0, "name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Ltmsdk/common/module/aresengine/ContactEntity;->name:Ljava/lang/String;

    .line 114
    const-string v0, "traffic"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Ltmsdk/common/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, v6, Ltmsdk/common/module/aresengine/ContactEntity;->isSimContact:Z

    .line 117
    iget-object v0, v6, Ltmsdk/common/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 123
    .end local v6           #contact:Ltmsdk/common/module/aresengine/ContactEntity;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 103
    :catch_0
    move-exception v9

    .line 104
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    monitor-exit v10

    .line 125
    .end local v9           #e:Ljava/lang/Exception;
    :goto_1
    return-object v7

    .line 122
    :cond_1
    invoke-direct {p0, v8}, Ltmsdk/common/module/aresengine/DefaultSysDao;->f(Landroid/database/Cursor;)V

    .line 123
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized insert(Ltmsdk/common/module/aresengine/SmsEntity;)Landroid/net/Uri;
    .locals 14
    .parameter "sms"

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x1

    .line 420
    monitor-enter p0

    const/4 v10, 0x0

    .line 421
    .local v10, uri:Landroid/net/Uri;
    :try_start_0
    iget v4, p1, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    if-eqz v4, :cond_0

    iget v4, p1, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 422
    :cond_0
    invoke-direct {p0, p1}, Ltmsdk/common/module/aresengine/DefaultSysDao;->d(Ltmsdk/common/module/aresengine/SmsEntity;)Landroid/content/ContentValues;

    move-result-object v11

    .line 423
    .local v11, values:Landroid/content/ContentValues;
    sget-object v6, Ltmsdkobf/ig;->qS:Ltmsdkobf/lm;

    .line 424
    .local v6, adatper:Ltmsdkobf/lm;
    iget-object v3, p1, Ltmsdk/common/module/aresengine/SmsEntity;->fromCard:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v6, :cond_1

    .line 426
    invoke-interface {v6}, Ltmsdkobf/lm;->gv()Ljava/lang/String;

    move-result-object v7

    .line 427
    .local v7, addfiled:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 428
    iget-object v3, p1, Ltmsdk/common/module/aresengine/SmsEntity;->fromCard:Ljava/lang/String;

    invoke-virtual {v11, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .end local v7           #addfiled:Ljava/lang/String;
    :cond_1
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 432
    :try_start_1
    iget-object v3, p0, Ltmsdk/common/module/aresengine/DefaultSysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 433
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    .end local v6           #adatper:Ltmsdkobf/lm;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v10

    .line 433
    .restart local v6       #adatper:Ltmsdkobf/lm;
    .restart local v11       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 420
    .end local v6           #adatper:Ltmsdkobf/lm;
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 434
    :cond_3
    :try_start_4
    iget v4, p1, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    if-ne v4, v13, :cond_2

    iget-object v4, p1, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_2

    .line 437
    :try_start_5
    invoke-virtual {p1}, Ltmsdk/common/module/aresengine/SmsEntity;->fx()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    .line 438
    .local v1, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v1, :cond_2

    .line 439
    iget-object v4, p0, Ltmsdk/common/module/aresengine/DefaultSysDao;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 440
    .local v0, p:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v12, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    monitor-enter v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 442
    :try_start_6
    iget v4, p1, Ltmsdk/common/module/aresengine/SmsEntity;->type:I

    if-ne v4, v13, :cond_4

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 443
    .local v2, boxUri:Landroid/net/Uri;
    :goto_1
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v4

    const/16 v5, 0x11

    if-ge v4, v5, :cond_6

    .line 444
    if-eqz v0, :cond_5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v10

    .line 451
    .end local v2           #boxUri:Landroid/net/Uri;
    :goto_2
    :try_start_7
    monitor-exit v12

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 453
    .end local v0           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v1           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :catch_0
    move-exception v9

    .line 454
    .local v9, e1:Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    .line 442
    .end local v9           #e1:Ljava/lang/Exception;
    .restart local v0       #p:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v1       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_4
    :try_start_a
    sget-object v2, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .restart local v2       #boxUri:Landroid/net/Uri;
    :cond_5
    move-object v10, v3

    .line 444
    goto :goto_2

    .line 446
    :cond_6
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v10

    goto :goto_2

    .line 448
    .end local v2           #boxUri:Landroid/net/Uri;
    :catch_1
    move-exception v8

    .line 449
    .local v8, e:Lcom/google/android/mms/MmsException;
    :try_start_b
    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_2
.end method

.method public remove(Ltmsdk/common/module/aresengine/CallLogEntity;)Z
    .locals 5
    .parameter "callLog"

    .prologue
    .line 476
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    monitor-enter v1

    .line 477
    :try_start_0
    iget-object v0, p0, Ltmsdk/common/module/aresengine/DefaultSysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Ltmsdk/common/module/aresengine/CallLogEntity;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ltmsdk/common/module/aresengine/SmsEntity;)Z
    .locals 5
    .parameter "sms"

    .prologue
    const/4 v1, 0x1

    .line 465
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 466
    .local v0, uri:Landroid/net/Uri;
    iget v2, p1, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    if-ne v2, v1, :cond_0

    .line 467
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 469
    :cond_0
    monitor-enter v0

    .line 470
    :try_start_0
    iget-object v2, p0, Ltmsdk/common/module/aresengine/DefaultSysDao;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Ltmsdk/common/module/aresengine/SmsEntity;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    monitor-exit v0

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 471
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supportThisPhone()Z
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    return v0
.end method
