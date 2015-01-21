.class public Lcom/android/mms/transaction/RetrieveTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "RetrieveTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final COLUMN_CONTENT_LOCATION:I = 0x0

.field static final COLUMN_LOCKED:I = 0x1

.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "RetrieveTransaction"

.field private static sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

.field private static sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;


# instance fields
.field private final mContentLocation:Ljava/lang/String;

.field private mExpiry:Z

.field private mLocked:Z

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "locked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/RetrieveTransaction;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "serviceId"
    .parameter "simId"
    .parameter "connectionSettings"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-direct {p0, p1, p2, p4}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mExpiry:Z

    .line 531
    iput p3, p0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    .line 533
    const-string v0, "content://"

    invoke-virtual {p5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    .line 535
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/android/mms/transaction/RetrieveTransaction;->getContentLocation(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    .line 536
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 546
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 549
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsFailedNotify;

    sput-object v0, Lcom/android/mms/transaction/RetrieveTransaction;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    .line 551
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsCancelDownload;

    sput-object v0, Lcom/android/mms/transaction/RetrieveTransaction;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    .line 553
    return-void

    .line 541
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initializing from X-Mms-Content-Location is abandoned!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "serviceId"
    .parameter "connectionSettings"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mExpiry:Z

    .line 113
    const-string v0, "content://"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    .line 115
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/android/mms/transaction/RetrieveTransaction;->getContentLocation(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 128
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsFailedNotify;

    sput-object v0, Lcom/android/mms/transaction/RetrieveTransaction;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    .line 130
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsCancelDownload;

    sput-object v0, Lcom/android/mms/transaction/RetrieveTransaction;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    .line 132
    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initializing from X-Mms-Content-Location is abandoned!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getContentLocation(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 139
    const-string v0, "Mms/Txn"

    const-string v1, "RetrieveTransaction: getContentLocation()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/RetrieveTransaction;->PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 142
    .local v7, cursor:Landroid/database/Cursor;
    iput-boolean v9, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mLocked:Z

    .line 144
    if-eqz v7, :cond_2

    .line 146
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_0

    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mLocked:Z

    .line 150
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 153
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 150
    return-object v0

    :cond_0
    move v0, v9

    .line 149
    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_2
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get X-Mms-Content-Location from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;)Z
    .locals 15
    .parameter "context"
    .parameter "rc"

    .prologue
    .line 362
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageId()[B

    move-result-object v14

    .line 364
    .local v14, rawMessageId:[B
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v12

    .line 365
    .local v12, rawContentType:[B
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageClass()[B

    move-result-object v13

    .line 367
    .local v13, rawMessageClass:[B
    if-eqz v14, :cond_1

    if-eqz v12, :cond_1

    if-eqz v13, :cond_1

    .line 368
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v14}, Ljava/lang/String;-><init>([B)V

    .line 371
    .local v11, messageId:Ljava/lang/String;
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v12}, Ljava/lang/String;-><init>([B)V

    .line 372
    .local v8, contentType:Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v13}, Ljava/lang/String;-><init>([B)V

    .line 373
    .local v10, messageClass:Ljava/lang/String;
    const-string v5, "(m_id = ? AND m_type = ? AND ct_t = ? AND m_cls = ?)"

    .line 379
    .local v5, selection:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND sim_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 386
    const/4 v1, 0x4

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v11, v6, v1

    const/4 v1, 0x1

    const/16 v2, 0x84

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v8, v6, v1

    const/4 v1, 0x3

    aput-object v10, v6, v1

    .line 390
    .local v6, selectionArgs:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v1

    const/4 v1, 0x1

    const-string v7, "sub"

    aput-object v7, v4, v1

    const/4 v1, 0x2

    const-string v7, "sub_cs"

    aput-object v7, v4, v1

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 395
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 397
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 400
    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lcom/android/mms/transaction/RetrieveTransaction;->isDuplicateMessageExtra(Landroid/database/Cursor;Lcom/google/android/mms/pdu/RetrieveConf;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 403
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 407
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v8           #contentType:Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #messageClass:Ljava/lang/String;
    .end local v11           #messageId:Ljava/lang/String;
    :goto_0
    return v1

    .line 403
    .restart local v5       #selection:Ljava/lang/String;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    .restart local v8       #contentType:Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v10       #messageClass:Ljava/lang/String;
    .restart local v11       #messageId:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 407
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v8           #contentType:Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #messageClass:Ljava/lang/String;
    .end local v11           #messageId:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isDuplicateMessageExtra(Landroid/database/Cursor;Lcom/google/android/mms/pdu/RetrieveConf;)Z
    .locals 10
    .parameter "cursor"
    .parameter "rc"

    .prologue
    const/4 v8, 0x1

    .line 412
    const/4 v2, 0x0

    .line 413
    .local v2, encodedSubjectReceived:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v3, 0x0

    .line 414
    .local v3, encodedSubjectStored:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v6, 0x0

    .line 415
    .local v6, subjectReceived:Ljava/lang/String;
    const/4 v7, 0x0

    .line 416
    .local v7, subjectStored:Ljava/lang/String;
    const/4 v4, 0x0

    .line 418
    .local v4, subject:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 419
    if-eqz v2, :cond_0

    .line 420
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    .line 423
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_6

    .line 424
    const-string v9, "sub"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 425
    .local v5, subjectIdx:I
    const-string v9, "sub_cs"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 426
    .local v1, charsetIdx:I
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 427
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 428
    .local v0, charset:I
    if-eqz v4, :cond_1

    .line 429
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v3           #encodedSubjectStored:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v3, v0, v9}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 432
    .restart local v3       #encodedSubjectStored:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1
    if-nez v3, :cond_3

    if-nez v2, :cond_3

    .line 447
    .end local v0           #charset:I
    .end local v1           #charsetIdx:I
    .end local v5           #subjectIdx:I
    :cond_2
    :goto_1
    return v8

    .line 435
    .restart local v0       #charset:I
    .restart local v1       #charsetIdx:I
    .restart local v5       #subjectIdx:I
    :cond_3
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 436
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v7

    .line 437
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 439
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_1

    .line 440
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 423
    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 447
    .end local v0           #charset:I
    .end local v1           #charsetIdx:I
    .end local v5           #subjectIdx:I
    :cond_6
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;)V
    .locals 9
    .parameter "rc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    const-string v6, "Mms/Txn"

    const-string v7, "RetrieveTransaction: sendAcknowledgeInd()"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getTransactionId()[B

    move-result-object v5

    .line 457
    .local v5, tranId:[B
    if-eqz v5, :cond_1

    .line 459
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    const/16 v6, 0x12

    invoke-direct {v0, v6, v5}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(I[B)V

    .line 464
    .local v0, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    const/4 v2, 0x0

    .line 467
    .local v2, lineNumber:Ljava/lang/String;
    iget v6, p0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->getLocalNumberGemini(I)Ljava/lang/String;

    move-result-object v2

    .line 472
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v6, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/GenericPdu;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 476
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDeliveryReportAllowed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 478
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 479
    .local v3, prefs:Landroid/content/SharedPreferences;
    const/4 v4, 0x1

    .line 481
    .local v4, reportAllowed:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 488
    const-string v6, "Mms/Txn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reportAllowed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    if-eqz v4, :cond_2

    const/16 v6, 0x80

    :goto_0
    :try_start_0
    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setReportAllowed(I)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    .end local v4           #reportAllowed:Z
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 501
    new-instance v6, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/android/mms/transaction/Transaction;->sendPdu([BLjava/lang/String;)[B

    .line 506
    .end local v0           #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    .end local v2           #lineNumber:Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 491
    .restart local v0       #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    .restart local v2       #lineNumber:Ljava/lang/String;
    .restart local v3       #prefs:Landroid/content/SharedPreferences;
    .restart local v4       #reportAllowed:Z
    :cond_2
    const/16 v6, 0x81

    goto :goto_0

    .line 492
    :catch_0
    move-exception v1

    .line 494
    .local v1, ihve:Lcom/google/android/mms/InvalidHeaderValueException;
    const-string v6, "Mms/Txn"

    const-string v7, "acknowledgeInd.setReportAllowed Failed !!"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 503
    .end local v1           #ihve:Lcom/google/android/mms/InvalidHeaderValueException;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    .end local v4           #reportAllowed:Z
    :cond_3
    new-instance v6, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/mms/transaction/Transaction;->sendPdu([B)[B

    goto :goto_2
.end method

.method private sendNotifyRespInd(I)V
    .locals 4
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    const-string v2, "Mms/Txn"

    const-string v3, "RetrieveTransaction: sendNotifyRespInd for expired."

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    .line 567
    .local v0, notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    new-instance v1, Lcom/google/android/mms/pdu/NotifyRespInd;

    const/16 v2, 0x12

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BI)V

    .line 573
    .local v1, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/transaction/Transaction;->sendPdu([BLjava/lang/String;)[B

    .line 578
    :goto_0
    return-void

    .line 576
    :cond_0
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/Transaction;->sendPdu([B)[B

    goto :goto_0
.end method

.method private static updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "contentLocation"
    .parameter "locked"

    .prologue
    const/4 v4, 0x0

    .line 512
    const-string v0, "Mms/Txn"

    const-string v1, "RetrieveTransaction: updateContentLocation()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 515
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "ct_l"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v0, "locked"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 517
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 519
    return-void
.end method


# virtual methods
.method public getRtrTrxnUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x1

    return v0
.end method

.method public process()V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "RetrieveTransaction"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 167
    return-void
.end method

.method public run()V
    .locals 24

    .prologue
    .line 172
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v14

    check-cast v14, Lcom/google/android/mms/pdu/NotificationInd;

    .line 173
    .local v14, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v22, 0x3e8

    div-long v8, v8, v22

    cmp-long v4, v4, v8

    if-gez v4, :cond_0

    .line 175
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mExpiry:Z

    .line 177
    const-string v4, "Mms/Txn"

    const-string v5, "The message is expired!"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSendExpiredResIfNotificationExpired()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    const/16 v4, 0x80

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/transaction/RetrieveTransaction;->sendNotifyRespInd(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/16 v8, 0x81

    invoke-virtual {v4, v5, v8}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 200
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mExpiry:Z

    if-eqz v4, :cond_5

    .line 201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 353
    const-string v4, "RetrieveTransaction"

    const-string v5, "Retrieval failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .end local v14           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 357
    return-void

    .line 184
    .restart local v14       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :catch_0
    move-exception v11

    .line 187
    .local v11, e:Ljava/io/IOException;
    :try_start_3
    const-string v4, "Mms/Txn"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 332
    .end local v11           #e:Ljava/io/IOException;
    .end local v14           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :catch_1
    move-exception v18

    .line 333
    .local v18, t:Ljava/lang/Throwable;
    :try_start_4
    const-string v4, "RetrieveTransaction"

    invoke-static/range {v18 .. v18}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget-object v4, Lcom/android/mms/transaction/RetrieveTransaction;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface {v4}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 337
    sget-object v4, Lcom/android/mms/transaction/RetrieveTransaction;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-interface {v4, v5}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->getStateExt(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 338
    sget-object v4, Lcom/android/mms/transaction/RetrieveTransaction;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    invoke-interface {v4}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->getFailedNotificationEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 339
    sget-object v4, Lcom/android/mms/transaction/RetrieveTransaction;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    const/4 v5, 0x5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->popupToast(ILjava/lang/String;)V

    .line 341
    :cond_2
    sget-object v4, Lcom/android/mms/transaction/RetrieveTransaction;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/4 v8, 0x3

    invoke-interface {v4, v5, v8}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->markStateExt(Landroid/net/Uri;I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 345
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/16 v8, 0x80

    invoke-virtual {v4, v5, v8}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 350
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 353
    const-string v4, "RetrieveTransaction"

    const-string v5, "Retrieval failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 188
    .end local v18           #t:Ljava/lang/Throwable;
    .restart local v14       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :catch_2
    move-exception v11

    .line 189
    .local v11, e:Lcom/google/android/mms/MmsException;
    :try_start_5
    const-string v4, "Mms/Txn"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 350
    .end local v11           #e:Lcom/google/android/mms/MmsException;
    .end local v14           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    const/4 v8, 0x1

    if-eq v5, v8, :cond_4

    .line 351
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v8}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 353
    const-string v5, "RetrieveTransaction"

    const-string v8, "Retrieval failed."

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 350
    throw v4

    .line 208
    .restart local v14       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_5
    :try_start_6
    sget-object v4, Lcom/android/mms/transaction/RetrieveTransaction;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface {v4}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/transaction/Transaction;->mIsCancelling:Z

    if-eqz v4, :cond_7

    .line 209
    const-string v4, "Mms/Txn"

    const-string v5, "***Canceling download in processing!(RetrieveTransaction)"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 213
    sget-object v4, Lcom/android/mms/transaction/RetrieveTransaction;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    invoke-interface {v4}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->getFailedNotificationEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 214
    sget-object v4, Lcom/android/mms/transaction/RetrieveTransaction;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    const/4 v5, 0x5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->popupToast(ILjava/lang/String;)V

    .line 216
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/transaction/Transaction;->mIsCancelling:Z

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/RetrieveTransaction;->getRtrTrxnUri()Landroid/net/Uri;

    move-result-object v21

    .line 218
    .local v21, trxnUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/mms/transaction/RetrieveTransaction;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    sget-object v5, Lcom/android/mms/transaction/RetrieveTransaction;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    const/4 v5, 0x3

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v5}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->markStateExt(Landroid/net/Uri;I)V

    .line 219
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    const/16 v5, 0x80

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v5}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 353
    const-string v4, "RetrieveTransaction"

    const-string v5, "Retrieval failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 226
    .end local v21           #trxnUri:Landroid/net/Uri;
    :cond_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/Transaction;->getPdu(Ljava/lang/String;)[B

    move-result-object v16

    .line 229
    .local v16, resp:[B
    new-instance v4, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    check-cast v3, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 230
    .local v3, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    if-nez v3, :cond_8

    .line 232
    const-string v4, "Mms/Txn"

    const-string v5, "RetrieveTransaction: run(): Invalid M-Retrieve.conf PDU!!!"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v5, "Invalid M-Retrieve.conf PDU."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 236
    :cond_8
    const/4 v6, 0x0

    .line 237
    .local v6, msgUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/mms/transaction/RetrieveTransaction;->isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 239
    const-string v4, "Mms/Txn"

    const-string v5, "RetrieveTransaction: run, DuplicateMessage"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 292
    :goto_2
    if-eqz v6, :cond_e

    .line 294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    .line 295
    .local v15, notifId:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    .line 296
    .local v13, msgId:Ljava/lang/String;
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/4 v9, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-static {v4, v5, v8, v9, v0}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 302
    :cond_9
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 312
    .end local v13           #msgId:Ljava/lang/String;
    .end local v15           #notifId:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v19

    .line 315
    .local v19, threadId:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-wide/from16 v0, v19

    invoke-static {v4, v0, v1, v5}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 324
    .end local v19           #threadId:J
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/transaction/RetrieveTransaction;->sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;)V

    .line 326
    if-eqz v6, :cond_b

    invoke-static {}, Lcom/android/mms/ui/NotificationPreferenceActivity;->isPopupNotificationEnable()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 327
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/mms/ext/IMmsDialogNotify;

    .line 329
    .local v10, dialogPlugin:Lcom/mediatek/mms/ext/IMmsDialogNotify;
    invoke-interface {v10, v6}, Lcom/mediatek/mms/ext/IMmsDialogNotify;->notifyNewSmsDialog(Landroid/net/Uri;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 350
    .end local v10           #dialogPlugin:Lcom/mediatek/mms/ext/IMmsDialogNotify;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 353
    const-string v4, "RetrieveTransaction"

    const-string v5, "Retrieval failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 246
    :cond_c
    :try_start_8
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    .line 247
    .local v17, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v5, "Mms/Txn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RetrieveTransaction: run, Store M-Retrieve.conf into Inbox. \n.subject is: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v17, :cond_d

    const-string v4, ""

    :goto_4
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 251
    .local v2, persister:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/ui/MmsPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v6

    .end local v6           #msgUri:Landroid/net/Uri;
    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    .line 255
    .restart local v6       #msgUri:Landroid/net/Uri;
    move-object/from16 v0, v16

    array-length v12, v0

    .line 256
    .local v12, messageSize:I
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 257
    .local v7, values:Landroid/content/ContentValues;
    const-string v4, "m_size"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    const-string v4, "sim_id"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mLocked:Z

    invoke-static {v4, v6, v5, v8}, Lcom/android/mms/transaction/RetrieveTransaction;->updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 247
    .end local v2           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v12           #messageSize:I
    :cond_d
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 306
    .end local v17           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/4 v9, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-static {v4, v5, v8, v9, v0}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_3
.end method
