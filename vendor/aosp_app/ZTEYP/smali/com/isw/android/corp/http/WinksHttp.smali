.class public Lcom/isw/android/corp/http/WinksHttp;
.super Ljava/lang/Object;
.source "WinksHttp.java"


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "MiniWinksHttp"

.field public static final WINKS_HOST_SERVER_URL:Ljava/lang/String; = "http://d.zqlx.com:8100/winksWS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkXWinksNotify(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 6
    .parameter "httpResponse"

    .prologue
    .line 93
    const-string v2, ""

    .line 96
    .local v2, xWinksNotifyValue:Ljava/lang/String;
    :try_start_0
    const-string v3, "X-Winks-Notify"

    invoke-interface {p0, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 97
    .local v0, XWinksNotify:[Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 98
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {v2}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    invoke-static {v2}, Lcom/isw/android/corp/http/WinksHttp;->processXWinksNotify(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v0           #XWinksNotify:[Lorg/apache/http/Header;
    :cond_0
    :goto_0
    return-object v2

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const-string v3, "MiniWinksHttp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ex: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static downloadBgURL(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 20
    .parameter "fileUrl"
    .parameter "localFile"
    .parameter "fileLen"

    .prologue
    .line 485
    const/4 v13, 0x1

    .line 486
    .local v13, res:Z
    const/4 v14, 0x0

    .line 487
    .local v14, url:Ljava/net/URL;
    const/4 v8, 0x0

    .line 488
    .local v8, input:Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 489
    .local v11, output:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 492
    .local v4, conn:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v15, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v14           #url:Ljava/net/URL;
    .local v15, url:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 501
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 502
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 504
    const-string v16, "Content-Length"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 505
    .local v5, contentLength:Ljava/lang/String;
    const/4 v9, 0x0

    .line 506
    .local v9, lengthValue:I
    invoke-static {v5}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 507
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 510
    :cond_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 519
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 520
    .end local v11           #output:Ljava/io/FileOutputStream;
    .local v12, output:Ljava/io/FileOutputStream;
    const/16 v16, 0x800

    :try_start_2
    move/from16 v0, v16

    new-array v3, v0, [B

    .line 521
    .local v3, buffer:[B
    const/4 v10, 0x0

    .line 522
    .local v10, n:I
    const/4 v6, 0x0

    .line 523
    .local v6, count:I
    const/4 v2, 0x1

    .line 524
    .local v2, bFirst:Z
    :goto_0
    const/16 v16, -0x1

    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move/from16 v0, v16

    if-ne v0, v10, :cond_6

    .line 536
    if-eqz v9, :cond_1

    if-eq v9, v6, :cond_1

    .line 537
    const/4 v13, 0x0

    .line 540
    :cond_1
    if-nez v6, :cond_2

    .line 541
    const/4 v13, 0x0

    .line 544
    :cond_2
    if-eqz p2, :cond_3

    move/from16 v0, p2

    if-eq v0, v6, :cond_3

    .line 545
    const/4 v13, 0x0

    .line 548
    :cond_3
    const-string v16, "MiniWinksHttp"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "[downloadBgURL]count: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", fileLen: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 551
    const/4 v11, 0x0

    .line 552
    .end local v12           #output:Ljava/io/FileOutputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 553
    const/4 v8, 0x0

    .line 562
    if-eqz v8, :cond_4

    .line 563
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 565
    :cond_4
    if-eqz v11, :cond_b

    .line 566
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v14, v15

    .line 574
    .end local v2           #bFirst:Z
    .end local v3           #buffer:[B
    .end local v5           #contentLength:Ljava/lang/String;
    .end local v6           #count:I
    .end local v9           #lengthValue:I
    .end local v10           #n:I
    .end local v15           #url:Ljava/net/URL;
    .restart local v14       #url:Ljava/net/URL;
    :cond_5
    :goto_1
    const-string v16, "MiniWinksHttp"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "[downloadBgURL] url: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", localFile: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", res="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return v13

    .line 525
    .end local v11           #output:Ljava/io/FileOutputStream;
    .end local v14           #url:Ljava/net/URL;
    .restart local v2       #bFirst:Z
    .restart local v3       #buffer:[B
    .restart local v5       #contentLength:Ljava/lang/String;
    .restart local v6       #count:I
    .restart local v9       #lengthValue:I
    .restart local v10       #n:I
    .restart local v12       #output:Ljava/io/FileOutputStream;
    .restart local v15       #url:Ljava/net/URL;
    :cond_6
    if-eqz v2, :cond_7

    .line 526
    const/4 v2, 0x0

    .line 527
    const/16 v16, 0x2

    move/from16 v0, v16

    if-lt v10, v0, :cond_7

    .line 528
    const/16 v16, 0x0

    :try_start_5
    aget-byte v17, v3, v16

    xor-int/lit8 v17, v17, 0x12

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v3, v16

    .line 529
    const/16 v16, 0x1

    aget-byte v17, v3, v16

    xor-int/lit8 v17, v17, 0x12

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v3, v16

    .line 532
    :cond_7
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v3, v0, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 533
    add-int/2addr v6, v10

    goto/16 :goto_0

    .line 555
    .end local v2           #bFirst:Z
    .end local v3           #buffer:[B
    .end local v5           #contentLength:Ljava/lang/String;
    .end local v6           #count:I
    .end local v9           #lengthValue:I
    .end local v10           #n:I
    .end local v12           #output:Ljava/io/FileOutputStream;
    .end local v15           #url:Ljava/net/URL;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    .restart local v14       #url:Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 556
    .local v7, ex:Ljava/lang/Exception;
    :goto_2
    const/4 v13, 0x0

    .line 557
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 558
    const-string v16, "MiniWinksHttp"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "[downloadBgURL]ex: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 562
    if-eqz v8, :cond_8

    .line 563
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 565
    :cond_8
    if-eqz v11, :cond_5

    .line 566
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 569
    :catch_1
    move-exception v7

    .line 570
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 571
    const-string v16, "MiniWinksHttp"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "[downloadBgURL]ex: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 560
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    .line 562
    :goto_3
    if-eqz v8, :cond_9

    .line 563
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 565
    :cond_9
    if-eqz v11, :cond_a

    .line 566
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 573
    :cond_a
    :goto_4
    throw v16

    .line 569
    :catch_2
    move-exception v7

    .line 570
    .restart local v7       #ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 571
    const-string v17, "MiniWinksHttp"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "[downloadBgURL]ex: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 569
    .end local v7           #ex:Ljava/lang/Exception;
    .end local v14           #url:Ljava/net/URL;
    .restart local v2       #bFirst:Z
    .restart local v3       #buffer:[B
    .restart local v5       #contentLength:Ljava/lang/String;
    .restart local v6       #count:I
    .restart local v9       #lengthValue:I
    .restart local v10       #n:I
    .restart local v15       #url:Ljava/net/URL;
    :catch_3
    move-exception v7

    .line 570
    .restart local v7       #ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 571
    const-string v16, "MiniWinksHttp"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "[downloadBgURL]ex: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .end local v7           #ex:Ljava/lang/Exception;
    :cond_b
    move-object v14, v15

    .end local v15           #url:Ljava/net/URL;
    .restart local v14       #url:Ljava/net/URL;
    goto/16 :goto_1

    .line 560
    .end local v2           #bFirst:Z
    .end local v3           #buffer:[B
    .end local v5           #contentLength:Ljava/lang/String;
    .end local v6           #count:I
    .end local v9           #lengthValue:I
    .end local v10           #n:I
    .end local v14           #url:Ljava/net/URL;
    .restart local v15       #url:Ljava/net/URL;
    :catchall_1
    move-exception v16

    move-object v14, v15

    .end local v15           #url:Ljava/net/URL;
    .restart local v14       #url:Ljava/net/URL;
    goto :goto_3

    .end local v11           #output:Ljava/io/FileOutputStream;
    .end local v14           #url:Ljava/net/URL;
    .restart local v5       #contentLength:Ljava/lang/String;
    .restart local v9       #lengthValue:I
    .restart local v12       #output:Ljava/io/FileOutputStream;
    .restart local v15       #url:Ljava/net/URL;
    :catchall_2
    move-exception v16

    move-object v11, v12

    .end local v12           #output:Ljava/io/FileOutputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15           #url:Ljava/net/URL;
    .restart local v14       #url:Ljava/net/URL;
    goto :goto_3

    .line 555
    .end local v5           #contentLength:Ljava/lang/String;
    .end local v9           #lengthValue:I
    .end local v14           #url:Ljava/net/URL;
    .restart local v15       #url:Ljava/net/URL;
    :catch_4
    move-exception v7

    move-object v14, v15

    .end local v15           #url:Ljava/net/URL;
    .restart local v14       #url:Ljava/net/URL;
    goto/16 :goto_2

    .end local v11           #output:Ljava/io/FileOutputStream;
    .end local v14           #url:Ljava/net/URL;
    .restart local v5       #contentLength:Ljava/lang/String;
    .restart local v9       #lengthValue:I
    .restart local v12       #output:Ljava/io/FileOutputStream;
    .restart local v15       #url:Ljava/net/URL;
    :catch_5
    move-exception v7

    move-object v11, v12

    .end local v12           #output:Ljava/io/FileOutputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15           #url:Ljava/net/URL;
    .restart local v14       #url:Ljava/net/URL;
    goto/16 :goto_2
.end method

.method public static downloadIconURL(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .parameter "fileUrl"
    .parameter "localFile"

    .prologue
    .line 288
    const/4 v15, 0x1

    .line 289
    .local v15, res:Z
    const/16 v16, 0x0

    .line 290
    .local v16, url:Ljava/net/URL;
    const/4 v10, 0x0

    .line 291
    .local v10, input:Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 292
    .local v13, output:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 294
    .local v4, conn:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v16           #url:Ljava/net/URL;
    .local v17, url:Ljava/net/URL;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 305
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 306
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 308
    const-string v18, "Content-Length"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, contentLength:Ljava/lang/String;
    const/4 v11, 0x0

    .line 310
    .local v11, lengthValue:I
    invoke-static {v5}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 311
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 314
    :cond_0
    const-string v18, "Content-Type"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 315
    .local v6, contentType:Ljava/lang/String;
    if-nez v6, :cond_6

    .line 316
    const-string v6, ""

    .line 317
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 329
    :goto_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 338
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 340
    .end local v13           #output:Ljava/io/FileOutputStream;
    .local v14, output:Ljava/io/FileOutputStream;
    const/16 v18, 0x1000

    :try_start_2
    move/from16 v0, v18

    new-array v3, v0, [B

    .line 341
    .local v3, buffer:[B
    const/4 v12, 0x0

    .line 342
    .local v12, n:I
    const/4 v7, 0x0

    .line 343
    .local v7, count:I
    const/4 v2, 0x1

    .line 344
    .local v2, bFirst:Z
    :goto_1
    const/16 v18, -0x1

    invoke-virtual {v10, v3}, Ljava/io/InputStream;->read([B)I

    move-result v12

    move/from16 v0, v18

    if-ne v0, v12, :cond_9

    .line 357
    if-eqz v11, :cond_1

    if-eq v11, v7, :cond_1

    .line 358
    const/4 v15, 0x0

    .line 360
    :cond_1
    if-nez v7, :cond_2

    .line 361
    const/4 v15, 0x0

    .line 363
    :cond_2
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 364
    const/4 v13, 0x0

    .line 366
    .end local v14           #output:Ljava/io/FileOutputStream;
    .restart local v13       #output:Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 367
    const/4 v10, 0x0

    .line 377
    if-eqz v10, :cond_3

    .line 378
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 380
    :cond_3
    if-eqz v13, :cond_e

    .line 381
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v16, v17

    .line 390
    .end local v2           #bFirst:Z
    .end local v3           #buffer:[B
    .end local v5           #contentLength:Ljava/lang/String;
    .end local v6           #contentType:Ljava/lang/String;
    .end local v7           #count:I
    .end local v11           #lengthValue:I
    .end local v12           #n:I
    .end local v17           #url:Ljava/net/URL;
    .restart local v16       #url:Ljava/net/URL;
    :cond_4
    :goto_2
    const-string v18, "MiniWinksHttp"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[downloadIconURL] url: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", localFile: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", res="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    if-nez v15, :cond_5

    .line 396
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 398
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 402
    .end local v9           #file:Ljava/io/File;
    :cond_5
    return v15

    .line 319
    .end local v16           #url:Ljava/net/URL;
    .restart local v5       #contentLength:Ljava/lang/String;
    .restart local v6       #contentType:Ljava/lang/String;
    .restart local v11       #lengthValue:I
    .restart local v17       #url:Ljava/net/URL;
    :cond_6
    :try_start_5
    const-string v18, "image/gif"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 320
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "gif"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 321
    goto/16 :goto_0

    :cond_7
    const-string v18, "image/png"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 322
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "png"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 323
    goto/16 :goto_0

    .line 324
    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object p1

    goto/16 :goto_0

    .line 345
    .end local v13           #output:Ljava/io/FileOutputStream;
    .restart local v2       #bFirst:Z
    .restart local v3       #buffer:[B
    .restart local v7       #count:I
    .restart local v12       #n:I
    .restart local v14       #output:Ljava/io/FileOutputStream;
    :cond_9
    if-eqz v2, :cond_a

    .line 346
    const/4 v2, 0x0

    .line 347
    const/16 v18, 0x2

    move/from16 v0, v18

    if-lt v12, v0, :cond_a

    .line 348
    const/16 v18, 0x0

    :try_start_6
    aget-byte v19, v3, v18

    xor-int/lit8 v19, v19, 0x12

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v18

    .line 349
    const/16 v18, 0x1

    aget-byte v19, v3, v18

    xor-int/lit8 v19, v19, 0x12

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v18

    .line 353
    :cond_a
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v3, v0, v12}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 354
    add-int/2addr v7, v12

    goto/16 :goto_1

    .line 370
    .end local v2           #bFirst:Z
    .end local v3           #buffer:[B
    .end local v5           #contentLength:Ljava/lang/String;
    .end local v6           #contentType:Ljava/lang/String;
    .end local v7           #count:I
    .end local v11           #lengthValue:I
    .end local v12           #n:I
    .end local v14           #output:Ljava/io/FileOutputStream;
    .end local v17           #url:Ljava/net/URL;
    .restart local v13       #output:Ljava/io/FileOutputStream;
    .restart local v16       #url:Ljava/net/URL;
    :catch_0
    move-exception v8

    .line 371
    .local v8, ex:Ljava/lang/Exception;
    :goto_3
    const/4 v15, 0x0

    .line 372
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    const-string v18, "MiniWinksHttp"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[downloadIconURL]ex: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 377
    if-eqz v10, :cond_b

    .line 378
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 380
    :cond_b
    if-eqz v13, :cond_4

    .line 381
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    .line 384
    :catch_1
    move-exception v8

    .line 385
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    const-string v18, "MiniWinksHttp"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[downloadIconURL]ex: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 375
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    .line 377
    :goto_4
    if-eqz v10, :cond_c

    .line 378
    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 380
    :cond_c
    if-eqz v13, :cond_d

    .line 381
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 388
    :cond_d
    :goto_5
    throw v18

    .line 384
    :catch_2
    move-exception v8

    .line 385
    .restart local v8       #ex:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    const-string v19, "MiniWinksHttp"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "[downloadIconURL]ex: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 384
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v16           #url:Ljava/net/URL;
    .restart local v2       #bFirst:Z
    .restart local v3       #buffer:[B
    .restart local v5       #contentLength:Ljava/lang/String;
    .restart local v6       #contentType:Ljava/lang/String;
    .restart local v7       #count:I
    .restart local v11       #lengthValue:I
    .restart local v12       #n:I
    .restart local v17       #url:Ljava/net/URL;
    :catch_3
    move-exception v8

    .line 385
    .restart local v8       #ex:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    const-string v18, "MiniWinksHttp"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[downloadIconURL]ex: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .end local v8           #ex:Ljava/lang/Exception;
    :cond_e
    move-object/from16 v16, v17

    .end local v17           #url:Ljava/net/URL;
    .restart local v16       #url:Ljava/net/URL;
    goto/16 :goto_2

    .line 375
    .end local v2           #bFirst:Z
    .end local v3           #buffer:[B
    .end local v5           #contentLength:Ljava/lang/String;
    .end local v6           #contentType:Ljava/lang/String;
    .end local v7           #count:I
    .end local v11           #lengthValue:I
    .end local v12           #n:I
    .end local v16           #url:Ljava/net/URL;
    .restart local v17       #url:Ljava/net/URL;
    :catchall_1
    move-exception v18

    move-object/from16 v16, v17

    .end local v17           #url:Ljava/net/URL;
    .restart local v16       #url:Ljava/net/URL;
    goto :goto_4

    .end local v13           #output:Ljava/io/FileOutputStream;
    .end local v16           #url:Ljava/net/URL;
    .restart local v5       #contentLength:Ljava/lang/String;
    .restart local v6       #contentType:Ljava/lang/String;
    .restart local v11       #lengthValue:I
    .restart local v14       #output:Ljava/io/FileOutputStream;
    .restart local v17       #url:Ljava/net/URL;
    :catchall_2
    move-exception v18

    move-object v13, v14

    .end local v14           #output:Ljava/io/FileOutputStream;
    .restart local v13       #output:Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .end local v17           #url:Ljava/net/URL;
    .restart local v16       #url:Ljava/net/URL;
    goto :goto_4

    .line 370
    .end local v5           #contentLength:Ljava/lang/String;
    .end local v6           #contentType:Ljava/lang/String;
    .end local v11           #lengthValue:I
    .end local v16           #url:Ljava/net/URL;
    .restart local v17       #url:Ljava/net/URL;
    :catch_4
    move-exception v8

    move-object/from16 v16, v17

    .end local v17           #url:Ljava/net/URL;
    .restart local v16       #url:Ljava/net/URL;
    goto/16 :goto_3

    .end local v13           #output:Ljava/io/FileOutputStream;
    .end local v16           #url:Ljava/net/URL;
    .restart local v5       #contentLength:Ljava/lang/String;
    .restart local v6       #contentType:Ljava/lang/String;
    .restart local v11       #lengthValue:I
    .restart local v14       #output:Ljava/io/FileOutputStream;
    .restart local v17       #url:Ljava/net/URL;
    :catch_5
    move-exception v8

    move-object v13, v14

    .end local v14           #output:Ljava/io/FileOutputStream;
    .restart local v13       #output:Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .end local v17           #url:Ljava/net/URL;
    .restart local v16       #url:Ljava/net/URL;
    goto/16 :goto_3
.end method

.method public static downloadImgURL(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .parameter "fileUrl"
    .parameter "localFile"

    .prologue
    .line 405
    const/4 v13, 0x1

    .line 406
    .local v13, res:Z
    const/4 v14, 0x0

    .line 407
    .local v14, url:Ljava/net/URL;
    const/4 v8, 0x0

    .line 408
    .local v8, input:Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 409
    .local v11, output:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 411
    .local v3, conn:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v15, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    .end local v14           #url:Ljava/net/URL;
    .local v15, url:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 413
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 414
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 416
    const-string v16, "Content-Length"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, contentLength:Ljava/lang/String;
    const/4 v9, 0x0

    .line 418
    .local v9, lengthValue:I
    invoke-static {v4}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 419
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 421
    :cond_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 423
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 425
    .end local v11           #output:Ljava/io/FileOutputStream;
    .local v12, output:Ljava/io/FileOutputStream;
    const/16 v16, 0x1000

    :try_start_2
    move/from16 v0, v16

    new-array v2, v0, [B

    .line 426
    .local v2, buffer:[B
    const/4 v10, 0x0

    .line 427
    .local v10, n:I
    const/4 v5, 0x0

    .line 428
    .local v5, count:I
    :goto_0
    const/16 v16, -0x1

    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move/from16 v0, v16

    if-ne v0, v10, :cond_6

    .line 433
    if-eqz v9, :cond_1

    if-eq v9, v5, :cond_1

    .line 434
    const/4 v13, 0x0

    .line 436
    :cond_1
    if-nez v5, :cond_2

    .line 437
    const/4 v13, 0x0

    .line 439
    :cond_2
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 440
    const/4 v11, 0x0

    .line 442
    .end local v12           #output:Ljava/io/FileOutputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 443
    const/4 v8, 0x0

    .line 453
    if-eqz v8, :cond_3

    .line 454
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 456
    :cond_3
    if-eqz v11, :cond_a

    .line 457
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v14, v15

    .line 466
    .end local v2           #buffer:[B
    .end local v4           #contentLength:Ljava/lang/String;
    .end local v5           #count:I
    .end local v9           #lengthValue:I
    .end local v10           #n:I
    .end local v15           #url:Ljava/net/URL;
    .restart local v14       #url:Ljava/net/URL;
    :cond_4
    :goto_1
    const-string v16, "MiniWinksHttp"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "[downloadIconURL] url: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", localFile: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", res="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    if-nez v13, :cond_5

    .line 472
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 474
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 478
    .end local v7           #file:Ljava/io/File;
    :cond_5
    return v13

    .line 429
    .end local v11           #output:Ljava/io/FileOutputStream;
    .end local v14           #url:Ljava/net/URL;
    .restart local v2       #buffer:[B
    .restart local v4       #contentLength:Ljava/lang/String;
    .restart local v5       #count:I
    .restart local v9       #lengthValue:I
    .restart local v10       #n:I
    .restart local v12       #output:Ljava/io/FileOutputStream;
    .restart local v15       #url:Ljava/net/URL;
    :cond_6
    const/16 v16, 0x0

    :try_start_5
    move/from16 v0, v16

    invoke-virtual {v12, v2, v0, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 430
    add-int/2addr v5, v10

    goto :goto_0

    .line 446
    .end local v2           #buffer:[B
    .end local v4           #contentLength:Ljava/lang/String;
    .end local v5           #count:I
    .end local v9           #lengthValue:I
    .end local v10           #n:I
    .end local v12           #output:Ljava/io/FileOutputStream;
    .end local v15           #url:Ljava/net/URL;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    .restart local v14       #url:Ljava/net/URL;
    :catch_0
    move-exception v6

    .line 447
    .local v6, ex:Ljava/lang/Exception;
    :goto_2
    const/4 v13, 0x0

    .line 448
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 449
    const-string v16, "MiniWinksHttp"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "[downloadIconURL]ex: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 453
    if-eqz v8, :cond_7

    .line 454
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 456
    :cond_7
    if-eqz v11, :cond_4

    .line 457
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 460
    :catch_1
    move-exception v6

    .line 461
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 462
    const-string v16, "MiniWinksHttp"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "[downloadIconURL]ex: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 451
    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    .line 453
    :goto_3
    if-eqz v8, :cond_8

    .line 454
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 456
    :cond_8
    if-eqz v11, :cond_9

    .line 457
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 464
    :cond_9
    :goto_4
    throw v16

    .line 460
    :catch_2
    move-exception v6

    .line 461
    .restart local v6       #ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 462
    const-string v17, "MiniWinksHttp"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "[downloadIconURL]ex: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 460
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v14           #url:Ljava/net/URL;
    .restart local v2       #buffer:[B
    .restart local v4       #contentLength:Ljava/lang/String;
    .restart local v5       #count:I
    .restart local v9       #lengthValue:I
    .restart local v10       #n:I
    .restart local v15       #url:Ljava/net/URL;
    :catch_3
    move-exception v6

    .line 461
    .restart local v6       #ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 462
    const-string v16, "MiniWinksHttp"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "[downloadIconURL]ex: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6           #ex:Ljava/lang/Exception;
    :cond_a
    move-object v14, v15

    .end local v15           #url:Ljava/net/URL;
    .restart local v14       #url:Ljava/net/URL;
    goto/16 :goto_1

    .line 451
    .end local v2           #buffer:[B
    .end local v4           #contentLength:Ljava/lang/String;
    .end local v5           #count:I
    .end local v9           #lengthValue:I
    .end local v10           #n:I
    .end local v14           #url:Ljava/net/URL;
    .restart local v15       #url:Ljava/net/URL;
    :catchall_1
    move-exception v16

    move-object v14, v15

    .end local v15           #url:Ljava/net/URL;
    .restart local v14       #url:Ljava/net/URL;
    goto :goto_3

    .end local v11           #output:Ljava/io/FileOutputStream;
    .end local v14           #url:Ljava/net/URL;
    .restart local v4       #contentLength:Ljava/lang/String;
    .restart local v9       #lengthValue:I
    .restart local v12       #output:Ljava/io/FileOutputStream;
    .restart local v15       #url:Ljava/net/URL;
    :catchall_2
    move-exception v16

    move-object v11, v12

    .end local v12           #output:Ljava/io/FileOutputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15           #url:Ljava/net/URL;
    .restart local v14       #url:Ljava/net/URL;
    goto :goto_3

    .line 446
    .end local v4           #contentLength:Ljava/lang/String;
    .end local v9           #lengthValue:I
    .end local v14           #url:Ljava/net/URL;
    .restart local v15       #url:Ljava/net/URL;
    :catch_4
    move-exception v6

    move-object v14, v15

    .end local v15           #url:Ljava/net/URL;
    .restart local v14       #url:Ljava/net/URL;
    goto/16 :goto_2

    .end local v11           #output:Ljava/io/FileOutputStream;
    .end local v14           #url:Ljava/net/URL;
    .restart local v4       #contentLength:Ljava/lang/String;
    .restart local v9       #lengthValue:I
    .restart local v12       #output:Ljava/io/FileOutputStream;
    .restart local v15       #url:Ljava/net/URL;
    :catch_5
    move-exception v6

    move-object v11, v12

    .end local v12           #output:Ljava/io/FileOutputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15           #url:Ljava/net/URL;
    .restart local v14       #url:Ljava/net/URL;
    goto/16 :goto_2
.end method

.method public static downloadOffsetDataURL(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 22
    .parameter "fileUrl"
    .parameter "localFile"
    .parameter "length"

    .prologue
    .line 582
    const/4 v15, 0x0

    .line 583
    .local v15, res:Z
    const/16 v16, 0x0

    .line 584
    .local v16, url:Ljava/net/URL;
    const/4 v9, 0x0

    .line 585
    .local v9, input:Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 586
    .local v11, output:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 587
    .local v3, conn:Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 590
    .local v7, file:Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    .end local v7           #file:Ljava/io/File;
    .local v8, file:Ljava/io/File;
    const-wide/16 v13, 0x0

    .line 592
    .local v13, pos:J
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 593
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v13

    .line 594
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "?"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "pos="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 595
    const-string v18, "MiniWinksHttp"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[downloadCompanyDataURL] pos: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_0
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 605
    .end local v16           #url:Ljava/net/URL;
    .local v17, url:Ljava/net/URL;
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 607
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 608
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 609
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 610
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-lez v18, :cond_4

    .line 611
    new-instance v12, Ljava/io/FileOutputStream;

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-direct {v12, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .end local v11           #output:Ljava/io/FileOutputStream;
    .local v12, output:Ljava/io/FileOutputStream;
    move-object v11, v12

    .line 616
    .end local v12           #output:Ljava/io/FileOutputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    :goto_0
    const/16 v18, 0x800

    move/from16 v0, v18

    new-array v2, v0, [B

    .line 617
    .local v2, buffer:[B
    const/4 v10, 0x0

    .line 618
    .local v10, n:I
    move-wide v4, v13

    .line 619
    .local v4, count:J
    :goto_1
    const/16 v18, -0x1

    invoke-virtual {v9, v2}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move/from16 v0, v18

    if-ne v0, v10, :cond_5

    .line 624
    cmp-long v18, v4, p2

    if-nez v18, :cond_1

    .line 625
    const/4 v15, 0x1

    .line 628
    :cond_1
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 629
    const/4 v11, 0x0

    .line 630
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 631
    const/4 v9, 0x0

    .line 639
    if-eqz v9, :cond_2

    .line 640
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 642
    :cond_2
    if-eqz v11, :cond_9

    .line 643
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v7, v8

    .end local v8           #file:Ljava/io/File;
    .restart local v7       #file:Ljava/io/File;
    move-object/from16 v16, v17

    .line 651
    .end local v2           #buffer:[B
    .end local v4           #count:J
    .end local v10           #n:I
    .end local v13           #pos:J
    .end local v17           #url:Ljava/net/URL;
    .restart local v16       #url:Ljava/net/URL;
    :cond_3
    :goto_2
    const-string v18, "MiniWinksHttp"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[downloadOffsetDataURL] url: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", res: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    return v15

    .line 613
    .end local v7           #file:Ljava/io/File;
    .end local v16           #url:Ljava/net/URL;
    .restart local v8       #file:Ljava/io/File;
    .restart local v13       #pos:J
    .restart local v17       #url:Ljava/net/URL;
    :cond_4
    :try_start_4
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .end local v11           #output:Ljava/io/FileOutputStream;
    .restart local v12       #output:Ljava/io/FileOutputStream;
    move-object v11, v12

    .end local v12           #output:Ljava/io/FileOutputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 620
    .restart local v2       #buffer:[B
    .restart local v4       #count:J
    .restart local v10       #n:I
    :cond_5
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v2, v0, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 621
    int-to-long v0, v10

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    goto :goto_1

    .line 633
    .end local v2           #buffer:[B
    .end local v4           #count:J
    .end local v8           #file:Ljava/io/File;
    .end local v10           #n:I
    .end local v13           #pos:J
    .end local v17           #url:Ljava/net/URL;
    .restart local v7       #file:Ljava/io/File;
    .restart local v16       #url:Ljava/net/URL;
    :catch_0
    move-exception v6

    .line 634
    .local v6, ex:Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 635
    const-string v18, "MiniWinksHttp"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[downloadOffsetDataURL]ex: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 639
    if-eqz v9, :cond_6

    .line 640
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 642
    :cond_6
    if-eqz v11, :cond_3

    .line 643
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 646
    :catch_1
    move-exception v6

    .line 647
    .local v6, ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 648
    const-string v18, "MiniWinksHttp"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[downloadOffsetDataURL]ex: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 637
    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    .line 639
    :goto_4
    if-eqz v9, :cond_7

    .line 640
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 642
    :cond_7
    if-eqz v11, :cond_8

    .line 643
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 650
    :cond_8
    :goto_5
    throw v18

    .line 646
    :catch_2
    move-exception v6

    .line 647
    .restart local v6       #ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 648
    const-string v19, "MiniWinksHttp"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "[downloadOffsetDataURL]ex: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 646
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v7           #file:Ljava/io/File;
    .end local v16           #url:Ljava/net/URL;
    .restart local v2       #buffer:[B
    .restart local v4       #count:J
    .restart local v8       #file:Ljava/io/File;
    .restart local v10       #n:I
    .restart local v13       #pos:J
    .restart local v17       #url:Ljava/net/URL;
    :catch_3
    move-exception v6

    .line 647
    .restart local v6       #ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 648
    const-string v18, "MiniWinksHttp"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[downloadOffsetDataURL]ex: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6           #ex:Ljava/lang/Exception;
    :cond_9
    move-object v7, v8

    .end local v8           #file:Ljava/io/File;
    .restart local v7       #file:Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17           #url:Ljava/net/URL;
    .restart local v16       #url:Ljava/net/URL;
    goto/16 :goto_2

    .line 637
    .end local v2           #buffer:[B
    .end local v4           #count:J
    .end local v7           #file:Ljava/io/File;
    .end local v10           #n:I
    .restart local v8       #file:Ljava/io/File;
    :catchall_1
    move-exception v18

    move-object v7, v8

    .end local v8           #file:Ljava/io/File;
    .restart local v7       #file:Ljava/io/File;
    goto :goto_4

    .end local v7           #file:Ljava/io/File;
    .end local v16           #url:Ljava/net/URL;
    .restart local v8       #file:Ljava/io/File;
    .restart local v17       #url:Ljava/net/URL;
    :catchall_2
    move-exception v18

    move-object v7, v8

    .end local v8           #file:Ljava/io/File;
    .restart local v7       #file:Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17           #url:Ljava/net/URL;
    .restart local v16       #url:Ljava/net/URL;
    goto :goto_4

    .line 633
    .end local v7           #file:Ljava/io/File;
    .restart local v8       #file:Ljava/io/File;
    :catch_4
    move-exception v6

    move-object v7, v8

    .end local v8           #file:Ljava/io/File;
    .restart local v7       #file:Ljava/io/File;
    goto/16 :goto_3

    .end local v7           #file:Ljava/io/File;
    .end local v16           #url:Ljava/net/URL;
    .restart local v8       #file:Ljava/io/File;
    .restart local v17       #url:Ljava/net/URL;
    :catch_5
    move-exception v6

    move-object v7, v8

    .end local v8           #file:Ljava/io/File;
    .restart local v7       #file:Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17           #url:Ljava/net/URL;
    .restart local v16       #url:Ljava/net/URL;
    goto/16 :goto_3
.end method

.method private static getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 4

    .prologue
    const v2, 0xea60

    .line 264
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 265
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 268
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 269
    const/16 v2, 0x2800

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 271
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 272
    invoke-static {}, Lcom/isw/android/corp/services/WinksEngine;->getInstance()Lcom/isw/android/corp/services/WinksEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isw/android/corp/services/WinksEngine;->checkIsChinaTelecom()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/isw/android/corp/services/WinksEngine;->getInstance()Lcom/isw/android/corp/services/WinksEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isw/android/corp/services/WinksEngine;->isCTWap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    const-string v2, "MiniWinksHttp"

    const-string v3, "[getHttpClient]set proxy!"

    invoke-static {v2, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v1, Lorg/apache/http/HttpHost;

    const-string v2, "10.0.0.200"

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 275
    .local v1, proxy:Lorg/apache/http/HttpHost;
    const-string v2, "http.route.default-proxy"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 280
    .end local v1           #proxy:Lorg/apache/http/HttpHost;
    :cond_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v2
.end method

.method private static processXWinksNotify(Ljava/lang/String;)V
    .locals 1
    .parameter "xWinksNotifyValue"

    .prologue
    .line 70
    new-instance v0, Lcom/isw/android/corp/http/WinksHttp$1;

    invoke-direct {v0, p0}, Lcom/isw/android/corp/http/WinksHttp$1;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Lcom/isw/android/corp/http/WinksHttp$1;->start()V

    .line 90
    return-void
.end method

.method public static sendCallHistoryRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "url"
    .parameter "postBody"

    .prologue
    .line 213
    const/4 v6, 0x0

    .line 214
    .local v6, httpResponse:Lorg/apache/http/HttpResponse;
    const/4 v4, 0x0

    .line 215
    .local v4, httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    const/4 v0, 0x0

    .line 216
    .local v0, entity:Lorg/apache/http/entity/StringEntity;
    const-string v7, ""

    .line 217
    .local v7, response:Ljava/lang/String;
    const/4 v8, 0x0

    .line 221
    .local v8, statusCode:I
    const-string v9, "?"

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 222
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "an="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->an:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "av="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 223
    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->av:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "adccompany="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->adc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 224
    const-string v10, "&imei="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->imei:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "model="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->model:Ljava/lang/String;

    const-string v11, " "

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ct="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 225
    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->ct:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 222
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 235
    :goto_0
    :try_start_0
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v4           #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    .local v5, httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    const-string v9, "UTF-8"

    invoke-direct {v1, p1, v9}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    .end local v0           #entity:Lorg/apache/http/entity/StringEntity;
    .local v1, entity:Lorg/apache/http/entity/StringEntity;
    :try_start_2
    invoke-virtual {v5, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 239
    invoke-static {}, Lcom/isw/android/corp/http/WinksHttp;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 241
    .local v3, httpCLient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v3, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 243
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 244
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 245
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    .line 246
    invoke-static {v6}, Lcom/isw/android/corp/http/WinksHttp;->checkXWinksNotify(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .end local v1           #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v0       #entity:Lorg/apache/http/entity/StringEntity;
    move-object v4, v5

    .line 255
    .end local v3           #httpCLient:Lorg/apache/http/client/HttpClient;
    .end local v5           #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    .restart local v4       #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    :goto_1
    const-string v9, "MiniWinksHttp"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Request: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", statusCode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/16 v9, 0xc8

    if-eq v9, v8, :cond_0

    .line 258
    const-string v7, ""

    .line 260
    :cond_0
    return-object v7

    .line 228
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "an="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->an:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "av="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 229
    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->av:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "adccompany="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->adc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 230
    const-string v10, "&imei="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->imei:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "model="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->model:Ljava/lang/String;

    const-string v11, " "

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ct="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 231
    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->ct:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 228
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 249
    :catch_0
    move-exception v2

    .line 250
    .local v2, ex:Ljava/lang/Exception;
    :goto_2
    const-string v7, ""

    .line 251
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    const-string v9, "MiniWinksHttp"

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

    goto/16 :goto_1

    .line 249
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v4           #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    .restart local v5       #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5           #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    .restart local v4       #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_2

    .end local v0           #entity:Lorg/apache/http/entity/StringEntity;
    .end local v4           #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    .restart local v1       #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v5       #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1           #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v0       #entity:Lorg/apache/http/entity/StringEntity;
    move-object v4, v5

    .end local v5           #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    .restart local v4       #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_2

    .end local v0           #entity:Lorg/apache/http/entity/StringEntity;
    .end local v4           #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    .restart local v1       #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v3       #httpCLient:Lorg/apache/http/client/HttpClient;
    .restart local v5       #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    :cond_2
    move-object v0, v1

    .end local v1           #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v0       #entity:Lorg/apache/http/entity/StringEntity;
    move-object v4, v5

    .end local v5           #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    .restart local v4       #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    goto/16 :goto_1
.end method

.method public static sendRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "url"

    .prologue
    .line 118
    const/4 v2, 0x0

    .line 119
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    const/4 v3, 0x0

    .line 120
    .local v3, httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    const-string v5, ""

    .line 121
    .local v5, response:Ljava/lang/String;
    const/4 v6, 0x0

    .line 125
    .local v6, statusCode:I
    const-string v7, "?"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "an="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/isw/android/corp/util/WinksApplication;->an:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "av="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 127
    sget-object v8, Lcom/isw/android/corp/util/WinksApplication;->av:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "adccompany="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/isw/android/corp/util/WinksApplication;->adc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 128
    const-string v8, "&ossdk="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/isw/android/corp/util/WinksApplication;->ossdk:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 129
    const-string v8, "&imei="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/isw/android/corp/util/WinksApplication;->imei:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "model="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/isw/android/corp/util/WinksApplication;->model:Ljava/lang/String;

    const-string v9, " "

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ct="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 130
    sget-object v8, Lcom/isw/android/corp/util/WinksApplication;->ct:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 126
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 141
    :goto_0
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v3           #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    .local v4, httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-static {}, Lcom/isw/android/corp/http/WinksHttp;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 145
    .local v1, httpCLient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 147
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 148
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 149
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-static {v2}, Lcom/isw/android/corp/http/WinksHttp;->checkXWinksNotify(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 159
    .end local v1           #httpCLient:Lorg/apache/http/client/HttpClient;
    .end local v4           #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    :goto_1
    const-string v7, "MiniWinksHttp"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Request: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", statusCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-object v5

    .line 133
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "an="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/isw/android/corp/util/WinksApplication;->an:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "av="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 134
    sget-object v8, Lcom/isw/android/corp/util/WinksApplication;->av:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "adccompany="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/isw/android/corp/util/WinksApplication;->adc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 135
    const-string v8, "&ossdk="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/isw/android/corp/util/WinksApplication;->ossdk:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 136
    const-string v8, "&imei="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/isw/android/corp/util/WinksApplication;->imei:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "model="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/isw/android/corp/util/WinksApplication;->model:Ljava/lang/String;

    const-string v9, " "

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ct="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 137
    sget-object v8, Lcom/isw/android/corp/util/WinksApplication;->ct:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 133
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, ex:Ljava/lang/Exception;
    :goto_2
    const-string v5, ""

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    const-string v7, "MiniWinksHttp"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ex: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 153
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4           #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_2

    .end local v3           #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    .restart local v1       #httpCLient:Lorg/apache/http/client/HttpClient;
    .restart local v4       #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    :cond_1
    move-object v3, v4

    .end local v4           #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_1
.end method

.method public static sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "url"
    .parameter "postBody"

    .prologue
    .line 164
    const/4 v6, 0x0

    .line 165
    .local v6, httpResponse:Lorg/apache/http/HttpResponse;
    const/4 v4, 0x0

    .line 166
    .local v4, httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    const/4 v0, 0x0

    .line 167
    .local v0, entity:Lorg/apache/http/entity/StringEntity;
    const-string v7, ""

    .line 168
    .local v7, response:Ljava/lang/String;
    const/4 v8, 0x0

    .line 172
    .local v8, statusCode:I
    const-string v9, "?"

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 173
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "an="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->an:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "av="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 174
    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->av:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "adccompany="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->adc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 175
    const-string v10, "&ossdk="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/isw/android/corp/util/WinksApplication;->ossdk:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 176
    const-string v10, "&imei="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->imei:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "model="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->model:Ljava/lang/String;

    const-string v11, " "

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ct="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 177
    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->ct:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 173
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 188
    :goto_0
    :try_start_0
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v4           #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    .local v5, httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    const-string v9, "UTF-8"

    invoke-direct {v1, p1, v9}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    .end local v0           #entity:Lorg/apache/http/entity/StringEntity;
    .local v1, entity:Lorg/apache/http/entity/StringEntity;
    :try_start_2
    invoke-virtual {v5, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 192
    invoke-static {}, Lcom/isw/android/corp/http/WinksHttp;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 194
    .local v3, httpCLient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v3, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 196
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 197
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 198
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    .line 199
    invoke-static {v6}, Lcom/isw/android/corp/http/WinksHttp;->checkXWinksNotify(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .end local v1           #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v0       #entity:Lorg/apache/http/entity/StringEntity;
    move-object v4, v5

    .line 208
    .end local v3           #httpCLient:Lorg/apache/http/client/HttpClient;
    .end local v5           #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    .restart local v4       #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    :goto_1
    const-string v9, "MiniWinksHttp"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Request: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", statusCode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-object v7

    .line 180
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "an="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->an:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "av="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 181
    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->av:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "adccompany="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->adc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 182
    const-string v10, "&ossdk="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/isw/android/corp/util/WinksApplication;->ossdk:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 183
    const-string v10, "&imei="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->imei:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "model="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->model:Ljava/lang/String;

    const-string v11, " "

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ct="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 184
    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->ct:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 180
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 202
    :catch_0
    move-exception v2

    .line 203
    .local v2, ex:Ljava/lang/Exception;
    :goto_2
    const-string v7, ""

    .line 204
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    const-string v9, "MiniWinksHttp"

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

    goto/16 :goto_1

    .line 202
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v4           #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    .restart local v5       #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5           #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    .restart local v4       #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_2

    .end local v0           #entity:Lorg/apache/http/entity/StringEntity;
    .end local v4           #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    .restart local v1       #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v5       #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1           #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v0       #entity:Lorg/apache/http/entity/StringEntity;
    move-object v4, v5

    .end local v5           #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    .restart local v4       #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_2

    .end local v0           #entity:Lorg/apache/http/entity/StringEntity;
    .end local v4           #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    .restart local v1       #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v3       #httpCLient:Lorg/apache/http/client/HttpClient;
    .restart local v5       #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    :cond_1
    move-object v0, v1

    .end local v1           #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v0       #entity:Lorg/apache/http/entity/StringEntity;
    move-object v4, v5

    .end local v5           #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    .restart local v4       #httpPostxml:Lorg/apache/http/client/methods/HttpPost;
    goto/16 :goto_1
.end method
