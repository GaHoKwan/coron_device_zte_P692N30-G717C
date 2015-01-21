.class public Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;
.super Ljava/lang/Object;
.source "WPMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/WPMessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WPColumnsMap"
.end annotation


# instance fields
.field public mColumnMsgId:I

.field public mColumnWpmsAction:I

.field public mColumnWpmsAddr:I

.field public mColumnWpmsCreate:I

.field public mColumnWpmsDate:I

.field public mColumnWpmsError:I

.field public mColumnWpmsExpiration:I

.field public mColumnWpmsLocked:I

.field public mColumnWpmsRead:I

.field public mColumnWpmsServiceAddr:I

.field public mColumnWpmsSiid:I

.field public mColumnWpmsSimId:I

.field public mColumnWpmsText:I

.field public mColumnWpmsThreadId:I

.field public mColumnWpmsType:I

.field public mColumnWpmsURL:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnMsgId:I

    .line 395
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsThreadId:I

    .line 396
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsAddr:I

    .line 397
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsServiceAddr:I

    .line 398
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsRead:I

    .line 399
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsDate:I

    .line 400
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsType:I

    .line 401
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsSiid:I

    .line 402
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsURL:I

    .line 403
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsCreate:I

    .line 404
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsExpiration:I

    .line 405
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsAction:I

    .line 406
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsText:I

    .line 407
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsSimId:I

    .line 408
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsLocked:I

    .line 409
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsError:I

    .line 410
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    :try_start_0
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnMsgId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    :try_start_1
    const-string v1, "thread_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsThreadId:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 428
    :goto_1
    :try_start_2
    const-string v1, "address"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsAddr:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 434
    :goto_2
    :try_start_3
    const-string v1, "service_center"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsServiceAddr:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 440
    :goto_3
    :try_start_4
    const-string v1, "read"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsRead:I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 446
    :goto_4
    :try_start_5
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsDate:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    .line 452
    :goto_5
    :try_start_6
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsType:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6

    .line 458
    :goto_6
    :try_start_7
    const-string v1, "siid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsSiid:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7

    .line 464
    :goto_7
    :try_start_8
    const-string v1, "url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsURL:I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8

    .line 470
    :goto_8
    :try_start_9
    const-string v1, "created"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsCreate:I
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_9

    .line 476
    :goto_9
    :try_start_a
    const-string v1, "expiration"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsExpiration:I
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_a

    .line 482
    :goto_a
    :try_start_b
    const-string v1, "action"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsAction:I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_b

    .line 488
    :goto_b
    :try_start_c
    const-string v1, "text"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsText:I
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_c

    .line 494
    :goto_c
    :try_start_d
    const-string v1, "sim_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsSimId:I
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_d

    .line 500
    :goto_d
    :try_start_e
    const-string v1, "locked"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsLocked:I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_e

    .line 506
    :goto_e
    :try_start_f
    const-string v1, "error"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsError:I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_f

    .line 510
    :goto_f
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 423
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 424
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 429
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 430
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 435
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 436
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 441
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 442
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 447
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v0

    .line 448
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 453
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v0

    .line 454
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 459
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v0

    .line 460
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 465
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v0

    .line 466
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 471
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_9
    move-exception v0

    .line 472
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 477
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v0

    .line 478
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 483
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_b
    move-exception v0

    .line 484
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 489
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_c
    move-exception v0

    .line 490
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 495
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_d
    move-exception v0

    .line 496
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 501
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_e
    move-exception v0

    .line 502
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 507
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_f
    move-exception v0

    .line 508
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f
.end method
