.class public Lcom/android/mms/transaction/MmsSystemEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsSystemEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MmsSystemEventReceiver$OnShutDownListener;,
        Lcom/android/mms/transaction/MmsSystemEventReceiver$OnSimInforChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MmsSystemEventReceiver"

.field private static sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

.field private static sUnreadMessagePlugin:Lcom/mediatek/mms/ext/IUnreadMessageNumber;


# instance fields
.field private mSaveDraft:Lcom/android/mms/transaction/MmsSystemEventReceiver$OnShutDownListener;

.field private mSimInforChangedListener:Lcom/android/mms/transaction/MmsSystemEventReceiver$OnSimInforChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sUnreadMessagePlugin:Lcom/mediatek/mms/ext/IUnreadMessageNumber;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 466
    return-void
.end method

.method public static registerForConnectionStateChanges(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 316
    const-string v1, "Mms/Txn"

    const-string v2, "registerForConnectionStateChanges"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 319
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 320
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v1, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    const-string v1, "MmsSystemEventReceiver"

    const-string v2, "registerForConnectionStateChanges"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    sget-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    if-nez v1, :cond_1

    .line 325
    new-instance v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-direct {v1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;-><init>()V

    sput-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    .line 328
    :cond_1
    sget-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    return-void
.end method

.method public static setNotificationIndUnstarted(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 417
    const-string v0, "Mms/Txn"

    const-string v1, "setNotificationIndUnstarted"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v6

    const-string v0, "st"

    aput-object v0, v3, v4

    const-string v4, "m_type=130"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 421
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 423
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 424
    .local v7, count:I
    const-string v0, "Mms/Txn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNotificationIndUnstarted: Message Size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    if-nez v7, :cond_0

    .line 451
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 456
    .end local v7           #count:I
    :goto_0
    return-void

    .line 430
    .restart local v7       #count:I
    :cond_0
    const/4 v3, 0x0

    .line 431
    .local v3, values:Landroid/content/ContentValues;
    const/4 v10, 0x0

    .line 432
    .local v10, id:I
    const/4 v11, 0x0

    .line 433
    .local v11, status:I
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 435
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 436
    const-string v0, "Mms/Txn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNotificationIndUnstarted: MsgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/16 v0, 0x81

    and-int/lit8 v1, v11, -0x5

    if-ne v0, v1, :cond_1

    .line 439
    new-instance v3, Landroid/content/ContentValues;

    .end local v3           #values:Landroid/content/ContentValues;
    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 440
    .restart local v3       #values:Landroid/content/ContentValues;
    const-string v0, "st"

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 441
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 447
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v7           #count:I
    .end local v10           #id:I
    .end local v11           #status:I
    :catch_0
    move-exception v9

    .line 449
    .local v9, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_2
    const-string v0, "Mms/Txn"

    const-string v1, "SQLiteDiskIOException caught while set notification ind unstart"

    invoke-static {v0, v1, v9}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 451
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .restart local v3       #values:Landroid/content/ContentValues;
    .restart local v7       #count:I
    .restart local v10       #id:I
    .restart local v11       #status:I
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v3           #values:Landroid/content/ContentValues;
    .end local v7           #count:I
    .end local v10           #id:I
    .end local v11           #status:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 454
    :cond_3
    const-string v0, "Mms/Txn"

    const-string v1, "setNotificationIndUnstarted: no pending messages."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static setPendingMmsFailed(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 366
    const-string v0, "Mms/Txn"

    const-string v1, "setPendingMmsFailed"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v9

    .line 369
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 371
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 372
    .local v8, count:I
    const-string v0, "Mms/Txn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPendingMmsFailed: Pending Message Size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    if-nez v8, :cond_0

    .line 406
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 411
    .end local v8           #count:I
    :goto_0
    return-void

    .line 377
    .restart local v8       #count:I
    :cond_0
    :try_start_1
    new-instance v12, Lcom/android/mms/transaction/DefaultRetryScheme;

    const/16 v0, 0x64

    invoke-direct {v12, p0, v0}, Lcom/android/mms/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;I)V

    .line 378
    .local v12, scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    const/4 v3, 0x0

    .line 379
    .local v3, values:Landroid/content/ContentValues;
    const/4 v6, 0x0

    .line 380
    .local v6, columnIndex:I
    const/4 v7, 0x0

    .line 381
    .local v7, columnType:I
    const/4 v11, 0x0

    .line 382
    .local v11, id:I
    const/4 v13, 0x0

    .line 383
    .local v13, type:I
    :cond_1
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 385
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 387
    const-string v0, "msg_type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 388
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 390
    const-string v0, "Mms/Txn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPendingMmsFailed: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; MsgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/16 v0, 0x80

    if-ne v13, v0, :cond_1

    .line 393
    new-instance v3, Landroid/content/ContentValues;

    .end local v3           #values:Landroid/content/ContentValues;
    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 394
    .restart local v3       #values:Landroid/content/ContentValues;
    const-string v0, "err_type"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    const-string v0, "retry_index"

    invoke-virtual {v12}, Lcom/android/mms/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 402
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v6           #columnIndex:I
    .end local v7           #columnType:I
    .end local v8           #count:I
    .end local v11           #id:I
    .end local v12           #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    .end local v13           #type:I
    :catch_0
    move-exception v10

    .line 404
    .local v10, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_2
    const-string v0, "Mms/Txn"

    const-string v1, "SQLiteDiskIOException caught while set pending message failed"

    invoke-static {v0, v1, v10}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v10           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .restart local v3       #values:Landroid/content/ContentValues;
    .restart local v6       #columnIndex:I
    .restart local v7       #columnType:I
    .restart local v8       #count:I
    .restart local v11       #id:I
    .restart local v12       #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    .restart local v13       #type:I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v3           #values:Landroid/content/ContentValues;
    .end local v6           #columnIndex:I
    .end local v7           #columnType:I
    .end local v8           #count:I
    .end local v11           #id:I
    .end local v12           #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    .end local v13           #type:I
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 409
    :cond_3
    const-string v0, "Mms/Txn"

    const-string v1, "setPendingMmsFailed: no pending MMS."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static unRegisterForConnectionStateChanges(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 333
    const-string v0, "Mms/Txn"

    const-string v1, "unRegisterForConnectionStateChanges"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "Mms:transaction"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const-string v0, "MmsSystemEventReceiver"

    const-string v1, "unRegisterForConnectionStateChanges"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    if-eqz v0, :cond_1

    .line 339
    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_1
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static wakeUpService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 95
    const-string v0, "Mms:transaction"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "MmsSystemEventReceiver"

    const-string v1, "wakeUpService: start transaction service ..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 100
    return-void
.end method

.method private static wakeUpServiceGemini(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 355
    const-string v1, "Mms/Txn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wakeUpServiceGemini: start transaction service ... simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .local v0, it:Landroid/content/Intent;
    const-string v1, "simId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 361
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 104
    const-string v3, "Mms:transaction"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    const-string v3, "MmsSystemEventReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Intent received: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    const-string v3, "Mms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onReceive(): intent="

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    .line 110
    .local v14, action:Ljava/lang/String;
    const-string v3, "android.intent.action.CONTENT_CHANGED"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    move-object/from16 v17, p2

    .line 113
    .local v17, mIntent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/transaction/MmsSystemEventReceiver$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lcom/android/mms/transaction/MmsSystemEventReceiver$1;-><init>(Lcom/android/mms/transaction/MmsSystemEventReceiver;Landroid/content/Intent;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 312
    .end local v17           #mIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 125
    const-string v3, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 127
    .local v23, state:Ljava/lang/String;
    const-string v3, "Mms:transaction"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 128
    const-string v3, "MmsSystemEventReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ANY_DATA_STATE event received: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_3
    const-string v3, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 135
    .local v15, apnType:Ljava/lang/String;
    const-string v3, "mms"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    const-string v3, "Mms/Txn"

    const-string v4, "TelephonyIntents.ACTION_ANY_DATA_CONNECTION_STATE_CHANGED, type is mms."

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v3, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/ConnectivityManager;

    .line 139
    .local v16, connMgr:Landroid/net/ConnectivityManager;
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v18

    .line 140
    .local v18, ni:Landroid/net/NetworkInfo;
    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_4

    .line 141
    const-string v3, "Mms/Txn"

    const-string v4, "network is not available for mms, keep listening."

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 149
    const-string v3, "simId"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v20

    .line 151
    .local v20, si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-nez v20, :cond_5

    .line 152
    const-string v3, "Mms/Txn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "System event receiver: SIMInfo is null for slot "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, "simId"

    const/16 v25, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :cond_5
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v3

    long-to-int v0, v3

    move/from16 v21, v0

    .line 157
    .local v21, simId:I
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpServiceGemini(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 163
    .end local v15           #apnType:Ljava/lang/String;
    .end local v16           #connMgr:Landroid/net/ConnectivityManager;
    .end local v18           #ni:Landroid/net/NetworkInfo;
    .end local v20           #si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .end local v21           #simId:I
    .end local v23           #state:Ljava/lang/String;
    :cond_6
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 165
    const/16 v3, 0x10

    invoke-static {v3}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/mms/ext/IUnreadMessageNumber;

    sput-object v3, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sUnreadMessagePlugin:Lcom/mediatek/mms/ext/IUnreadMessageNumber;

    .line 167
    sget-object v3, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sUnreadMessagePlugin:Lcom/mediatek/mms/ext/IUnreadMessageNumber;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lcom/mediatek/mms/ext/IUnreadMessageNumber;->updateUnreadMessageNumber(Landroid/content/Context;)V

    .line 170
    const-string v3, "Mms/Txn"

    const-string v4, "Intent.ACTION_BOOT_COMPLETED"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    move-object/from16 v5, p1

    .line 172
    .local v5, contxt:Landroid/content/Context;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/transaction/MmsSystemEventReceiver$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/mms/transaction/MmsSystemEventReceiver$2;-><init>(Lcom/android/mms/transaction/MmsSystemEventReceiver;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 183
    const-wide/16 v3, -0x2

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v3, v4, v1}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 186
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 187
    .local v22, sp:Landroid/content/SharedPreferences;
    const-string v3, "for_chat_settings_pref"

    const-wide/16 v24, -0x1

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 188
    .local v6, unSavedthreadId:J
    const-string v3, "MmsSystemEventReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "unSaved chatThreadSetting: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-wide/16 v3, 0x0

    cmp-long v3, v6, v3

    if-lez v3, :cond_1

    .line 190
    const-string v3, "pref_key_enable_notifications_for_chat"

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 191
    .local v8, mNotificationEnable:Z
    const-string v3, "pref_key_mute_for_chat"

    const-string v4, "0"

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 192
    .local v9, mMute:Ljava/lang/String;
    const-string v3, "pref_key_ringtone_for_chat"

    const-string v4, ""

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 193
    .local v12, mRingtone:Ljava/lang/String;
    const-string v3, "pref_key_vibrate_for_chat"

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 194
    .local v13, mVibrate:Z
    const-string v3, "chat_mute_start"

    const-wide/16 v24, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 195
    .local v10, mMuteStart:J
    new-instance v3, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v13}, Lcom/android/mms/transaction/MmsSystemEventReceiver$3;-><init>(Lcom/android/mms/transaction/MmsSystemEventReceiver;Landroid/content/Context;JZLjava/lang/String;JLjava/lang/String;Z)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 218
    .end local v5           #contxt:Landroid/content/Context;
    .end local v6           #unSavedthreadId:J
    .end local v8           #mNotificationEnable:Z
    .end local v9           #mMute:Ljava/lang/String;
    .end local v10           #mMuteStart:J
    .end local v12           #mRingtone:Ljava/lang/String;
    .end local v13           #mVibrate:Z
    .end local v22           #sp:Landroid/content/SharedPreferences;
    :cond_7
    sget-object v3, Lcom/mediatek/encapsulation/android/content/EncapsulatedAction;->SIM_SETTINGS_INFO_CHANGED:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 219
    const-string v3, "simid"

    const-wide/16 v24, -0x1

    move-object/from16 v0, p2

    move-wide/from16 v1, v24

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v0, v3

    move/from16 v21, v0

    .line 220
    .restart local v21       #simId:I
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->simInfoMap:Ljava/util/Map;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getSimInfo(Landroid/content/Context;I)Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 224
    .end local v21           #simId:I
    :cond_8
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 225
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->getComposeContext()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/mms/transaction/MmsSystemEventReceiver$OnShutDownListener;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mSaveDraft:Lcom/android/mms/transaction/MmsSystemEventReceiver$OnShutDownListener;

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mSaveDraft:Lcom/android/mms/transaction/MmsSystemEventReceiver$OnShutDownListener;

    if-eqz v3, :cond_1

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mSaveDraft:Lcom/android/mms/transaction/MmsSystemEventReceiver$OnShutDownListener;

    invoke-interface {v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver$OnShutDownListener;->onShutDown()V

    goto/16 :goto_0

    .line 231
    :cond_9
    sget-object v3, Lcom/mediatek/encapsulation/android/content/EncapsulatedAction;->ACTION_SMS_DEFAULT_SIM_CHANGED:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 232
    const-string v3, "Mms"

    const-string v4, "SMS default SIM changed."

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->getComposeContext()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/mms/transaction/MmsSystemEventReceiver$OnSimInforChangedListener;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mSimInforChangedListener:Lcom/android/mms/transaction/MmsSystemEventReceiver$OnSimInforChangedListener;

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mSimInforChangedListener:Lcom/android/mms/transaction/MmsSystemEventReceiver$OnSimInforChangedListener;

    if-eqz v3, :cond_a

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mSimInforChangedListener:Lcom/android/mms/transaction/MmsSystemEventReceiver$OnSimInforChangedListener;

    invoke-interface {v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver$OnSimInforChangedListener;->onSimInforChanged()V

    .line 237
    :cond_a
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->getContext()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/mms/transaction/MmsSystemEventReceiver$OnSimInforChangedListener;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mSimInforChangedListener:Lcom/android/mms/transaction/MmsSystemEventReceiver$OnSimInforChangedListener;

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mSimInforChangedListener:Lcom/android/mms/transaction/MmsSystemEventReceiver$OnSimInforChangedListener;

    if-eqz v3, :cond_1

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mSimInforChangedListener:Lcom/android/mms/transaction/MmsSystemEventReceiver$OnSimInforChangedListener;

    invoke-interface {v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver$OnSimInforChangedListener;->onSimInforChanged()V

    goto/16 :goto_0

    .line 243
    :cond_b
    const-string v3, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 244
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->setDeviceStorageFullStatus(Z)V

    goto/16 :goto_0

    .line 245
    :cond_c
    const-string v3, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 246
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->setDeviceStorageFullStatus(Z)V

    .line 247
    const/16 v3, 0xef

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 251
    :cond_d
    const-string v3, "android.intent.action.OP09_DEVICES_STORAGE_LOW"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 252
    const-string v3, "Mms/Txn"

    const-string v4, "setCTDeviceStorageLowStatus(true)"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->setCTDeviceStorageLowStatus(Z)V

    goto/16 :goto_0

    .line 254
    :cond_e
    const-string v3, "android.intent.action.OP09_DEVICES_STORAGE_NOT_LOW"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 255
    const-string v3, "Mms/Txn"

    const-string v4, "setCTDeviceStorageLowStatus(false)"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->setCTDeviceStorageLowStatus(Z)V

    .line 257
    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/MessageUtils;->cancelCTDeviceLowNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 260
    :cond_f
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 261
    invoke-static {}, Lcom/android/mms/MmsConfig;->getInitQuickText()Z

    move-result v3

    if-nez v3, :cond_1

    .line 264
    move-object/from16 v19, p1

    .line 265
    .local v19, runContext:Landroid/content/Context;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/transaction/MmsSystemEventReceiver$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/android/mms/transaction/MmsSystemEventReceiver$4;-><init>(Lcom/android/mms/transaction/MmsSystemEventReceiver;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method
