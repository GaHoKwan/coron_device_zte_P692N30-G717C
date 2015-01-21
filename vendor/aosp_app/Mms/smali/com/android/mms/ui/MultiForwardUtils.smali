.class public Lcom/android/mms/ui/MultiForwardUtils;
.super Ljava/lang/Object;
.source "MultiForwardUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MultiForwardUtils"

.field private static final sMessageStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mWorkingMessage:Lcom/android/mms/data/WorkingMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 287
    new-instance v0, Lcom/android/mms/ui/MultiForwardUtils$1;

    invoke-direct {v0}, Lcom/android/mms/ui/MultiForwardUtils$1;-><init>()V

    sput-object v0, Lcom/android/mms/ui/MultiForwardUtils;->sMessageStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object v0, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 111
    iput-object v0, p0, Lcom/android/mms/ui/MultiForwardUtils;->mContext:Landroid/content/Context;

    .line 112
    iput-object v0, p0, Lcom/android/mms/ui/MultiForwardUtils;->mActivity:Landroid/app/Activity;

    .line 115
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MultiForwardUtils;->mContext:Landroid/content/Context;

    .line 116
    iput-object p1, p0, Lcom/android/mms/ui/MultiForwardUtils;->mActivity:Landroid/app/Activity;

    .line 117
    return-void
.end method

.method public static getContactSIM(Landroid/content/Context;Ljava/lang/String;)I
    .locals 11
    .parameter "context"
    .parameter "num"

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 84
    const/4 v9, -0x1

    .line 85
    .local v9, simId:I
    move-object v8, p1

    .line 86
    .local v8, number:Ljava/lang/String;
    invoke-static {v8, p0}, Lcom/android/mms/ui/MessageUtils;->formatNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, formatNumber:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "sim_id"

    aput-object v3, v2, v5

    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND (data1=? OR data1=?) AND (sim_id!= -1)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v8, v4, v5

    aput-object v7, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 95
    .local v6, associateSIMCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 96
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 98
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 103
    :goto_0
    if-eqz v6, :cond_0

    .line 104
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_0
    return v9

    .line 100
    :cond_1
    const/4 v9, -0x1

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 104
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_2
    throw v0
.end method

.method private getVCardFileName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 479
    const-string v0, ".vcf"

    .line 481
    .local v0, fileExtension:Ljava/lang/String;
    const-string v2, "yyyyMMdd_hhmmss"

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".vcf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private resizeImage(Landroid/app/Activity;Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Z)Lcom/android/mms/data/WorkingMessage;
    .locals 13
    .parameter "activity"
    .parameter "workingMessage"
    .parameter "imageUri"
    .parameter "append"

    .prologue
    .line 490
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 491
    :cond_0
    const/4 p2, 0x0

    .line 536
    .end local p2
    :goto_0
    return-object p2

    .line 496
    .restart local p2
    :cond_1
    :try_start_0
    new-instance v3, Lcom/android/mms/ui/UriImage;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-direct {v3, v9, v0}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 497
    .local v3, image:Lcom/android/mms/ui/UriImage;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v11}, Lcom/android/mms/MmsConfig;->getUserSetMmsSizeLimit(Z)I

    move-result v11

    add-int/lit16 v11, v11, -0x1388

    invoke-virtual {v3, v9, v10, v11}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 505
    .local v6, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v7

    .line 507
    .local v7, persister:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {p2}, Lcom/android/mms/data/WorkingMessage;->getMessageUri()Landroid/net/Uri;

    move-result-object v4

    .line 508
    .local v4, messageUri:Landroid/net/Uri;
    if-nez v4, :cond_2

    .line 510
    const/4 v9, 0x1

    :try_start_1
    invoke-virtual {p2, v9}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 516
    :cond_2
    if-nez v4, :cond_3

    .line 517
    const/4 v8, -0x1

    .line 518
    .local v8, result:I
    const/4 p2, 0x0

    goto :goto_0

    .line 500
    .end local v3           #image:Lcom/android/mms/ui/UriImage;
    .end local v4           #messageUri:Landroid/net/Uri;
    .end local v6           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v7           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v8           #result:I
    :catch_0
    move-exception v2

    .line 501
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v9, "Mms/MultiForwardUtils"

    const-string v10, "Unexpected IllegalArgumentException."

    invoke-static {v9, v10, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 502
    const/4 p2, 0x0

    goto :goto_0

    .line 511
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #image:Lcom/android/mms/ui/UriImage;
    .restart local v4       #messageUri:Landroid/net/Uri;
    .restart local v6       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v7       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_1
    move-exception v2

    .line 512
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v9, "Mms/MultiForwardUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", go to ConversationList!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const/4 p2, 0x0

    goto :goto_0

    .line 523
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :cond_3
    :try_start_2
    sget-object v10, Lcom/android/mms/data/WorkingMessage;->sDraftMmsLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 524
    :try_start_3
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v11

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v11, v12, v9}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v1

    .line 525
    .local v1, dataUri:Landroid/net/Uri;
    sget v5, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 526
    .local v5, mode:I
    const/4 v9, 0x0

    sput v9, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 527
    const/4 v9, 0x1

    move/from16 v0, p4

    invoke-virtual {p2, v9, v1, v0}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v8

    .line 528
    .restart local v8       #result:I
    if-nez v8, :cond_4

    .line 529
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 531
    :cond_4
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 532
    :try_start_4
    sput v5, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I
    :try_end_4
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 534
    .end local v1           #dataUri:Landroid/net/Uri;
    .end local v5           #mode:I
    .end local v8           #result:I
    :catch_2
    move-exception v2

    .line 535
    .local v2, e:Lcom/google/android/mms/MmsException;
    const/4 v8, -0x1

    .line 536
    .restart local v8       #result:I
    const/4 p2, 0x0

    goto/16 :goto_0

    .line 531
    .end local v2           #e:Lcom/google/android/mms/MmsException;
    .end local v8           #result:I
    :catchall_0
    move-exception v9

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v9
    :try_end_6
    .catch Lcom/google/android/mms/MmsException; {:try_start_6 .. :try_end_6} :catch_2
