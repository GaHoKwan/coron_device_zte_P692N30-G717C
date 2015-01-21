.class public Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;
.super Ljava/lang/Object;
.source "MessageSmsInterface.java"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy/MM/dd HH:mm:ss"

.field static final LOG_TAG:Ljava/lang/String; = "MessageSms"

.field private static final SIM_ID:Ljava/lang/String; = "sim_id"

.field private static final SUB_ID:Ljava/lang/String; = "sub_id"

.field private static addressListForThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static bCheckedUpdateThread:Z

.field private static bDoubleCard:Z

.field private static bHasSimId:Z

.field private static bNeedUpdateThreadOurself:Z

.field private static mValues:Landroid/content/ContentValues;


# instance fields
.field private contactNumber:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private iDArrayCounts:I

.field public messageBody:Ljava/lang/String;

.field public messageDate:Ljava/lang/String;

.field private messageIDArrays:[Ljava/lang/String;

.field public messageLock:I

.field public messagePhoneNumber:Ljava/lang/String;

.field public messageRead:I

.field public messageStatus:I

.field public messageSubID:Ljava/lang/String;

.field public messageSubject:Ljava/lang/String;

.field public messageType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->mValues:Landroid/content/ContentValues;

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->addressListForThreads:Ljava/util/List;

    .line 83
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bNeedUpdateThreadOurself:Z

    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bCheckedUpdateThread:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "cx"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageStatus:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->contactNumber:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    .line 88
    const-string v0, "sub_id"

    invoke-direct {p0, v0}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->has_sub_id_Column(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bDoubleCard:Z

    .line 89
    const-string v0, "sim_id"

    invoke-direct {p0, v0}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->has_sub_id_Column(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bHasSimId:Z

    .line 90
    return-void
.end method

.method private addAddress2List(Ljava/lang/String;)V
    .locals 3
    .parameter "addr"

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->checkNeedUpdateThreads()V

    .line 445
    sget-boolean v1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bNeedUpdateThreadOurself:Z

    if-nez v1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    if-eqz p1, :cond_0

    .line 453
    sget-object v1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->addressListForThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 459
    sget-object v1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->addressListForThreads:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    sget-object v1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->addressListForThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->updateThreadsByList()V

    goto :goto_0

    .line 453
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 454
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method private checkNeedUpdateThreads()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 331
    sget-boolean v5, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bCheckedUpdateThread:Z

    if-eqz v5, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    sput-boolean v7, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bCheckedUpdateThread:Z

    .line 335
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 336
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "address"

    const-string v6, "20101110118764"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v5, "read"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v5, "type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    const-string v5, "body"

    const-string v6, "b"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 341
    .local v1, date:J
    const-string v5, "date"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 342
    iget-object v5, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://sms/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 343
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 348
    :try_start_0
    invoke-direct {p0, v1, v2, v4}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->checkThreadsDate(JLandroid/net/Uri;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SMS: bNeedUpdateThreadOurself: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v7, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bNeedUpdateThreadOurself:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    iget-object v5, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 353
    :catch_0
    move-exception v3

    .line 354
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SMS: bNeedUpdateThreadOurself: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v7, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bNeedUpdateThreadOurself:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    iget-object v5, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 356
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 357
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SMS: bNeedUpdateThreadOurself: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v8, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bNeedUpdateThreadOurself:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v4, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 359
    throw v5
.end method

.method private checkThreadsDate(JLandroid/net/Uri;)Z
    .locals 12
    .parameter "date"
    .parameter "uri"

    .prologue
    .line 363
    const/4 v9, 0x0

    .line 364
    .local v9, smsCursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 366
    .local v11, threadsCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 367
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 368
    :cond_0
    sget-boolean v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bNeedUpdateThreadOurself:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    invoke-direct {p0, v9}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 387
    invoke-direct {p0, v11}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 390
    :goto_0
    return v0

    .line 370
    :cond_1
    :try_start_1
    const-string v0, "thread_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 371
    .local v10, threadID:Ljava/lang/String;
    sget-object v0, Lcom/zte/backup/format/vxx/vmsg/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "simple"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 372
    .local v1, threadsUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 373
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_3

    .line 374
    :cond_2
    sget-boolean v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bNeedUpdateThreadOurself:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 386
    invoke-direct {p0, v9}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 387
    invoke-direct {p0, v11}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 377
    :cond_3
    :try_start_2
    const-string v0, "date"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 378
    .local v6, date1:J
    cmp-long v0, v6, p1

    if-nez v0, :cond_4

    .line 379
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bNeedUpdateThreadOurself:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 386
    :cond_4
    invoke-direct {p0, v9}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 387
    invoke-direct {p0, v11}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 389
    .end local v1           #threadsUri:Landroid/net/Uri;
    .end local v6           #date1:J
    .end local v10           #threadID:Ljava/lang/String;
    :goto_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bNeedUpdateThreadOurself = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bNeedUpdateThreadOurself:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 390
    sget-boolean v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bNeedUpdateThreadOurself:Z

    goto :goto_0

    .line 382
    :catch_0
    move-exception v8

    .line 383
    .local v8, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 386
    invoke-direct {p0, v9}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 387
    invoke-direct {p0, v11}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 385
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 386
    invoke-direct {p0, v9}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 387
    invoke-direct {p0, v11}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 388
    throw v0
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 676
    if-eqz p1, :cond_0

    .line 677
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 679
    :cond_0
    return-void
.end method

.method private createSmsValue()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    sget-object v1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->mValues:Landroid/content/ContentValues;

    if-nez v1, :cond_0

    .line 273
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sput-object v1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->mValues:Landroid/content/ContentValues;

    .line 276
    :cond_0
    sget-object v1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 277
    sget-object v1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->mValues:Landroid/content/ContentValues;

    const-string v2, "address"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messagePhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object v1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->mValues:Landroid/content/ContentValues;

    const-string v2, "type"

    iget v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    sget-object v1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->mValues:Landroid/content/ContentValues;

    const-string v2, "read"

    iget v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageRead:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageSubID:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/zte/backup/common/CommonFunctions;->getSimID(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageSubID:Ljava/lang/String;

    .line 281
    sget-boolean v1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bDoubleCard:Z

    if-eqz v1, :cond_1

    .line 282
    sget-object v1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->mValues:Landroid/content/ContentValues;

    const-string v2, "sub_id"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageSubID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_1
    sget-boolean v1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bHasSimId:Z

    if-eqz v1, :cond_2

    .line 285
    sget-object v1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->mValues:Landroid/content/ContentValues;

    const-string v2, "sim_id"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageSubID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_2
    sget-object v1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->mValues:Landroid/content/ContentValues;

    const-string v2, "body"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageBody:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->mValues:Landroid/content/ContentValues;

    const-string v2, "date"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageDate:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->mValues:Landroid/content/ContentValues;

    const-string v2, "subject"

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageSubject:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->mValues:Landroid/content/ContentValues;

    const-string v2, "locked"

    iget v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageLock:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    sget-object v1, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->mValues:Landroid/content/ContentValues;

    const-string v2, "seen"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method private deleteAllSmsByUri(Landroid/net/Uri;)Z
    .locals 12
    .parameter "uriSms"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 493
    const/4 v6, 0x0

    .line 495
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "thread_id"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 496
    if-nez v6, :cond_1

    .line 514
    if-eqz v6, :cond_0

    .line 515
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    :cond_0
    move v0, v10

    .line 511
    :goto_0
    return v0

    .line 499
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 514
    if-eqz v6, :cond_2

    .line 515
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    :cond_2
    move v0, v11

    .line 500
    goto :goto_0

    .line 503
    :cond_3
    :try_start_2
    const-string v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 504
    .local v8, threadId:J
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://sms/conversations/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 506
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    .line 502
    if-nez v0, :cond_3

    .line 514
    if-eqz v6, :cond_4

    .line 515
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    :cond_4
    move v0, v11

    .line 507
    goto :goto_0

    .line 509
    .end local v8           #threadId:J
    :catch_0
    move-exception v7

    .line 510
    .local v7, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 514
    if-eqz v6, :cond_5

    .line 515
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    :cond_5
    move v0, v10

    .line 511
    goto :goto_0

    .line 513
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 514
    if-eqz v6, :cond_6

    .line 515
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 517
    :cond_6
    throw v0
.end method

.method private getIDArrayFromCursor(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 255
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 256
    .local v0, count:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    .line 268
    :goto_0
    return-void

    .line 259
    :cond_0
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageIDArrays:[Ljava/lang/String;

    .line 260
    const/4 v2, 0x0

    .line 262
    .local v2, numIndex:I
    :cond_1
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 263
    .local v1, id:I
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageIDArrays:[Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 264
    add-int/lit8 v2, v2, 0x1

    .line 266
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 261
    if-nez v3, :cond_1

    .line 267
    iput v2, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->iDArrayCounts:I

    goto :goto_0
.end method

.method private getSelectStr()Ljava/lang/String;
    .locals 8

    .prologue
    .line 540
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 541
    .local v1, format:Ljava/text/SimpleDateFormat;
    const-string v2, ""

    .line 544
    .local v2, selection:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "type =\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageType:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "date >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageDate:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND date < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 548
    iget-object v4, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageDate:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e7

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 547
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 550
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageBody:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageBody:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "body=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 555
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 557
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageSubject:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageSubject:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "subject=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageSubject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 562
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "address = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messagePhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 569
    :goto_2
    return-object v2

    .line 553
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "(body is null OR body=\"\")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 560
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "(subject is null OR subject=\"\")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "MessageSms"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getSmsContentFromCursor(Landroid/database/Cursor;)Z
    .locals 6
    .parameter "cur"

    .prologue
    const/4 v2, 0x0

    .line 647
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    .line 672
    :cond_0
    :goto_0
    return v2

    .line 655
    :cond_1
    :try_start_0
    const-string v3, "address"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messagePhoneNumber:Ljava/lang/String;

    .line 656
    const-string v3, "body"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageBody:Ljava/lang/String;

    .line 657
    const-string v3, "read"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageRead:I

    .line 661
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/zte/backup/common/CommonFunctions;->getCardID(Landroid/database/Cursor;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageSubID:Ljava/lang/String;

    .line 662
    const-string v3, "status"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageStatus:I

    .line 663
    const-string v3, "subject"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageSubject:Ljava/lang/String;

    .line 664
    const-string v3, "locked"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageLock:I

    .line 665
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 666
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/sql/Date;

    const-string v4, "date"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageDate:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 669
    .end local v1           #formatter:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v0

    .line 670
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "MessageSms"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getThreadIdFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 613
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    :cond_0
    const/4 v0, 0x0

    .line 616
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "thread_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasSimID()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bHasSimId:Z

    return v0
.end method

.method private has_sub_id_Column(Ljava/lang/String;)Z
    .locals 10
    .parameter "msgCardId"

    .prologue
    .line 108
    const/4 v6, 0x0

    .line 109
    .local v6, bFind:Z
    const/4 v8, 0x0

    .line 111
    .local v8, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 112
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 111
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 113
    const/4 v6, 0x1

    .line 119
    if-eqz v8, :cond_0

    .line 120
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move v7, v6

    .line 123
    .end local v6           #bFind:Z
    .local v7, bFind:I
    :goto_0
    return v7

    .line 115
    .end local v7           #bFind:I
    .restart local v6       #bFind:Z
    :catch_0
    move-exception v9

    .line 119
    .local v9, e:Ljava/lang/Exception;
    if-eqz v8, :cond_1

    .line 120
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move v7, v6

    .line 116
    .restart local v7       #bFind:I
    goto :goto_0

    .line 118
    .end local v7           #bFind:I
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 119
    if-eqz v8, :cond_2

    .line 120
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_2
    throw v0
.end method

.method private insertSms()I
    .locals 6

    .prologue
    const/16 v3, 0x2002

    .line 299
    :try_start_0
    invoke-direct {p0}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->createSmsValue()V

    .line 300
    const-string v4, "content://sms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 301
    .local v0, boxUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 302
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_0

    .line 320
    .end local v0           #boxUri:Landroid/net/Uri;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_0
    return v3

    .line 310
    .restart local v0       #boxUri:Landroid/net/Uri;
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_0
    iget-object v4, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messagePhoneNumber:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->addAddress2List(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 311
    const/16 v3, 0x2001

    goto :goto_0

    .line 314
    .end local v0           #boxUri:Landroid/net/Uri;
    .end local v2           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 315
    .local v1, ex:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .line 316
    const/16 v3, 0x2004

    goto :goto_0

    .line 318
    .end local v1           #ex:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 319
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isDoubleCard()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bDoubleCard:Z

    return v0
.end method


# virtual methods
.method public createSmsItem()I
    .locals 2

    .prologue
    .line 224
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->smsIsExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const/16 v1, 0x2001

    .line 232
    :goto_0
    return v1

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->insertSms()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    const/16 v1, 0x2002

    goto :goto_0
.end method

.method public createSmsItemForMms()Ljava/lang/String;
    .locals 6

    .prologue
    .line 573
    const/4 v1, 0x0

    .line 575
    .local v1, id:Ljava/lang/String;
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 576
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "address"

    iget-object v5, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messagePhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v4, "type"

    iget v5, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v4, "body"

    iget-object v5, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageBody:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v4, "read"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v4, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://sms/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 582
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 583
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 592
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-object v1

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, ex:Landroid/database/sqlite/SQLiteFullException;
    const-string v4, "MessageSms"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 589
    .end local v0           #ex:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 590
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "MessageSms"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteAllSms()Z
    .locals 2

    .prologue
    .line 248
    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 249
    .local v0, uriSms:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->deleteAllSmsByUri(Landroid/net/Uri;)Z

    move-result v1

    return v1
.end method

.method public deleteAllSms(Ljava/lang/String;)Z
    .locals 2
    .parameter "MessageType"

    .prologue
    .line 240
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 241
    .local v0, uriSms:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->deleteAllSmsByUri(Landroid/net/Uri;)Z

    move-result v1

    return v1
.end method

.method public deleteSmsForMms(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 623
    const/4 v6, 0x0

    .line 625
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 626
    .local v1, uriSms:Landroid/net/Uri;
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 627
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "thread_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 628
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 629
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 641
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 643
    .end local v1           #uriSms:Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 632
    .restart local v1       #uriSms:Landroid/net/Uri;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://sms/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 634
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 631
    if-nez v0, :cond_1

    .line 635
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 641
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 637
    .end local v1           #uriSms:Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 638
    .local v7, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MessageSms"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 641
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 643
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 640
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 641
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 642
    throw v0
.end method

.method public getBackupCount()I
    .locals 2

    .prologue
    .line 696
    const/4 v0, 0x0

    .line 697
    .local v0, result:I
    const-string v1, "content://sms/inbox"

    invoke-virtual {p0, v1}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->getMessageCount(Ljava/lang/String;)I

    move-result v0

    .line 698
    const-string v1, "content://sms/sent"

    invoke-virtual {p0, v1}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->getMessageCount(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 699
    return v0
.end method

.method public getBackupDataSize()J
    .locals 5

    .prologue
    .line 682
    const/4 v1, 0x0

    .line 683
    .local v1, iSmsNum:I
    const/4 v0, 0x0

    .line 685
    .local v0, iBackupSpace:I
    const-string v2, "content://sms/inbox"

    invoke-virtual {p0, v2}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->getMessageCount(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 686
    const-string v2, "content://sms/sent"

    invoke-virtual {p0, v2}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->getMessageCount(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 687
    const-string v2, "backup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSmsMessageCount "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    if-lez v1, :cond_0

    .line 689
    const/high16 v2, 0x8

    add-int/2addr v0, v2

    .line 690
    :cond_0
    mul-int/lit16 v2, v1, 0x800

    add-int/2addr v0, v2

    .line 691
    int-to-long v2, v0

    return-wide v2
.end method

.method public getMessageCount(Ljava/lang/String;)I
    .locals 9
    .parameter "MessageType"

    .prologue
    .line 144
    const/4 v6, 0x0

    .line 145
    .local v6, count:I
    const/4 v7, 0x0

    .line 146
    .local v7, cursor:Landroid/database/Cursor;
    const-string v3, "thread_id is not null"

    .line 147
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->contactNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AND address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->contactNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 153
    if-eqz v7, :cond_1

    .line 154
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 161
    :cond_1
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 163
    :goto_0
    return v6

    .line 157
    :catch_0
    move-exception v8

    .line 158
    .local v8, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MessageSms"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 160
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 161
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 162
    throw v0
.end method

.method public getMessageIDArray(Ljava/lang/String;)I
    .locals 8
    .parameter "MessageType"

    .prologue
    const/4 v1, 0x0

    .line 195
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "person"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "body"

    aput-object v1, v2, v0

    .line 196
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 197
    .local v6, cursor:Landroid/database/Cursor;
    const-string v3, "thread_id is not null"

    .line 198
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->contactNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AND address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->contactNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    .line 203
    const-string v5, "date desc"

    .line 202
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 204
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 205
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->iDArrayCounts:I

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageIDArrays:[Ljava/lang/String;

    .line 207
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->iDArrayCounts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 217
    :goto_0
    return v0

    .line 209
    :cond_2
    :try_start_1
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->getIDArrayFromCursor(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 217
    :goto_1
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->iDArrayCounts:I

    goto :goto_0

    .line 211
    :catch_0
    move-exception v7

    .line 212
    .local v7, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MessageSms"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 214
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 215
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 216
    throw v0
.end method

.method public getMessageSmsIDArrayByIndex(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 133
    iget v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->iDArrayCounts:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 134
    :cond_0
    const-string v0, "MessageSms"

    const-string v1, "index arrange error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->messageIDArrays:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getSmsAndSendBack(Ljava/lang/String;I)Z
    .locals 9
    .parameter "MessageType"
    .parameter "id"

    .prologue
    .line 173
    const/4 v8, 0x0

    .line 174
    .local v8, ret:Z
    const/4 v6, 0x0

    .line 179
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 180
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->getSmsContentFromCursor(Landroid/database/Cursor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 186
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 188
    :goto_0
    return v8

    .line 182
    :catch_0
    move-exception v7

    .line 183
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MessageSms"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 185
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 186
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 187
    throw v0
.end method

.method public getSmsThreadID(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 596
    const/4 v6, 0x0

    .line 598
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 599
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 600
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "thread_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 599
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 601
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->getThreadIdFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 608
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 605
    .end local v3           #selection:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 603
    :catch_0
    move-exception v7

    .line 604
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MessageSms"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    move-object v0, v8

    .line 605
    goto :goto_0

    .line 607
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 608
    invoke-direct {p0, v6}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 609
    throw v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public smsIsExist()Z
    .locals 9

    .prologue
    .line 522
    const/4 v6, 0x0

    .line 523
    .local v6, bResult:Z
    const/4 v7, 0x0

    .line 525
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->getSelectStr()Ljava/lang/String;

    move-result-object v3

    .line 526
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 527
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    .line 528
    const/4 v6, 0x1

    .line 534
    :cond_0
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 536
    .end local v3           #selection:Ljava/lang/String;
    :goto_0
    return v6

    .line 530
    :catch_0
    move-exception v8

    .line 531
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MessageSms"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 533
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 534
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 535
    throw v0
.end method

.method public updateThreadBySmsUri()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 394
    const/4 v0, 0x0

    .line 397
    .local v0, count:I
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 398
    .local v2, values:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://mms-sms/updateAllThreads"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    .line 399
    const/4 v7, 0x0

    .line 398
    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 406
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v3

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "MessageSms"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateThreadsByList()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 410
    sget-boolean v4, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->bNeedUpdateThreadOurself:Z

    if-nez v4, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    sget-object v4, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->addressListForThreads:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v5, :cond_0

    .line 418
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SMS: updateThreadsByList size: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->addressListForThreads:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 420
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 421
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "read"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const-string v4, "type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    const-string v4, "body"

    const-string v5, "b"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v4, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 426
    sget-object v4, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->addressListForThreads:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_3

    .line 439
    .end local v1           #cv:Landroid/content/ContentValues;
    :goto_2
    sget-object v4, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->addressListForThreads:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 426
    .restart local v1       #cv:Landroid/content/ContentValues;
    :cond_3
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 427
    .local v0, address:Ljava/lang/String;
    const-string v5, "address"

    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v5, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://sms/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 430
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 431
    iget-object v5, p0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 435
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 436
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "MessageSms"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
