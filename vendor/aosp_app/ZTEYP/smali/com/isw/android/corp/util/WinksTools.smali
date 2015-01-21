.class public Lcom/isw/android/corp/util/WinksTools;
.super Ljava/lang/Object;
.source "WinksTools.java"


# static fields
.field private static final IMAGEDOWN:I = 0x0

.field public static final IMG_X:Ljava/lang/String; = "x"

.field private static final TAG:Ljava/lang/String; = "MiniWinksTools"

.field private static final TEXTDOWN:I = 0x1

.field private static final WORDNUM:I = 0xb

.field public static final XOR_CONST:B = 0x12t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToBitmap([B)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "byteArray"

    .prologue
    .line 430
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 435
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static callStatusStr(I)Ljava/lang/String;
    .locals 1
    .parameter "callCurrentStatus"

    .prologue
    .line 66
    const-string v0, ""

    .line 67
    .local v0, res:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 85
    :goto_0
    :pswitch_0
    return-object v0

    .line 70
    :pswitch_1
    const-string v0, "CALL_IDLE_STATUS"

    .line 71
    goto :goto_0

    .line 73
    :pswitch_2
    const-string v0, "CALL_OUT_RING_STATUS"

    .line 74
    goto :goto_0

    .line 76
    :pswitch_3
    const-string v0, "CALL_OUT_ESTABLISHED_STATUS"

    .line 77
    goto :goto_0

    .line 79
    :pswitch_4
    const-string v0, "CALL_IN_RING_STATUS"

    .line 80
    goto :goto_0

    .line 82
    :pswitch_5
    const-string v0, "CALL_IN_ESTABLISHED_STATUS"

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static canDownload(Landroid/content/Context;I)Z
    .locals 13
    .parameter "context"
    .parameter "downType"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 584
    .local v0, currentTime:J
    const-string v7, "timepermonth"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LocalConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v3

    .line 585
    .local v3, timePerMonth:J
    const-string v7, "MiniWinksTools"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "timePerMonth: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    sub-long v7, v0, v3

    const-wide v9, 0x9a7ec800L

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 587
    const-string v7, "timepermonth"

    invoke-static {v7, v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->putLong(Ljava/lang/String;J)V

    .line 588
    const-string v7, "usedlength"

    invoke-static {v7, v11, v12}, Lcom/isw/android/corp/util/LocalConfig;->putLong(Ljava/lang/String;J)V

    .line 591
    :cond_0
    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 621
    :goto_0
    :pswitch_0
    return v5

    .line 595
    :cond_1
    const-string v7, "downmode"

    invoke-static {v7, v6}, Lcom/isw/android/corp/util/LocalConfig;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 596
    .local v2, downMode:I
    const-string v7, "MiniWinksTools"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "---downMode: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; downType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    packed-switch v2, :pswitch_data_0

    .line 614
    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->isWifi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 615
    const-string v5, "lastwifitime"

    invoke-static {v5, v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->putLong(Ljava/lang/String;J)V

    move v5, v6

    .line 616
    goto :goto_0

    .line 599
    :pswitch_1
    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->isWifi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 600
    const-string v5, "lastwifitime"

    invoke-static {v5, v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->putLong(Ljava/lang/String;J)V

    move v5, v6

    .line 601
    goto :goto_0

    .line 603
    :cond_2
    invoke-static {v0, v1}, Lcom/isw/android/corp/util/WinksTools;->needSwitchDownMode(J)Z

    move-result v5

    goto :goto_0

    .line 606
    :pswitch_2
    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->isWifi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 607
    const-string v5, "lastwifitime"

    invoke-static {v5, v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->putLong(Ljava/lang/String;J)V

    :cond_3
    move v5, v6

    .line 609
    goto :goto_0

    .line 618
    :cond_4
    if-ne p1, v6, :cond_5

    move v5, v6

    .line 619
    goto :goto_0

    .line 621
    :cond_5
    invoke-static {v0, v1}, Lcom/isw/android/corp/util/WinksTools;->needSwitchDownMode(J)Z

    move-result v5

    goto :goto_0

    .line 597
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static converTextImageStr(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 25
    .parameter "info"
    .parameter "context"

    .prologue
    .line 462
    const-string v14, ""

    .line 463
    .local v14, imageString:Ljava/lang/String;
    const-string v22, "MiniWinksTools"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "WinksApplication.ossdk: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v24, Lcom/isw/android/corp/util/WinksApplication;->ossdk:I

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    sget v22, Lcom/isw/android/corp/util/WinksApplication;->ossdk:I

    const/16 v23, 0xf

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    move-object v15, v14

    .line 545
    .end local v14           #imageString:Ljava/lang/String;
    .local v15, imageString:Ljava/lang/String;
    :goto_0
    return-object v15

    .line 467
    .end local v15           #imageString:Ljava/lang/String;
    .restart local v14       #imageString:Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    .line 468
    .local v5, bgIs:Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 470
    .local v12, imageOut:Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 471
    .local v6, bitmap:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 472
    .local v7, canvas:Landroid/graphics/Canvas;
    const/16 v21, 0x50

    .line 473
    .local v21, y:I
    if-eqz p1, :cond_1

    .line 474
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 475
    .local v4, am:Landroid/content/res/AssetManager;
    const-string v22, "isw"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 476
    .local v10, fileList:[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    array-length v0, v10

    move/from16 v22, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    move/from16 v0, v22

    if-lt v11, v0, :cond_5

    .end local v4           #am:Landroid/content/res/AssetManager;
    .end local v10           #fileList:[Ljava/lang/String;
    .end local v11           #i:I
    :cond_1
    move-object v8, v7

    .line 486
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .local v8, canvas:Landroid/graphics/Canvas;
    :goto_2
    if-nez v6, :cond_f

    .line 487
    const/16 v22, 0x154

    const/16 v23, 0x154

    :try_start_1
    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v22 .. v24}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 488
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_a

    .line 489
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    const/high16 v22, -0x100

    :try_start_2
    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 491
    :goto_3
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v22

    div-int/lit8 v19, v22, 0xb

    .line 492
    .local v19, wordWidth:I
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 493
    .local v17, paint:Landroid/graphics/Paint;
    add-int/lit8 v22, v19, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 494
    const/16 v22, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 495
    const-string v22, "MiniWinksTools"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "info.length: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_7

    .line 497
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v22

    rsub-int/lit8 v22, v22, 0xb

    div-int/lit8 v22, v22, 0x2

    mul-int v22, v22, v19

    add-int/lit8 v20, v22, 0xa

    .line 498
    .local v20, x:I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v17

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 519
    .end local v20           #x:I
    :cond_2
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    .line 520
    .end local v12           #imageOut:Ljava/io/ByteArrayOutputStream;
    .local v13, imageOut:Ljava/io/ByteArrayOutputStream;
    :try_start_3
    sget-object v22, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v23, 0x64

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 521
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/isw/android/corp/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v14

    .line 522
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_b

    .line 528
    if-eqz v5, :cond_3

    .line 530
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 534
    :goto_4
    const/4 v5, 0x0

    .line 536
    :cond_3
    if-eqz v13, :cond_e

    .line 538
    :try_start_5
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 542
    :goto_5
    const/4 v12, 0x0

    .end local v13           #imageOut:Ljava/io/ByteArrayOutputStream;
    .end local v17           #paint:Landroid/graphics/Paint;
    .end local v19           #wordWidth:I
    .restart local v12       #imageOut:Ljava/io/ByteArrayOutputStream;
    :cond_4
    :goto_6
    move-object v15, v14

    .line 545
    .end local v14           #imageString:Ljava/lang/String;
    .restart local v15       #imageString:Ljava/lang/String;
    goto/16 :goto_0

    .line 477
    .end local v15           #imageString:Ljava/lang/String;
    .restart local v4       #am:Landroid/content/res/AssetManager;
    .restart local v10       #fileList:[Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v14       #imageString:Ljava/lang/String;
    :cond_5
    :try_start_6
    const-string v22, "dot_bg.png"

    aget-object v23, v10, v11

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 478
    const-string v22, "MiniWinksTools"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "fileList["

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-object v24, v10, v11

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v22, "isw/dot_bg.png"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 480
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v22

    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 481
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 482
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    goto/16 :goto_2

    .line 476
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 500
    .end local v4           #am:Landroid/content/res/AssetManager;
    .end local v10           #fileList:[Ljava/lang/String;
    .end local v11           #i:I
    .restart local v17       #paint:Landroid/graphics/Paint;
    .restart local v19       #wordWidth:I
    :cond_7
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 501
    .local v18, s:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 502
    .local v16, j:I
    const/4 v11, 0x0

    .line 503
    .restart local v11       #i:I
    :goto_7
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_2

    const/16 v22, 0x16

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 504
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_9

    .line 505
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v18, v11

    .line 506
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x16

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_8

    .line 507
    new-instance v22, Ljava/lang/StringBuilder;

    add-int/lit8 v23, v16, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "..."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v18, v11

    .line 512
    :cond_8
    :goto_8
    aget-object v22, v18, v11

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    rsub-int/lit8 v22, v22, 0xb

    div-int/lit8 v22, v22, 0x2

    mul-int v22, v22, v19

    add-int/lit8 v20, v22, 0xa

    .line 513
    .restart local v20       #x:I
    aget-object v22, v18, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v17

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 514
    add-int/lit8 v11, v11, 0x1

    .line 515
    add-int/lit8 v16, v16, 0xb

    .line 516
    add-int/lit8 v21, v21, 0x28

    goto :goto_7

    .line 510
    .end local v20           #x:I
    :cond_9
    add-int/lit8 v22, v16, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v18, v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    .line 523
    .end local v11           #i:I
    .end local v16           #j:I
    .end local v17           #paint:Landroid/graphics/Paint;
    .end local v18           #s:[Ljava/lang/String;
    .end local v19           #wordWidth:I
    :catch_0
    move-exception v9

    .line 524
    .local v9, e:Ljava/lang/Exception;
    :goto_9
    :try_start_7
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 528
    if-eqz v5, :cond_a

    .line 530
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 534
    .end local v9           #e:Ljava/lang/Exception;
    :goto_a
    const/4 v5, 0x0

    .line 536
    :cond_a
    if-eqz v12, :cond_4

    .line 538
    :try_start_9
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 542
    :goto_b
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 531
    .restart local v9       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 532
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 539
    .end local v9           #e:Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 540
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 525
    .end local v9           #e:Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 526
    .local v9, e:Ljava/lang/Error;
    :goto_c
    :try_start_a
    const-string v22, "MiniWinksTools"

    invoke-virtual {v9}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 528
    if-eqz v5, :cond_b

    .line 530
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 534
    .end local v9           #e:Ljava/lang/Error;
    :goto_d
    const/4 v5, 0x0

    .line 536
    :cond_b
    if-eqz v12, :cond_4

    .line 538
    :try_start_c
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 542
    :goto_e
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 531
    .restart local v9       #e:Ljava/lang/Error;
    :catch_4
    move-exception v9

    .line 532
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 539
    .end local v9           #e:Ljava/io/IOException;
    :catch_5
    move-exception v9

    .line 540
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 527
    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v22

    .line 528
    :goto_f
    if-eqz v5, :cond_c

    .line 530
    :try_start_d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 534
    :goto_10
    const/4 v5, 0x0

    .line 536
    :cond_c
    if-eqz v12, :cond_d

    .line 538
    :try_start_e
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 542
    :goto_11
    const/4 v12, 0x0

    .line 544
    :cond_d
    throw v22

    .line 531
    :catch_6
    move-exception v9

    .line 532
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 539
    .end local v9           #e:Ljava/io/IOException;
    :catch_7
    move-exception v9

    .line 540
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 531
    .end local v9           #e:Ljava/io/IOException;
    .end local v12           #imageOut:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #imageOut:Ljava/io/ByteArrayOutputStream;
    .restart local v17       #paint:Landroid/graphics/Paint;
    .restart local v19       #wordWidth:I
    :catch_8
    move-exception v9

    .line 532
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 539
    .end local v9           #e:Ljava/io/IOException;
    :catch_9
    move-exception v9

    .line 540
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 527
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v9           #e:Ljava/io/IOException;
    .end local v13           #imageOut:Ljava/io/ByteArrayOutputStream;
    .end local v17           #paint:Landroid/graphics/Paint;
    .end local v19           #wordWidth:I
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    .restart local v12       #imageOut:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v22

    move-object v7, v8

    .end local v8           #canvas:Landroid/graphics/Canvas;
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    goto :goto_f

    .end local v12           #imageOut:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #imageOut:Ljava/io/ByteArrayOutputStream;
    .restart local v17       #paint:Landroid/graphics/Paint;
    .restart local v19       #wordWidth:I
    :catchall_2
    move-exception v22

    move-object v12, v13

    .end local v13           #imageOut:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #imageOut:Ljava/io/ByteArrayOutputStream;
    goto :goto_f

    .line 525
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v17           #paint:Landroid/graphics/Paint;
    .end local v19           #wordWidth:I
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    :catch_a
    move-exception v9

    move-object v7, v8

    .end local v8           #canvas:Landroid/graphics/Canvas;
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    goto :goto_c

    .end local v12           #imageOut:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #imageOut:Ljava/io/ByteArrayOutputStream;
    .restart local v17       #paint:Landroid/graphics/Paint;
    .restart local v19       #wordWidth:I
    :catch_b
    move-exception v9

    move-object v12, v13

    .end local v13           #imageOut:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #imageOut:Ljava/io/ByteArrayOutputStream;
    goto :goto_c

    .line 523
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v17           #paint:Landroid/graphics/Paint;
    .end local v19           #wordWidth:I
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    :catch_c
    move-exception v9

    move-object v7, v8

    .end local v8           #canvas:Landroid/graphics/Canvas;
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    goto :goto_9

    .end local v12           #imageOut:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #imageOut:Ljava/io/ByteArrayOutputStream;
    .restart local v17       #paint:Landroid/graphics/Paint;
    .restart local v19       #wordWidth:I
    :catch_d
    move-exception v9

    move-object v12, v13

    .end local v13           #imageOut:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #imageOut:Ljava/io/ByteArrayOutputStream;
    goto :goto_9

    .end local v12           #imageOut:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #imageOut:Ljava/io/ByteArrayOutputStream;
    :cond_e
    move-object v12, v13

    .end local v13           #imageOut:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #imageOut:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_6

    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v17           #paint:Landroid/graphics/Paint;
    .end local v19           #wordWidth:I
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    :cond_f
    move-object v7, v8

    .end local v8           #canvas:Landroid/graphics/Canvas;
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    goto/16 :goto_3
.end method

.method public static copyAssetsFile(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "assetsFile"
    .parameter "ctx"
    .parameter "dest"

    .prologue
    .line 131
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, destFile:Ljava/io/File;
    const/4 v3, 0x0

    .line 133
    .local v3, input:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 135
    .local v5, output:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 136
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 138
    .end local v5           #output:Ljava/io/FileOutputStream;
    .local v6, output:Ljava/io/FileOutputStream;
    const/16 v7, 0x1000

    :try_start_1
    new-array v0, v7, [B

    .line 139
    .local v0, buffer:[B
    const/4 v4, 0x0

    .line 140
    .local v4, n:I
    :goto_0
    const/4 v7, -0x1

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-ne v7, v4, :cond_2

    .line 150
    if-eqz v3, :cond_0

    .line 151
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 153
    :cond_0
    if-eqz v6, :cond_6

    .line 154
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v6

    .line 161
    .end local v0           #buffer:[B
    .end local v4           #n:I
    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 141
    .end local v5           #output:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #n:I
    .restart local v6       #output:Ljava/io/FileOutputStream;
    :cond_2
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v6, v0, v7, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 145
    .end local v0           #buffer:[B
    .end local v4           #n:I
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 146
    .end local v6           #output:Ljava/io/FileOutputStream;
    .local v2, ex:Ljava/lang/Exception;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_4
    const-string v7, "MiniWinksTools"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ex: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    if-eqz v3, :cond_3

    .line 151
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 153
    :cond_3
    if-eqz v5, :cond_1

    .line 154
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 157
    :catch_1
    move-exception v7

    goto :goto_1

    .line 148
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 150
    :goto_3
    if-eqz v3, :cond_4

    .line 151
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 153
    :cond_4
    if-eqz v5, :cond_5

    .line 154
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 160
    :cond_5
    :goto_4
    throw v7

    .line 157
    .end local v5           #output:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #n:I
    .restart local v6       #output:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    move-object v5, v6

    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #buffer:[B
    .end local v4           #n:I
    :catch_3
    move-exception v8

    goto :goto_4

    .line 148
    .end local v5           #output:Ljava/io/FileOutputStream;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 145
    :catch_4
    move-exception v2

    goto :goto_2

    .end local v5           #output:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #n:I
    .restart local v6       #output:Ljava/io/FileOutputStream;
    :cond_6
    move-object v5, v6

    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static copyAssetsImageFile(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .parameter "assetsFile"
    .parameter "ctx"
    .parameter "dest"

    .prologue
    .line 171
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v2, destFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 173
    .local v4, input:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 175
    .local v6, output:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 176
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 178
    .end local v6           #output:Ljava/io/FileOutputStream;
    .local v7, output:Ljava/io/FileOutputStream;
    const/16 v8, 0x1000

    :try_start_1
    new-array v1, v8, [B

    .line 179
    .local v1, buffer:[B
    const/4 v5, 0x0

    .line 180
    .local v5, n:I
    const/4 v0, 0x1

    .line 181
    .local v0, bFirst:Z
    :goto_0
    const/4 v8, -0x1

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-ne v8, v5, :cond_2

    .line 198
    if-eqz v4, :cond_0

    .line 199
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 201
    :cond_0
    if-eqz v7, :cond_7

    .line 202
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v7

    .line 209
    .end local v0           #bFirst:Z
    .end local v1           #buffer:[B
    .end local v5           #n:I
    .end local v7           #output:Ljava/io/FileOutputStream;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 182
    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v0       #bFirst:Z
    .restart local v1       #buffer:[B
    .restart local v5       #n:I
    .restart local v7       #output:Ljava/io/FileOutputStream;
    :cond_2
    if-eqz v0, :cond_3

    .line 183
    const/4 v0, 0x0

    .line 184
    const/4 v8, 0x2

    if-lt v5, v8, :cond_3

    .line 185
    const/4 v8, 0x0

    :try_start_3
    aget-byte v9, v1, v8

    xor-int/lit8 v9, v9, 0x12

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 186
    const/4 v8, 0x1

    aget-byte v9, v1, v8

    xor-int/lit8 v9, v9, 0x12

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 189
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 193
    .end local v0           #bFirst:Z
    .end local v1           #buffer:[B
    .end local v5           #n:I
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 194
    .end local v7           #output:Ljava/io/FileOutputStream;
    .local v3, ex:Ljava/lang/Exception;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_4
    const-string v8, "MiniWinksTools"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ex: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 198
    if-eqz v4, :cond_4

    .line 199
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 201
    :cond_4
    if-eqz v6, :cond_1

    .line 202
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 205
    :catch_1
    move-exception v8

    goto :goto_1

    .line 196
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 198
    :goto_3
    if-eqz v4, :cond_5

    .line 199
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 201
    :cond_5
    if-eqz v6, :cond_6

    .line 202
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 208
    :cond_6
    :goto_4
    throw v8

    .line 205
    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v0       #bFirst:Z
    .restart local v1       #buffer:[B
    .restart local v5       #n:I
    .restart local v7       #output:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v8

    move-object v6, v7

    .end local v7           #output:Ljava/io/FileOutputStream;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #bFirst:Z
    .end local v1           #buffer:[B
    .end local v5           #n:I
    :catch_3
    move-exception v9

    goto :goto_4

    .line 196
    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v7       #output:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7           #output:Ljava/io/FileOutputStream;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 193
    :catch_4
    move-exception v3

    goto :goto_2

    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v0       #bFirst:Z
    .restart local v1       #buffer:[B
    .restart local v5       #n:I
    .restart local v7       #output:Ljava/io/FileOutputStream;
    :cond_7
    move-object v6, v7

    .end local v7           #output:Ljava/io/FileOutputStream;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 89
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v8, srcFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, destFile:Ljava/io/File;
    const/4 v3, 0x0

    .line 92
    .local v3, input:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 94
    .local v6, output:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 95
    .end local v3           #input:Ljava/io/FileInputStream;
    .local v4, input:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 97
    .end local v6           #output:Ljava/io/FileOutputStream;
    .local v7, output:Ljava/io/FileOutputStream;
    const/16 v9, 0x1000

    :try_start_2
    new-array v0, v9, [B

    .line 98
    .local v0, buffer:[B
    const/4 v5, 0x0

    .line 99
    .local v5, n:I
    :goto_0
    const/4 v9, -0x1

    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    if-ne v9, v5, :cond_2

    .line 109
    if-eqz v4, :cond_0

    .line 110
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 112
    :cond_0
    if-eqz v7, :cond_6

    .line 113
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v6, v7

    .end local v7           #output:Ljava/io/FileOutputStream;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 121
    .end local v0           #buffer:[B
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v5           #n:I
    .restart local v3       #input:Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    return-void

    .line 100
    .end local v3           #input:Ljava/io/FileInputStream;
    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v5       #n:I
    .restart local v7       #output:Ljava/io/FileOutputStream;
    :cond_2
    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v7, v0, v9, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 104
    .end local v0           #buffer:[B
    .end local v5           #n:I
    :catch_0
    move-exception v2

    move-object v6, v7

    .end local v7           #output:Ljava/io/FileOutputStream;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 105
    .end local v4           #input:Ljava/io/FileInputStream;
    .local v2, ex:Ljava/lang/Exception;
    .restart local v3       #input:Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    const-string v9, "MiniWinksTools"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ex: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 109
    if-eqz v3, :cond_3

    .line 110
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 112
    :cond_3
    if-eqz v6, :cond_1

    .line 113
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 116
    :catch_1
    move-exception v2

    .line 117
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    const-string v9, "MiniWinksTools"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ex: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 107
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 109
    :goto_3
    if-eqz v3, :cond_4

    .line 110
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 112
    :cond_4
    if-eqz v6, :cond_5

    .line 113
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 120
    :cond_5
    :goto_4
    throw v9

    .line 116
    :catch_2
    move-exception v2

    .line 117
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    const-string v10, "MiniWinksTools"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "ex: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 116
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #input:Ljava/io/FileInputStream;
    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v5       #n:I
    .restart local v7       #output:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 117
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    const-string v9, "MiniWinksTools"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ex: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2           #ex:Ljava/lang/Exception;
    :cond_6
    move-object v6, v7

    .end local v7           #output:Ljava/io/FileOutputStream;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 107
    .end local v0           #buffer:[B
    .end local v3           #input:Ljava/io/FileInputStream;
    .end local v5           #n:I
    .restart local v4       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3           #input:Ljava/io/FileInputStream;
    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v7       #output:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7           #output:Ljava/io/FileOutputStream;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto :goto_3

    .line 104
    :catch_4
    move-exception v2

    goto/16 :goto_2

    .end local v3           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public static encodeCompanyPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "phone"

    .prologue
    const-wide/16 v12, 0x17

    .line 396
    const-string v6, ""

    .line 397
    .local v6, res:Ljava/lang/String;
    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v7, v6

    .line 412
    .end local v6           #res:Ljava/lang/String;
    .local v7, res:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 400
    .end local v7           #res:Ljava/lang/String;
    .restart local v6       #res:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->getNumfromStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, p:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "8"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 403
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 404
    .local v3, num:J
    div-long v8, v3, v12

    const-wide/16 v10, 0x7

    mul-long v0, v8, v10

    .line 405
    .local v0, a:J
    div-long v8, v3, v12

    mul-long/2addr v8, v12

    sub-long v8, v3, v8

    long-to-int v2, v8

    .line 406
    .local v2, b:I
    const/16 v8, 0xa

    if-ge v2, v8, :cond_1

    .line 407
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "e0"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    move-object v7, v6

    .line 412
    .end local v6           #res:Ljava/lang/String;
    .restart local v7       #res:Ljava/lang/String;
    goto :goto_0

    .line 410
    .end local v7           #res:Ljava/lang/String;
    .restart local v6       #res:Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "e"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public static formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 449
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 450
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 451
    const-string v0, "("

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 452
    const-string v0, ")"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 453
    return-object p0
.end method

.method public static getCurrentTimeStamp()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0xa

    .line 215
    const-string v6, ""

    .line 216
    .local v6, ts:Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 217
    .local v0, d:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v8

    add-int/lit16 v7, v8, 0x76c

    .line 218
    .local v7, year:I
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    .line 219
    .local v4, month:I
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v1

    .line 221
    .local v1, day:I
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v2

    .line 222
    .local v2, hours:I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v3

    .line 223
    .local v3, minutes:I
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v5

    .line 225
    .local v5, seconds:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 226
    if-ge v4, v10, :cond_0

    .line 227
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 230
    :goto_0
    if-ge v1, v10, :cond_1

    .line 231
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 234
    :goto_1
    if-ge v2, v10, :cond_2

    .line 235
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 238
    :goto_2
    if-ge v3, v10, :cond_3

    .line 239
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 242
    :goto_3
    if-ge v5, v10, :cond_4

    .line 243
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 247
    :goto_4
    return-object v6

    .line 229
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 233
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 237
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 241
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 245
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4
.end method

.method public static getCurrentTimeStamp(Ljava/util/Date;)Ljava/lang/String;
    .locals 11
    .parameter "d"

    .prologue
    const/16 v10, 0xa

    .line 251
    const-string v5, ""

    .line 252
    .local v5, ts:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v6, v5

    .line 285
    .end local v5           #ts:Ljava/lang/String;
    .local v6, ts:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 255
    .end local v6           #ts:Ljava/lang/String;
    .restart local v5       #ts:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v8

    add-int/lit16 v7, v8, 0x76c

    .line 256
    .local v7, year:I
    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v8

    add-int/lit8 v3, v8, 0x1

    .line 257
    .local v3, month:I
    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v0

    .line 259
    .local v0, day:I
    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result v1

    .line 260
    .local v1, hours:I
    invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    .line 261
    .local v2, minutes:I
    invoke-virtual {p0}, Ljava/util/Date;->getSeconds()I

    move-result v4

    .line 263
    .local v4, seconds:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 264
    if-ge v3, v10, :cond_1

    .line 265
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 268
    :goto_1
    if-ge v0, v10, :cond_2

    .line 269
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 272
    :goto_2
    if-ge v1, v10, :cond_3

    .line 273
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 276
    :goto_3
    if-ge v2, v10, :cond_4

    .line 277
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 280
    :goto_4
    if-ge v4, v10, :cond_5

    .line 281
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_5
    move-object v6, v5

    .line 285
    .end local v5           #ts:Ljava/lang/String;
    .restart local v6       #ts:Ljava/lang/String;
    goto/16 :goto_0

    .line 267
    .end local v6           #ts:Ljava/lang/String;
    .restart local v5       #ts:Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 271
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 275
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 279
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 283
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5
.end method

.method private static getNumfromStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "str"

    .prologue
    .line 378
    const-string v1, ""

    .line 379
    .local v1, phone:Ljava/lang/String;
    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 389
    .end local v1           #phone:Ljava/lang/String;
    .local v2, phone:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 383
    .end local v2           #phone:Ljava/lang/String;
    .restart local v1       #phone:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    move-object v2, v1

    .line 389
    .end local v1           #phone:Ljava/lang/String;
    .restart local v2       #phone:Ljava/lang/String;
    goto :goto_0

    .line 384
    .end local v2           #phone:Ljava/lang/String;
    .restart local v1       #phone:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    .line 385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 365
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    :cond_0
    const/4 v0, 0x1

    .line 369
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 559
    .line 560
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 559
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 561
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 563
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 564
    const/4 v2, 0x1

    .line 568
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 567
    :cond_0
    const-string v2, "MiniWinksTools"

    const-string v3, "network is not available!!!"

    invoke-static {v2, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 440
    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\d*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const/4 v0, 0x1

    .line 444
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 549
    .line 550
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 549
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 551
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 552
    .local v0, activeNetInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 555
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static needSwitchDownMode(J)Z
    .locals 10
    .parameter "currentTime"

    .prologue
    .line 628
    const-string v4, "switchdownmodeperoid"

    .line 629
    const-wide v5, 0x9a7ec800L

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 628
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v2

    .line 630
    .local v2, switchDownModePeroid:J
    const-string v4, "lastwifitime"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    .line 631
    .local v0, lastWifiTime:J
    sub-long v4, p0, v0

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 632
    const-string v4, "MiniWinksTools"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "It has "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v6, 0x1e

    div-long v6, v2, v6

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 633
    const-string v6, "days not use wifi.So switch."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 632
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const/4 v4, 0x1

    .line 636
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static readInputStream(Ljava/io/InputStream;)[B
    .locals 4
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 416
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 417
    .local v2, outSteam:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 418
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 419
    .local v1, len:I
    if-eqz p0, :cond_0

    .line 420
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 424
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 425
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 426
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 421
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static simpleDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "content"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 326
    const-string v1, ""

    .line 327
    .local v1, code:Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v2, v1

    .line 358
    .end local v1           #code:Ljava/lang/String;
    .local v2, code:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 331
    .end local v2           #code:Ljava/lang/String;
    .restart local v1       #code:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_2

    move-object v2, v1

    .line 358
    .end local v1           #code:Ljava/lang/String;
    .restart local v2       #code:Ljava/lang/String;
    goto :goto_0

    .line 332
    .end local v2           #code:Ljava/lang/String;
    .restart local v1       #code:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 333
    .local v0, ch:C
    if-lt v0, v6, :cond_3

    if-gt v0, v7, :cond_3

    .line 334
    const/16 v4, 0x37

    if-ne v0, v4, :cond_4

    .line 335
    const/16 v0, 0x30

    .line 355
    :cond_3
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 336
    :cond_4
    const/16 v4, 0x36

    if-ne v0, v4, :cond_5

    .line 337
    const/16 v0, 0x31

    goto :goto_2

    .line 338
    :cond_5
    const/16 v4, 0x35

    if-ne v0, v4, :cond_6

    .line 339
    const/16 v0, 0x32

    goto :goto_2

    .line 340
    :cond_6
    const/16 v4, 0x34

    if-ne v0, v4, :cond_7

    .line 341
    const/16 v0, 0x33

    goto :goto_2

    .line 342
    :cond_7
    const/16 v4, 0x33

    if-ne v0, v4, :cond_8

    .line 343
    const/16 v0, 0x34

    goto :goto_2

    .line 344
    :cond_8
    const/16 v4, 0x32

    if-ne v0, v4, :cond_9

    .line 345
    const/16 v0, 0x35

    goto :goto_2

    .line 346
    :cond_9
    const/16 v4, 0x31

    if-ne v0, v4, :cond_a

    .line 347
    const/16 v0, 0x36

    goto :goto_2

    .line 348
    :cond_a
    if-ne v0, v6, :cond_b

    .line 349
    const/16 v0, 0x37

    goto :goto_2

    .line 350
    :cond_b
    if-ne v0, v7, :cond_c

    .line 351
    const/16 v0, 0x38

    goto :goto_2

    .line 352
    :cond_c
    const/16 v4, 0x38

    if-ne v0, v4, :cond_3

    .line 353
    const/16 v0, 0x39

    goto :goto_2
.end method

.method public static simpleEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "content"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 290
    const-string v1, ""

    .line 291
    .local v1, code:Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v2, v1

    .line 321
    .end local v1           #code:Ljava/lang/String;
    .local v2, code:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 295
    .end local v2           #code:Ljava/lang/String;
    .restart local v1       #code:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_2

    move-object v2, v1

    .line 321
    .end local v1           #code:Ljava/lang/String;
    .restart local v2       #code:Ljava/lang/String;
    goto :goto_0

    .line 296
    .end local v2           #code:Ljava/lang/String;
    .restart local v1       #code:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 297
    .local v0, ch:C
    if-lt v0, v6, :cond_3

    if-gt v0, v7, :cond_3

    .line 298
    if-ne v0, v6, :cond_4

    .line 299
    const/16 v0, 0x37

    .line 319
    :cond_3
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 300
    :cond_4
    const/16 v4, 0x31

    if-ne v0, v4, :cond_5

    .line 301
    const/16 v0, 0x36

    goto :goto_2

    .line 302
    :cond_5
    const/16 v4, 0x32

    if-ne v0, v4, :cond_6

    .line 303
    const/16 v0, 0x35

    goto :goto_2

    .line 304
    :cond_6
    const/16 v4, 0x33

    if-ne v0, v4, :cond_7

    .line 305
    const/16 v0, 0x34

    goto :goto_2

    .line 306
    :cond_7
    const/16 v4, 0x34

    if-ne v0, v4, :cond_8

    .line 307
    const/16 v0, 0x33

    goto :goto_2

    .line 308
    :cond_8
    const/16 v4, 0x35

    if-ne v0, v4, :cond_9

    .line 309
    const/16 v0, 0x32

    goto :goto_2

    .line 310
    :cond_9
    const/16 v4, 0x36

    if-ne v0, v4, :cond_a

    .line 311
    const/16 v0, 0x31

    goto :goto_2

    .line 312
    :cond_a
    const/16 v4, 0x37

    if-ne v0, v4, :cond_b

    .line 313
    const/16 v0, 0x30

    goto :goto_2

    .line 314
    :cond_b
    const/16 v4, 0x38

    if-ne v0, v4, :cond_c

    .line 315
    const/16 v0, 0x39

    goto :goto_2

    .line 316
    :cond_c
    if-ne v0, v7, :cond_3

    .line 317
    const/16 v0, 0x38

    goto :goto_2
.end method