.end method


# virtual methods
.method public addAudio(Landroid/app/Activity;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Z)Lcom/android/mms/data/WorkingMessage;
    .locals 5
    .parameter "activity"
    .parameter "conversation"
    .parameter "audioUri"
    .parameter "append"

    .prologue
    const/4 v2, 0x0

    .line 362
    sget-object v3, Lcom/android/mms/ui/MultiForwardUtils;->sMessageStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-static {p1, v3}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/app/Activity;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 363
    iget-object v3, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, p2}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 364
    if-eqz p3, :cond_0

    .line 365
    const/4 v1, 0x0

    .line 367
    .local v1, result:I
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->checkSizeBeforeAppend()Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    iget-object v3, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p3, p4}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v1

    .line 383
    if-nez v1, :cond_0

    .line 384
    iget-object v2, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 385
    iget-object v2, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 390
    .end local v1           #result:I
    :cond_0
    :goto_0
    return-object v2

    .line 368
    .restart local v1       #result:I
    :catch_0
    move-exception v0

    .line 369
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v1, -0x2

    .line 371
    goto :goto_0
.end method

.method public addImage(Landroid/app/Activity;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Ljava/lang/String;Z)Lcom/android/mms/data/WorkingMessage;
    .locals 5
    .parameter "activity"
    .parameter "conversation"
    .parameter "imageUri"
    .parameter "mimeType"
    .parameter "append"

    .prologue
    const/4 v2, 0x0

    .line 213
    sget-object v3, Lcom/android/mms/ui/MultiForwardUtils;->sMessageStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-static {p1, v3}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/app/Activity;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 214
    iget-object v3, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, p2}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, result:I
    if-eqz p3, :cond_0

    .line 218
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->checkSizeBeforeAppend()Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    iget-object v3, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p3, p5, p4}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;ZLjava/lang/String;)I

    move-result v1

    .line 236
    if-nez v1, :cond_0

    .line 237
    iget-object v2, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 238
    iget-object v2, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 243
    :cond_0
    :goto_0
    return-object v2

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v1, -0x2

    .line 221
    goto :goto_0
.end method

.method public addVCalendar(Landroid/app/Activity;Lcom/android/mms/data/Conversation;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;
    .locals 6
    .parameter "activity"
    .parameter "conversation"
    .parameter "vCalendarUri"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 452
    sget-object v3, Lcom/android/mms/ui/MultiForwardUtils;->sMessageStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-static {p1, v3}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/app/Activity;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 453
    iget-object v3, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, p2}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 454
    if-nez p3, :cond_1

    .line 455
    const-string v3, "Mms/MultiForwardUtils"

    const-string v4, "attachVCalendar, oops uri is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    :goto_0
    return-object v2

    .line 458
    :cond_1
    const/4 v1, 0x0

    .line 460
    .local v1, result:I
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->checkSizeBeforeAppend()Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    iget-object v3, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, p3, v5}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v1

    .line 466
    if-nez v1, :cond_0

    .line 467
    iget-object v2, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v5}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 468
    iget-object v2, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v1, -0x2

    .line 463
    goto :goto_0
.end method

.method public addVCard(Landroid/app/Activity;Lcom/android/mms/data/Conversation;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;
    .locals 16
    .parameter "activity"
    .parameter "conversation"
    .parameter "vCardUri"

    .prologue
    .line 395
    sget-object v12, Lcom/android/mms/ui/MultiForwardUtils;->sMessageStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/app/Activity;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 396
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 397
    if-nez p3, :cond_0

    .line 398
    const/4 v12, 0x0

    .line 446
    :goto_0
    return-object v12

    .line 400
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MultiForwardUtils;->getVCardFileName()Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, filename:Ljava/lang/String;
    const/4 v6, 0x0

    .line 403
    .local v6, in:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 405
    .local v7, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 406
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12}, Landroid/content/ContextWrapper;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 407
    const/16 v12, 0x1fa0

    new-array v3, v12, [B

    .line 408
    .local v3, buf:[B
    const/4 v10, 0x0

    .line 409
    .local v10, size:I
    :goto_1
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v12, -0x1

    if-eq v10, v12, :cond_3

    .line 410
    const/4 v12, 0x0

    invoke-virtual {v7, v3, v12, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 413
    .end local v3           #buf:[B
    .end local v10           #size:I
    :catchall_0
    move-exception v12

    if-eqz v6, :cond_1

    .line 414
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 416
    :cond_1
    if-eqz v7, :cond_2

    .line 417
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 413
    :cond_2
    throw v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 420
    :catch_0
    move-exception v4

    .line 421
    .local v4, e:Ljava/lang/Exception;
    const-string v12, "Mms/MultiForwardUtils"

    const-string v13, "exception attachVCardByUri "

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    const/4 v12, 0x0

    goto :goto_0

    .line 413
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #buf:[B
    .restart local v10       #size:I
    :cond_3
    if-eqz v6, :cond_4

    .line 414
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 416
    :cond_4
    if-eqz v7, :cond_5

    .line 417
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 424
    :cond_5
    const/4 v11, 0x6

    .line 425
    .local v11, type:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContextWrapper;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 426
    .local v1, attachFile:Ljava/io/File;
    const-string v12, "Mms/MultiForwardUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setFileAttachment(): attachFile.exists()?="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", attachFile.length()="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p1 .. p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 429
    .local v8, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_7

    .line 430
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 431
    .local v2, attachUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 433
    .local v9, result:I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v12}, Lcom/android/mms/data/WorkingMessage;->checkSizeBeforeAppend()Z
    :try_end_3
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 438
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v13, 0x0

    invoke-virtual {v12, v11, v2, v13}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v9

    .line 439
    if-nez v9, :cond_6

    .line 440
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 441
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    goto/16 :goto_0

    .line 434
    :catch_1
    move-exception v4

    .line 435
    .local v4, e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v9, -0x2

    .line 436
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 443
    .end local v4           #e:Lcom/android/mms/ExceedMessageSizeException;
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 446
    .end local v2           #attachUri:Landroid/net/Uri;
    .end local v9           #result:I
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public addVideo(Landroid/app/Activity;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Z)Lcom/android/mms/data/WorkingMessage;
    .locals 5
    .parameter "activity"
    .parameter "conversation"
    .parameter "videoUri"
    .parameter "append"

    .prologue
    const/4 v2, 0x0

    .line 328
    sget-object v3, Lcom/android/mms/ui/MultiForwardUtils;->sMessageStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-static {p1, v3}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/app/Activity;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 329
    iget-object v3, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, p2}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 330
    if-eqz p3, :cond_0

    .line 331
    const/4 v1, 0x0

    .line 333
    .local v1, result:I
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->checkSizeBeforeAppend()Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    iget-object v3, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p3, p4}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v1

    .line 350
    if-nez v1, :cond_0

    .line 351
    iget-object v2, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 352
    iget-object v2, p0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 357
    .end local v1           #result:I
    :cond_0
    :goto_0
    return-object v2

    .line 334
    .restart local v1       #result:I
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v1, -0x2

    .line 336
    goto :goto_0
.end method

.method public convertIpMsgToSmsOrMms(Lcom/mediatek/mms/ipmessage/message/IpMessage;Landroid/content/Context;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;
    .locals 44
    .parameter "ipMessage"
    .parameter "context"
    .parameter "conv"

    .prologue
    .line 121
    const/16 v26, 0x0

    .line 122
    .local v26, messageListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-nez v3, :cond_0

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardUtils;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v26

    invoke-static {v3, v0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/app/Activity;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 126
    :cond_0
    if-nez p1, :cond_2

    .line 127
    const/16 v20, 0x0

    .line 206
    :cond_1
    :goto_0
    return-object v20

    .line 129
    :cond_2
    const-string v3, "Mms/MultiForwardUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "multiforward. convertIpMsgToSmsOrMms; ipMessageType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 205
    :pswitch_0
    const-string v3, "Mms/MultiForwardUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertIpMessageToMmsOrSms(): Error IP message type. type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/16 v20, 0x0

    goto :goto_0

    :pswitch_1
    move-object/from16 v31, p1

    .line 132
    check-cast v31, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;

    .line 133
    .local v31, textMessage:Lcom/mediatek/mms/ipmessage/message/IpTextMessage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MultiForwardUtils;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v20, v0

    goto :goto_0

    .end local v31           #textMessage:Lcom/mediatek/mms/ipmessage/message/IpTextMessage;
    :pswitch_2
    move-object/from16 v19, p1

    .line 137
    check-cast v19, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;

    .line 138
    .local v19, imageMessage:Lcom/mediatek/mms/ipmessage/message/IpImageMessage;
    new-instance v18, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v18, imageFile:Ljava/io/File;
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 140
    .local v6, imageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MultiForwardUtils;->mActivity:Landroid/app/Activity;

    const-string v7, "image/jpg"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/ui/MultiForwardUtils;->addImage(Landroid/app/Activity;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Ljava/lang/String;Z)Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    .line 141
    .local v20, imgWorkingMsg:Lcom/android/mms/data/WorkingMessage;
    if-eqz v20, :cond_1

    .line 142
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->getCaption()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v6           #imageUri:Landroid/net/Uri;
    .end local v18           #imageFile:Ljava/io/File;
    .end local v19           #imageMessage:Lcom/mediatek/mms/ipmessage/message/IpImageMessage;
    .end local v20           #imgWorkingMsg:Lcom/android/mms/data/WorkingMessage;
    :pswitch_3
    move-object/from16 v41, p1

    .line 147
    check-cast v41, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;

    .line 148
    .local v41, voiceMessage:Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;
    new-instance v40, Ljava/io/File;

    invoke-virtual/range {v41 .. v41}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v40, voiceFile:Ljava/io/File;
    invoke-static/range {v40 .. v40}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v42

    .line 150
    .local v42, voiceUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardUtils;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v42

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/mms/ui/MultiForwardUtils;->addAudio(Landroid/app/Activity;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Z)Lcom/android/mms/data/WorkingMessage;

    move-result-object v43

    .line 151
    .local v43, voiceWM:Lcom/android/mms/data/WorkingMessage;
    if-eqz v43, :cond_3

    .line 152
    invoke-virtual/range {v41 .. v41}, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;->getCaption()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    move-object/from16 v20, v43

    .line 154
    goto/16 :goto_0

    .end local v40           #voiceFile:Ljava/io/File;
    .end local v41           #voiceMessage:Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;
    .end local v42           #voiceUri:Landroid/net/Uri;
    .end local v43           #voiceWM:Lcom/android/mms/data/WorkingMessage;
    :pswitch_4
    move-object/from16 v33, p1

    .line 157
    check-cast v33, Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;

    .line 158
    .local v33, vCardMessage:Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;
    new-instance v32, Ljava/io/File;

    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v32, vCardFile:Ljava/io/File;
    invoke-static/range {v32 .. v32}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v34

    .line 160
    .local v34, vCardUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardUtils;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v34

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/mms/ui/MultiForwardUtils;->addVCard(Landroid/app/Activity;Lcom/android/mms/data/Conversation;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v35

    .local v35, vCardWM:Lcom/android/mms/data/WorkingMessage;
    move-object/from16 v20, v35

    .line 161
    goto/16 :goto_0

    .line 164
    .end local v32           #vCardFile:Ljava/io/File;
    .end local v33           #vCardMessage:Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;
    .end local v34           #vCardUri:Landroid/net/Uri;
    .end local v35           #vCardWM:Lcom/android/mms/data/WorkingMessage;
    :pswitch_5
    const/16 v21, 0x0

    .local v21, lmWorkingMsg:Lcom/android/mms/data/WorkingMessage;
    move-object/from16 v24, p1

    .line 165
    check-cast v24, Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;

    .line 166
    .local v24, locationMessage:Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v23

    .line 167
    .local v23, locationImgPath:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 168
    new-instance v22, Ljava/io/File;

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v22, locationFile:Ljava/io/File;
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 170
    .local v10, locationUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/MultiForwardUtils;->mActivity:Landroid/app/Activity;

    const-string v11, "image/jpg"

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, p3

    invoke-virtual/range {v7 .. v12}, Lcom/android/mms/ui/MultiForwardUtils;->addImage(Landroid/app/Activity;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Ljava/lang/String;Z)Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    .line 181
    .end local v10           #locationUri:Landroid/net/Uri;
    .end local v22           #locationFile:Ljava/io/File;
    :cond_4
    :goto_1
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;->getAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v20, v21

    .line 182
    goto/16 :goto_0

    .line 172
    :cond_5
    const-string v30, "default_map_small.png"

    .line 173
    .local v30, tempFileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020030

    move-object/from16 v0, v30

    invoke-static {v3, v0, v4}, Lcom/android/mms/ui/MessageUtils;->createFileForResource(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v17

    .line 175
    .local v17, convertResult:Z
    if-eqz v17, :cond_4

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardUtils;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v25

    .line 177
    .local v25, locationTempFile:Ljava/io/File;
    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 178
    .restart local v10       #locationUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/MultiForwardUtils;->mActivity:Landroid/app/Activity;

    const-string v11, "image/jpg"

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, p3

    invoke-virtual/range {v7 .. v12}, Lcom/android/mms/ui/MultiForwardUtils;->addImage(Landroid/app/Activity;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Ljava/lang/String;Z)Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    goto :goto_1

    .end local v10           #locationUri:Landroid/net/Uri;
    .end local v17           #convertResult:Z
    .end local v21           #lmWorkingMsg:Lcom/android/mms/data/WorkingMessage;
    .end local v23           #locationImgPath:Ljava/lang/String;
    .end local v24           #locationMessage:Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;
    .end local v25           #locationTempFile:Ljava/io/File;
    .end local v30           #tempFileName:Ljava/lang/String;
    :pswitch_6
    move-object/from16 v28, p1

    .line 185
    check-cast v28, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;

    .line 186
    .local v28, sketchMessage:Lcom/mediatek/mms/ipmessage/message/IpImageMessage;
    new-instance v27, Ljava/io/File;

    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v27, sketchFile:Ljava/io/File;
    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    .line 188
    .local v14, sketchUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MultiForwardUtils;->mActivity:Landroid/app/Activity;

    const-string v15, "image/jpg"

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v13, p3

    invoke-virtual/range {v11 .. v16}, Lcom/android/mms/ui/MultiForwardUtils;->addImage(Landroid/app/Activity;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Ljava/lang/String;Z)Lcom/android/mms/data/WorkingMessage;

    move-result-object v29

    .line 189
    .local v29, sketchWorkingMsg:Lcom/android/mms/data/WorkingMessage;
    if-eqz v29, :cond_6

    .line 190
    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->getCaption()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    move-object/from16 v20, v29

    .line 192
    goto/16 :goto_0

    .end local v14           #sketchUri:Landroid/net/Uri;
    .end local v27           #sketchFile:Ljava/io/File;
    .end local v28           #sketchMessage:Lcom/mediatek/mms/ipmessage/message/IpImageMessage;
    .end local v29           #sketchWorkingMsg:Lcom/android/mms/data/WorkingMessage;
    :pswitch_7
    move-object/from16 v37, p1

    .line 195
    check-cast v37, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;

    .line 196
    .local v37, videoMessage:Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;
    new-instance v36, Ljava/io/File;

    invoke-virtual/range {v37 .. v37}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v36, videoFile:Ljava/io/File;
    invoke-static/range {v36 .. v36}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v38

    .line 198
    .local v38, videoUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardUtils;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v38

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/mms/ui/MultiForwardUtils;->addVideo(Landroid/app/Activity;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Z)Lcom/android/mms/data/WorkingMessage;

    move-result-object v39

    .line 199
    .local v39, videoWorkingMsg:Lcom/android/mms/data/WorkingMessage;
    if-eqz v39, :cond_7

    .line 200
    invoke-virtual/range {v37 .. v37}, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;->getCaption()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    move-object/from16 v20, v39

    .line 202
    goto/16 :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
