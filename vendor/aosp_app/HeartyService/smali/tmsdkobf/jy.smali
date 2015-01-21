.class public Ltmsdkobf/jy;
.super Ltmsdkobf/jw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/jy$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsCanceled:Z

.field private yc:Lorg/apache/http/client/methods/HttpGet;

.field private yd:Ljava/lang/String;

.field private ye:Ljava/lang/String;

.field private yf:Ljava/lang/String;

.field private yg:Ljava/lang/String;

.field private yh:I

.field private yi:Z

.field private yj:J

.field private yk:Ltmsdkobf/io;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 75
    invoke-direct {p0}, Ltmsdkobf/jw;-><init>()V

    .line 44
    iput-object v3, p0, Ltmsdkobf/jy;->yc:Lorg/apache/http/client/methods/HttpGet;

    .line 45
    iput-object v3, p0, Ltmsdkobf/jy;->yd:Ljava/lang/String;

    .line 46
    iput-object v3, p0, Ltmsdkobf/jy;->ye:Ljava/lang/String;

    .line 47
    iput-object v3, p0, Ltmsdkobf/jy;->yf:Ljava/lang/String;

    .line 48
    iput-object v3, p0, Ltmsdkobf/jy;->yg:Ljava/lang/String;

    .line 49
    iput v4, p0, Ltmsdkobf/jy;->yh:I

    .line 51
    iput-boolean v4, p0, Ltmsdkobf/jy;->yi:Z

    .line 52
    iput-boolean v4, p0, Ltmsdkobf/jy;->mIsCanceled:Z

    .line 54
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Ltmsdkobf/jy;->yj:J

    .line 77
    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->canNetworkOnMainThread()Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 79
    new-instance v3, Ltmsdk/common/exception/NetworkOnMainThreadException;

    invoke-direct {v3}, Ltmsdk/common/exception/NetworkOnMainThreadException;-><init>()V

    throw v3

    .line 82
    :cond_0
    iput-object p1, p0, Ltmsdkobf/jy;->mContext:Landroid/content/Context;

    .line 83
    const-string v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Ltmsdkobf/jy;->yi:Z

    .line 84
    iget-boolean v3, p0, Ltmsdkobf/jy;->yi:Z

    if-eqz v3, :cond_2

    .line 85
    const-string v3, "/sdcard/qqsecure"

    iput-object v3, p0, Ltmsdkobf/jy;->yd:Ljava/lang/String;

    .line 86
    const-string v3, "/sdcard/qqsecure"

    iput-object v3, p0, Ltmsdkobf/jy;->ye:Ljava/lang/String;

    .line 91
    :goto_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    iput-object v3, p0, Ltmsdkobf/jy;->yc:Lorg/apache/http/client/methods/HttpGet;

    .line 92
    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getNetworkType()Ltmsdkobf/t;

    move-result-object v1

    .line 93
    .local v1, networkType:Ltmsdkobf/t;
    sget-object v3, Ltmsdkobf/t;->bb:Ltmsdkobf/t;

    if-ne v1, v3, :cond_1

    .line 94
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, host:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 96
    .local v2, port:I
    invoke-virtual {p0, v0, v2}, Ltmsdkobf/jy;->g(Ljava/lang/String;I)V

    .line 97
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ltmsdkobf/jy;->x(Z)V

    .line 99
    .end local v0           #host:Ljava/lang/String;
    .end local v2           #port:I
    :cond_1
    return-void

    .line 88
    .end local v1           #networkType:Ltmsdkobf/t;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltmsdkobf/jy;->yd:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltmsdkobf/jy;->ye:Ljava/lang/String;

    goto :goto_0
.end method

.method private A(Z)I
    .locals 15
    .parameter "deleteTempFile"

    .prologue
    .line 438
    const/16 v3, -0x1b58

    .line 439
    .local v3, err:I
    const/4 v6, 0x0

    .line 440
    .local v6, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 442
    .local v4, fis:Ljava/io/FileInputStream;
    const-string v12, "HttpGetFile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Ltmsdkobf/jy;->yd:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ltmsdkobf/jy;->yf:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    const-string v12, "HttpGetFile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Ltmsdkobf/jy;->ye:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ltmsdkobf/jy;->yg:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    const/4 v10, 0x0

    .line 448
    .local v10, tmpFile:Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Ltmsdkobf/jy;->yd:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Ltmsdkobf/jy;->yf:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 449
    .end local v10           #tmpFile:Ljava/io/File;
    .local v11, tmpFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 451
    iget v12, p0, Ltmsdkobf/jy;->yh:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    iget-object v12, p0, Ltmsdkobf/jy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Ltmsdkobf/jy;->ye:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 452
    iget-object v12, p0, Ltmsdkobf/jy;->mContext:Landroid/content/Context;

    iget-object v13, p0, Ltmsdkobf/jy;->yg:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    .line 465
    :goto_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d

    .line 466
    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    const/16 v12, 0x400

    :try_start_2
    new-array v0, v12, [B

    .line 467
    .local v0, buf:[B
    const/4 v8, 0x0

    .line 468
    .local v8, readLen:I
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v12, -0x1

    if-eq v8, v12, :cond_5

    .line 469
    const/4 v12, 0x0

    invoke-virtual {v6, v0, v12, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e

    goto :goto_1

    .line 476
    .end local v0           #buf:[B
    .end local v8           #readLen:I
    :catch_0
    move-exception v2

    move-object v10, v11

    .end local v11           #tmpFile:Ljava/io/File;
    .restart local v10       #tmpFile:Ljava/io/File;
    move-object v4, v5

    .line 477
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :goto_2
    const/16 v3, -0x1b59

    .line 478
    :try_start_3
    const-string v12, "HttpBase"

    const-string v13, "file not found"

    invoke-static {v12, v13}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 479
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 489
    if-eqz v4, :cond_0

    .line 491
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 498
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_3
    if-eqz v6, :cond_1

    .line 500
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 508
    :cond_1
    :goto_4
    if-eqz p1, :cond_2

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 509
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 513
    :cond_2
    :goto_5
    return v3

    .line 454
    .end local v10           #tmpFile:Ljava/io/File;
    .restart local v11       #tmpFile:Ljava/io/File;
    :cond_3
    :try_start_6
    new-instance v1, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Ltmsdkobf/jy;->ye:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Ltmsdkobf/jy;->yg:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v1, dstFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 456
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 457
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v7, fos:Ljava/io/FileOutputStream;
    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 459
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 460
    .local v9, tempPath:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 461
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 462
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 472
    .end local v1           #dstFile:Ljava/io/File;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v9           #tempPath:Ljava/io/File;
    .restart local v0       #buf:[B
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #readLen:I
    :cond_5
    const/4 v3, 0x0

    move-object v4, v5

    .line 489
    .end local v0           #buf:[B
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v8           #readLen:I
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :goto_6
    if-eqz v4, :cond_6

    .line 491
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 498
    :cond_6
    :goto_7
    if-eqz v6, :cond_7

    .line 500
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 508
    :cond_7
    :goto_8
    if-eqz p1, :cond_10

    if-eqz v11, :cond_10

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 509
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-object v10, v11

    .end local v11           #tmpFile:Ljava/io/File;
    .restart local v10       #tmpFile:Ljava/io/File;
    goto :goto_5

    .line 474
    .end local v10           #tmpFile:Ljava/io/File;
    .restart local v11       #tmpFile:Ljava/io/File;
    :cond_8
    const/16 v3, -0x1b59

    goto :goto_6

    .line 492
    :catch_1
    move-exception v2

    .line 493
    .local v2, e:Ljava/io/IOException;
    const/16 v3, -0x1b58

    .line 494
    const-string v12, "HttpBase"

    const-string v13, "fis close file error"

    invoke-static {v12, v13}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 495
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 501
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 502
    .restart local v2       #e:Ljava/io/IOException;
    const/16 v3, -0x1b58

    .line 503
    const-string v12, "HttpBase"

    const-string v13, "fosclose file error"

    invoke-static {v12, v13}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 492
    .end local v11           #tmpFile:Ljava/io/File;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v10       #tmpFile:Ljava/io/File;
    :catch_3
    move-exception v2

    .line 493
    .local v2, e:Ljava/io/IOException;
    const/16 v3, -0x1b58

    .line 494
    const-string v12, "HttpBase"

    const-string v13, "fis close file error"

    invoke-static {v12, v13}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 495
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 501
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 502
    .restart local v2       #e:Ljava/io/IOException;
    const/16 v3, -0x1b58

    .line 503
    const-string v12, "HttpBase"

    const-string v13, "fosclose file error"

    invoke-static {v12, v13}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 480
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 481
    .restart local v2       #e:Ljava/io/IOException;
    :goto_9
    const/16 v3, -0x1b90

    .line 482
    :try_start_9
    const-string v12, "HttpBase"

    const-string v13, "file io error"

    invoke-static {v12, v13}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 483
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 489
    if-eqz v4, :cond_9

    .line 491
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 498
    :cond_9
    :goto_a
    if-eqz v6, :cond_a

    .line 500
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 508
    :cond_a
    :goto_b
    if-eqz p1, :cond_2

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 509
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto/16 :goto_5

    .line 492
    :catch_6
    move-exception v2

    .line 493
    const/16 v3, -0x1b58

    .line 494
    const-string v12, "HttpBase"

    const-string v13, "fis close file error"

    invoke-static {v12, v13}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 495
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 501
    :catch_7
    move-exception v2

    .line 502
    const/16 v3, -0x1b58

    .line 503
    const-string v12, "HttpBase"

    const-string v13, "fosclose file error"

    invoke-static {v12, v13}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 484
    .end local v2           #e:Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 485
    .local v2, e:Ljava/lang/Exception;
    :goto_c
    const/16 v3, -0x1b58

    .line 486
    :try_start_c
    const-string v12, "HttpBase"

    const-string v13, "file op error"

    invoke-static {v12, v13}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 489
    if-eqz v4, :cond_b

    .line 491
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 498
    .end local v2           #e:Ljava/lang/Exception;
    :cond_b
    :goto_d
    if-eqz v6, :cond_c

    .line 500
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 508
    :cond_c
    :goto_e
    if-eqz p1, :cond_2

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 509
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto/16 :goto_5

    .line 492
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_9
    move-exception v2

    .line 493
    .local v2, e:Ljava/io/IOException;
    const/16 v3, -0x1b58

    .line 494
    const-string v12, "HttpBase"

    const-string v13, "fis close file error"

    invoke-static {v12, v13}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 495
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 501
    .end local v2           #e:Ljava/io/IOException;
    :catch_a
    move-exception v2

    .line 502
    .restart local v2       #e:Ljava/io/IOException;
    const/16 v3, -0x1b58

    .line 503
    const-string v12, "HttpBase"

    const-string v13, "fosclose file error"

    invoke-static {v12, v13}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 489
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_f
    if-eqz v4, :cond_d

    .line 491
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 498
    :cond_d
    :goto_10
    if-eqz v6, :cond_e

    .line 500
    :try_start_10
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 508
    :cond_e
    :goto_11
    if-eqz p1, :cond_f

    if-eqz v10, :cond_f

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 509
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_f
    throw v12

    .line 492
    :catch_b
    move-exception v2

    .line 493
    .restart local v2       #e:Ljava/io/IOException;
    const/16 v3, -0x1b58

    .line 494
    const-string v13, "HttpBase"

    const-string v14, "fis close file error"

    invoke-static {v13, v14}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 495
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 501
    .end local v2           #e:Ljava/io/IOException;
    :catch_c
    move-exception v2

    .line 502
    .restart local v2       #e:Ljava/io/IOException;
    const/16 v3, -0x1b58

    .line 503
    const-string v13, "HttpBase"

    const-string v14, "fosclose file error"

    invoke-static {v13, v14}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 489
    .end local v2           #e:Ljava/io/IOException;
    .end local v10           #tmpFile:Ljava/io/File;
    .restart local v11       #tmpFile:Ljava/io/File;
    :catchall_1
    move-exception v12

    move-object v10, v11

    .end local v11           #tmpFile:Ljava/io/File;
    .restart local v10       #tmpFile:Ljava/io/File;
    goto :goto_f

    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v10           #tmpFile:Ljava/io/File;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v11       #tmpFile:Ljava/io/File;
    :catchall_2
    move-exception v12

    move-object v10, v11

    .end local v11           #tmpFile:Ljava/io/File;
    .restart local v10       #tmpFile:Ljava/io/File;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_f

    .line 484
    .end local v10           #tmpFile:Ljava/io/File;
    .restart local v11       #tmpFile:Ljava/io/File;
    :catch_d
    move-exception v2

    move-object v10, v11

    .end local v11           #tmpFile:Ljava/io/File;
    .restart local v10       #tmpFile:Ljava/io/File;
    goto :goto_c

    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v10           #tmpFile:Ljava/io/File;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v11       #tmpFile:Ljava/io/File;
    :catch_e
    move-exception v2

    move-object v10, v11

    .end local v11           #tmpFile:Ljava/io/File;
    .restart local v10       #tmpFile:Ljava/io/File;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_c

    .line 480
    .end local v10           #tmpFile:Ljava/io/File;
    .restart local v11       #tmpFile:Ljava/io/File;
    :catch_f
    move-exception v2

    move-object v10, v11

    .end local v11           #tmpFile:Ljava/io/File;
    .restart local v10       #tmpFile:Ljava/io/File;
    goto/16 :goto_9

    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v10           #tmpFile:Ljava/io/File;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v11       #tmpFile:Ljava/io/File;
    :catch_10
    move-exception v2

    move-object v10, v11

    .end local v11           #tmpFile:Ljava/io/File;
    .restart local v10       #tmpFile:Ljava/io/File;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 476
    :catch_11
    move-exception v2

    goto/16 :goto_2

    .end local v10           #tmpFile:Ljava/io/File;
    .restart local v11       #tmpFile:Ljava/io/File;
    :catch_12
    move-exception v2

    move-object v10, v11

    .end local v11           #tmpFile:Ljava/io/File;
    .restart local v10       #tmpFile:Ljava/io/File;
    goto/16 :goto_2

    .end local v10           #tmpFile:Ljava/io/File;
    .restart local v11       #tmpFile:Ljava/io/File;
    :cond_10
    move-object v10, v11

    .end local v11           #tmpFile:Ljava/io/File;
    .restart local v10       #tmpFile:Ljava/io/File;
    goto/16 :goto_5
.end method

.method private a(Lorg/apache/http/HttpEntity;Landroid/os/Bundle;Z)I
    .locals 26
    .parameter "httpEntity"
    .parameter "data"
    .parameter "deflate"

    .prologue
    .line 327
    const/16 v7, -0x1b58

    .line 328
    .local v7, err:I
    const/4 v9, 0x0

    .line 329
    .local v9, fos:Ljava/io/FileOutputStream;
    const/4 v11, 0x0

    .line 330
    .local v11, is:Ljava/io/InputStream;
    const/16 v4, 0x2000

    .line 331
    .local v4, BUF_SIZE:I
    const/16 v20, 0x2000

    move/from16 v0, v20

    new-array v5, v0, [B

    .line 333
    .local v5, buf:[B
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltmsdkobf/jy;->yj:J

    move-wide/from16 v22, v0

    add-long v18, v20, v22

    .line 335
    .local v18, totalSize:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x400

    div-long v21, v18, v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Ltmsdkobf/io;->r:I

    .line 339
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Ltmsdkobf/jy;->yj:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x64

    mul-long v20, v20, v22

    div-long v20, v20, v18

    move-wide/from16 v0, v20

    long-to-int v13, v0

    .line 340
    .local v13, progress:I
    const-string v20, "key_total"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 341
    const-string v20, "key_completed"

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltmsdkobf/jy;->yj:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 342
    const-string v20, "key_progress"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    new-instance v15, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yd:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yf:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    .local v15, tempFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_1

    .line 346
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    .line 347
    .local v16, tempPath:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    .line 348
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 350
    .end local v16           #tempPath:Ljava/io/File;
    :cond_1
    new-instance v10, Ljava/io/FileOutputStream;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v10, v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10

    .line 352
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .local v10, fos:Ljava/io/FileOutputStream;
    if-eqz p3, :cond_4

    :try_start_1
    new-instance v20, Ljava/util/zip/InflaterInputStream;

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v11, v20

    .line 354
    :goto_0
    const/4 v14, 0x0

    .line 355
    .local v14, readLen:I
    const/16 v17, 0x0

    .line 356
    .local v17, totalReadLen:I
    :goto_1
    invoke-virtual {v11, v5}, Ljava/io/InputStream;->read([B)I

    move-result v14

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v14, v0, :cond_a

    .line 357
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ltmsdkobf/jy;->mIsCanceled:Z

    move/from16 v20, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_15

    if-eqz v20, :cond_5

    .line 358
    const/16 v7, -0x138b

    .line 401
    if-eqz v11, :cond_1a

    .line 402
    const-string v20, "HttpBase"

    const-string v21, "is closing file"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v8, v7

    .line 411
    .end local v7           #err:I
    .local v8, err:I
    :goto_2
    if-eqz v10, :cond_2

    .line 412
    const-string v20, "HttpBase"

    const-string v21, "fos closing file"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 422
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltmsdkobf/jy;->yj:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x400

    div-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Ltmsdkobf/io;->f:I

    :cond_3
    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    move/from16 v20, v7

    move v7, v8

    .line 427
    .end local v8           #err:I
    .end local v13           #progress:I
    .end local v14           #readLen:I
    .end local v15           #tempFile:Ljava/io/File;
    .end local v17           #totalReadLen:I
    .end local v18           #totalSize:J
    .restart local v7       #err:I
    :goto_4
    return v20

    .line 352
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #progress:I
    .restart local v15       #tempFile:Ljava/io/File;
    .restart local v18       #totalSize:J
    :cond_4
    :try_start_4
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_15

    move-result-object v11

    goto :goto_0

    .line 405
    .restart local v14       #readLen:I
    .restart local v17       #totalReadLen:I
    :catch_0
    move-exception v6

    .line 406
    .local v6, e:Ljava/io/IOException;
    const/16 v8, -0x1b58

    .line 407
    .end local v7           #err:I
    .restart local v8       #err:I
    const-string v20, "HttpBase"

    const-string v21, "is close file error"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 415
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 416
    .restart local v6       #e:Ljava/io/IOException;
    const/16 v8, -0x1b58

    .line 417
    const-string v20, "HttpBase"

    const-string v21, "fos close file error"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 361
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #err:I
    .restart local v7       #err:I
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Ltmsdkobf/jy;->yj:J

    move-wide/from16 v20, v0

    int-to-long v0, v14

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Ltmsdkobf/jy;->yj:J

    .line 362
    add-int v17, v17, v14

    .line 363
    const-string v20, "key_completed"

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltmsdkobf/jy;->yj:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 365
    move-object/from16 v0, p0

    iget-wide v0, v0, Ltmsdkobf/jy;->yj:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x64

    mul-long v20, v20, v22

    div-long v20, v20, v18

    move-wide/from16 v0, v20

    long-to-int v12, v0

    .line 366
    .local v12, newProgress:I
    if-eq v12, v13, :cond_6

    .line 367
    move v13, v12

    .line 368
    const-string v20, "key_progress"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 369
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/jy;->a(ILandroid/os/Bundle;)V

    .line 371
    :cond_6
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v5, v0, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_17
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_15

    goto/16 :goto_1

    .line 379
    .end local v12           #newProgress:I
    .end local v14           #readLen:I
    .end local v17           #totalReadLen:I
    :catch_2
    move-exception v6

    move-object v9, v10

    .line 380
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v13           #progress:I
    .end local v15           #tempFile:Ljava/io/File;
    .end local v18           #totalSize:J
    .local v6, e:Ljava/io/FileNotFoundException;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :goto_5
    const/16 v7, -0x1b59

    .line 381
    :try_start_6
    const-string v20, "HttpBase"

    const-string v21, "file not found"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 401
    if-eqz v11, :cond_7

    .line 402
    const-string v20, "HttpBase"

    const-string v21, "is closing file"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 411
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :cond_7
    :goto_6
    if-eqz v9, :cond_8

    .line 412
    const-string v20, "HttpBase"

    const-string v21, "fos closing file"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 422
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltmsdkobf/jy;->yj:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x400

    div-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Ltmsdkobf/io;->f:I

    :cond_9
    :goto_8
    move/from16 v20, v7

    .line 427
    goto/16 :goto_4

    .line 373
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #progress:I
    .restart local v14       #readLen:I
    .restart local v15       #tempFile:Ljava/io/File;
    .restart local v17       #totalReadLen:I
    .restart local v18       #totalSize:J
    :cond_a
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 378
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_17
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_15

    move-result-wide v22

    cmp-long v20, v20, v22

    if-nez v20, :cond_d

    const/4 v7, 0x0

    .line 401
    :goto_9
    if-eqz v11, :cond_b

    .line 402
    const-string v20, "HttpBase"

    const-string v21, "is closing file"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    :try_start_a
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 411
    :cond_b
    :goto_a
    if-eqz v10, :cond_c

    .line 412
    const-string v20, "HttpBase"

    const-string v21, "fos closing file"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    :try_start_b
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 422
    :cond_c
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltmsdkobf/jy;->yj:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x400

    div-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Ltmsdkobf/io;->f:I

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_8

    .line 378
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :cond_d
    const/4 v7, -0x7

    goto :goto_9

    .line 405
    :catch_3
    move-exception v6

    .line 406
    .local v6, e:Ljava/io/IOException;
    const/16 v7, -0x1b58

    .line 407
    const-string v20, "HttpBase"

    const-string v21, "is close file error"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 415
    .end local v6           #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 416
    .restart local v6       #e:Ljava/io/IOException;
    const/16 v7, -0x1b58

    .line 417
    const-string v20, "HttpBase"

    const-string v21, "fos close file error"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 405
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v13           #progress:I
    .end local v14           #readLen:I
    .end local v15           #tempFile:Ljava/io/File;
    .end local v17           #totalReadLen:I
    .end local v18           #totalSize:J
    .local v6, e:Ljava/io/FileNotFoundException;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v6

    .line 406
    .local v6, e:Ljava/io/IOException;
    const/16 v7, -0x1b58

    .line 407
    const-string v20, "HttpBase"

    const-string v21, "is close file error"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 415
    .end local v6           #e:Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 416
    .restart local v6       #e:Ljava/io/IOException;
    const/16 v7, -0x1b58

    .line 417
    const-string v20, "HttpBase"

    const-string v21, "fos close file error"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 383
    .end local v6           #e:Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 384
    .local v6, e:Ljava/net/SocketException;
    :goto_c
    const/16 v7, -0x13be

    .line 385
    :try_start_c
    const-string v20, "HttpBase"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "socket error:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    invoke-virtual {v6}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 401
    if-eqz v11, :cond_e

    .line 402
    const-string v20, "HttpBase"

    const-string v21, "is closing file"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    :try_start_d
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 411
    .end local v6           #e:Ljava/net/SocketException;
    :cond_e
    :goto_d
    if-eqz v9, :cond_f

    .line 412
    const-string v20, "HttpBase"

    const-string v21, "fos closing file"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 422
    :cond_f
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltmsdkobf/jy;->yj:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x400

    div-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Ltmsdkobf/io;->f:I

    goto/16 :goto_8

    .line 405
    .restart local v6       #e:Ljava/net/SocketException;
    :catch_8
    move-exception v6

    .line 406
    .local v6, e:Ljava/io/IOException;
    const/16 v7, -0x1b58

    .line 407
    const-string v20, "HttpBase"

    const-string v21, "is close file error"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 415
    .end local v6           #e:Ljava/io/IOException;
    :catch_9
    move-exception v6

    .line 416
    .restart local v6       #e:Ljava/io/IOException;
    const/16 v7, -0x1b58

    .line 417
    const-string v20, "HttpBase"

    const-string v21, "fos close file error"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 387
    .end local v6           #e:Ljava/io/IOException;
    :catch_a
    move-exception v6

    .line 388
    .local v6, e:Ljava/net/SocketTimeoutException;
    :goto_f
    const/16 v7, -0x13bf

    .line 389
    :try_start_f
    const-string v20, "HttpBase"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "socket timeout error:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    invoke-virtual {v6}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 401
    if-eqz v11, :cond_10

    .line 402
    const-string v20, "HttpBase"

    const-string v21, "is closing file"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    :try_start_10
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 411
    .end local v6           #e:Ljava/net/SocketTimeoutException;
    :cond_10
    :goto_10
    if-eqz v9, :cond_11

    .line 412
    const-string v20, "HttpBase"

    const-string v21, "fos closing file"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    :try_start_11
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    .line 422
    :cond_11
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltmsdkobf/jy;->yj:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x400

    div-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Ltmsdkobf/io;->f:I

    goto/16 :goto_8

    .line 405
    .restart local v6       #e:Ljava/net/SocketTimeoutException;
    :catch_b
    move-exception v6

    .line 406
    .local v6, e:Ljava/io/IOException;
    const/16 v7, -0x1b58

    .line 407
    const-string v20, "HttpBase"

    const-string v21, "is close file error"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 415
    .end local v6           #e:Ljava/io/IOException;
    :catch_c
    move-exception v6

    .line 416
    .restart local v6       #e:Ljava/io/IOException;
    const/16 v7, -0x1b58

    .line 417
    const-string v20, "HttpBase"

    const-string v21, "fos close file error"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 391
    .end local v6           #e:Ljava/io/IOException;
    :catch_d
    move-exception v6

    .line 392
    .restart local v6       #e:Ljava/io/IOException;
    :goto_12
    const/16 v7, -0x13c0

    .line 393
    :try_start_12
    const-string v20, "HttpBase"

    const-string v21, "socket or file io error"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 401
    if-eqz v11, :cond_12

    .line 402
    const-string v20, "HttpBase"

    const-string v21, "is closing file"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    :try_start_13
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    .line 411
    :cond_12
    :goto_13
    if-eqz v9, :cond_13

    .line 412
    const-string v20, "HttpBase"

    const-string v21, "fos closing file"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    :try_start_14
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    .line 422
    :cond_13
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltmsdkobf/jy;->yj:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x400

    div-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Ltmsdkobf/io;->f:I

    goto/16 :goto_8

    .line 405
    :catch_e
    move-exception v6

    .line 406
    const/16 v7, -0x1b58

    .line 407
    const-string v20, "HttpBase"

    const-string v21, "is close file error"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 415
    :catch_f
    move-exception v6

    .line 416
    const/16 v7, -0x1b58

    .line 417
    const-string v20, "HttpBase"

    const-string v21, "fos close file error"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    .line 395
    .end local v6           #e:Ljava/io/IOException;
    :catch_10
    move-exception v6

    .line 396
    .local v6, e:Ljava/lang/Exception;
    :goto_15
    const/16 v7, -0x1388

    .line 397
    :try_start_15
    const-string v20, "HttpBase"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    const-string v20, "HttpBase"

    const-string v21, "receive data error"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 401
    if-eqz v11, :cond_14

    .line 402
    const-string v20, "HttpBase"

    const-string v21, "is closing file"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    :try_start_16
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_11

    .line 411
    .end local v6           #e:Ljava/lang/Exception;
    :cond_14
    :goto_16
    if-eqz v9, :cond_15

    .line 412
    const-string v20, "HttpBase"

    const-string v21, "fos closing file"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    :try_start_17
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_12

    .line 422
    :cond_15
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltmsdkobf/jy;->yj:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x400

    div-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Ltmsdkobf/io;->f:I

    goto/16 :goto_8

    .line 405
    .restart local v6       #e:Ljava/lang/Exception;
    :catch_11
    move-exception v6

    .line 406
    .local v6, e:Ljava/io/IOException;
    const/16 v7, -0x1b58

    .line 407
    const-string v20, "HttpBase"

    const-string v21, "is close file error"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16

    .line 415
    .end local v6           #e:Ljava/io/IOException;
    :catch_12
    move-exception v6

    .line 416
    .restart local v6       #e:Ljava/io/IOException;
    const/16 v7, -0x1b58

    .line 417
    const-string v20, "HttpBase"

    const-string v21, "fos close file error"

    invoke-static/range {v20 .. v21}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    .line 401
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v20

    :goto_18
    if-eqz v11, :cond_16

    .line 402
    const-string v21, "HttpBase"

    const-string v22, "is closing file"

    invoke-static/range {v21 .. v22}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    :try_start_18
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_13

    .line 411
    :cond_16
    :goto_19
    if-eqz v9, :cond_17

    .line 412
    const-string v21, "HttpBase"

    const-string v22, "fos closing file"

    invoke-static/range {v21 .. v22}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    :try_start_19
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_14

    .line 422
    :cond_17
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v21, v0

    if-eqz v21, :cond_18

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltmsdkobf/jy;->yj:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Ltmsdkobf/io;->f:I

    :cond_18
    throw v20

    .line 405
    :catch_13
    move-exception v6

    .line 406
    .restart local v6       #e:Ljava/io/IOException;
    const/16 v7, -0x1b58

    .line 407
    const-string v21, "HttpBase"

    const-string v22, "is close file error"

    invoke-static/range {v21 .. v22}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 415
    .end local v6           #e:Ljava/io/IOException;
    :catch_14
    move-exception v6

    .line 416
    .restart local v6       #e:Ljava/io/IOException;
    const/16 v7, -0x1b58

    .line 417
    const-string v21, "HttpBase"

    const-string v22, "fos close file error"

    invoke-static/range {v21 .. v22}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    .line 401
    .end local v6           #e:Ljava/io/IOException;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #progress:I
    .restart local v15       #tempFile:Ljava/io/File;
    .restart local v18       #totalSize:J
    :catchall_1
    move-exception v20

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_18

    .line 395
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_15
    move-exception v6

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_15

    .line 391
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_16
    move-exception v6

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_12

    .line 387
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_17
    move-exception v6

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_f

    .line 383
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_18
    move-exception v6

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .line 379
    .end local v13           #progress:I
    .end local v15           #tempFile:Ljava/io/File;
    .end local v18           #totalSize:J
    :catch_19
    move-exception v6

    goto/16 :goto_5

    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #progress:I
    .restart local v14       #readLen:I
    .restart local v15       #tempFile:Ljava/io/File;
    .restart local v17       #totalReadLen:I
    .restart local v18       #totalSize:J
    :cond_19
    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_8

    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :cond_1a
    move v8, v7

    .end local v7           #err:I
    .restart local v8       #err:I
    goto/16 :goto_2
.end method

.method private cf(Ljava/lang/String;)I
    .locals 7
    .parameter "url"

    .prologue
    .line 160
    const/16 v1, -0x3e8

    .line 162
    .local v1, err:I
    const/4 v2, 0x0

    .line 164
    .local v2, uri:Ljava/net/URI;
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #uri:Ljava/net/URI;
    .local v3, uri:Ljava/net/URI;
    move-object v2, v3

    .line 170
    .end local v3           #uri:Ljava/net/URI;
    .restart local v2       #uri:Ljava/net/URI;
    :goto_0
    if-eqz v2, :cond_0

    .line 171
    iget-object v4, p0, Ltmsdkobf/jy;->yc:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4, v2}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 172
    const/4 v1, 0x0

    .line 175
    :cond_0
    return v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v4, "HttpBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 168
    const/16 v1, -0x41d

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;ZLtmsdkobf/jy$a;)I
    .locals 23
    .parameter "url"
    .parameter "deflate"
    .parameter "dataMd5Checker"

    .prologue
    .line 188
    const/16 v7, -0xbb8

    .line 189
    .local v7, err:I
    const/4 v8, 0x0

    .line 190
    .local v8, httpClient:Lorg/apache/http/client/HttpClient;
    const/4 v10, 0x0

    .line 191
    .local v10, httpResponse:Lorg/apache/http/HttpResponse;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v3, data:Landroid/os/Bundle;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 196
    .local v12, startTime:J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ltmsdkobf/jy;->eV()Lorg/apache/http/client/HttpClient;

    move-result-object v8

    .line 198
    invoke-direct/range {p0 .. p1}, Ltmsdkobf/jy;->cf(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result v7

    if-eqz v7, :cond_5

    .line 288
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 289
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 290
    const/4 v8, 0x0

    .line 292
    :cond_1
    if-eqz v10, :cond_2

    .line 293
    const/4 v10, 0x0

    .line 296
    :cond_2
    if-eqz v7, :cond_3

    const/16 v17, -0x7

    move/from16 v0, v17

    if-eq v7, v0, :cond_3

    .line 297
    const-string v17, "key_errcode"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Ltmsdkobf/jy;->a(ILandroid/os/Bundle;)V

    .line 301
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 303
    .local v5, endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    sub-long v18, v5, v12

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Ltmsdkobf/io;->g:I

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Ltmsdkobf/io;->h:I

    .line 306
    if-nez v7, :cond_15

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Ltmsdkobf/io;->e:B

    .line 314
    :cond_4
    :goto_1
    return v7

    .line 201
    .end local v5           #endTime:J
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ltmsdkobf/jy;->mIsCanceled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 202
    const/16 v7, -0xbbb

    .line 203
    goto :goto_0

    .line 206
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yc:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v17

    if-nez v17, :cond_a

    .line 207
    const/16 v7, -0xbed

    .line 208
    const-string v17, "HttpBase"

    const-string v18, "url == null"

    invoke-static/range {v17 .. v18}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_0

    .line 267
    :catch_0
    move-exception v4

    .line 268
    .local v4, e:Lorg/apache/http/client/ClientProtocolException;
    const/16 v7, -0xbeb

    .line 269
    :try_start_2
    const-string v17, "HttpBase"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "protocol error:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    if-eqz v8, :cond_7

    .line 289
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 290
    const/4 v8, 0x0

    .line 292
    :cond_7
    if-eqz v10, :cond_8

    .line 293
    const/4 v10, 0x0

    .line 296
    :cond_8
    if-eqz v7, :cond_9

    const/16 v17, -0x7

    move/from16 v0, v17

    if-eq v7, v0, :cond_9

    .line 297
    const-string v17, "key_errcode"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Ltmsdkobf/jy;->a(ILandroid/os/Bundle;)V

    .line 301
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 303
    .restart local v5       #endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    sub-long v18, v5, v12

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Ltmsdkobf/io;->g:I

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Ltmsdkobf/io;->h:I

    .line 306
    if-nez v7, :cond_16

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Ltmsdkobf/io;->e:B

    goto/16 :goto_1

    .line 213
    .end local v4           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v5           #endTime:J
    :cond_a
    const/16 v17, 0x0

    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ltmsdkobf/jv;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 214
    .local v16, tempName:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".tmp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltmsdkobf/jy;->yf:Ljava/lang/String;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yg:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    .line 216
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Ltmsdkobf/jy;->yg:Ljava/lang/String;

    .line 218
    :cond_b
    new-instance v15, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yd:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yf:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v15, tempFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 220
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Ltmsdkobf/jy;->yj:J

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yc:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v17, v0

    const-string v18, "RANGE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "bytes="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltmsdkobf/jy;->yj:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yc:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 226
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 227
    .local v14, statusCode:I
    const-string v17, "HttpBase"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "statusCode == "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v14, v0, :cond_d

    const/16 v17, 0xce

    move/from16 v0, v17

    if-eq v14, v0, :cond_d

    .line 229
    rsub-int v7, v14, -0xbb8

    .line 230
    goto/16 :goto_0

    .line 232
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ltmsdkobf/jy;->mIsCanceled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    .line 233
    const/16 v7, -0xbbb

    .line 234
    goto/16 :goto_0

    .line 237
    :cond_e
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 238
    .local v9, httpEntity:Lorg/apache/http/HttpEntity;
    if-nez v9, :cond_12

    .line 239
    const/16 v7, -0xfa0

    .line 240
    const-string v17, "HttpBase"

    const-string v18, "httpEntity == null"

    invoke-static/range {v17 .. v18}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 271
    .end local v9           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v14           #statusCode:I
    .end local v15           #tempFile:Ljava/io/File;
    .end local v16           #tempName:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 272
    .local v4, e:Ljava/net/SocketException;
    const/16 v7, -0xbee

    .line 273
    :try_start_4
    const-string v17, "HttpBase"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "socket error:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    invoke-virtual {v4}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 288
    if-eqz v8, :cond_f

    .line 289
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 290
    const/4 v8, 0x0

    .line 292
    :cond_f
    if-eqz v10, :cond_10

    .line 293
    const/4 v10, 0x0

    .line 296
    :cond_10
    if-eqz v7, :cond_11

    const/16 v17, -0x7

    move/from16 v0, v17

    if-eq v7, v0, :cond_11

    .line 297
    const-string v17, "key_errcode"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Ltmsdkobf/jy;->a(ILandroid/os/Bundle;)V

    .line 301
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 303
    .restart local v5       #endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    sub-long v18, v5, v12

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Ltmsdkobf/io;->g:I

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Ltmsdkobf/io;->h:I

    .line 306
    if-nez v7, :cond_17

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Ltmsdkobf/io;->e:B

    goto/16 :goto_1

    .line 244
    .end local v4           #e:Ljava/net/SocketException;
    .end local v5           #endTime:J
    .restart local v9       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v14       #statusCode:I
    .restart local v15       #tempFile:Ljava/io/File;
    .restart local v16       #tempName:Ljava/lang/String;
    :cond_12
    :try_start_5
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v3, v1}, Ltmsdkobf/jy;->a(Lorg/apache/http/HttpEntity;Landroid/os/Bundle;Z)I

    move-result v7

    if-eqz v7, :cond_13

    .line 246
    const/16 v17, -0x7

    move/from16 v0, v17

    if-ne v7, v0, :cond_0

    goto/16 :goto_0

    .line 252
    :cond_13
    if-eqz p3, :cond_14

    .line 253
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yd:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yf:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ltmsdkobf/jy$a;->cg(Ljava/lang/String;)Z

    move-result v11

    .line 254
    .local v11, isMatch:Z
    if-nez v11, :cond_14

    .line 255
    const/16 v7, -0x1b58

    .line 256
    goto/16 :goto_0

    .line 260
    .end local v11           #isMatch:Z
    :cond_14
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ltmsdkobf/jy;->A(Z)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v7

    if-nez v7, :cond_0

    .line 264
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 309
    .end local v9           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v14           #statusCode:I
    .end local v15           #tempFile:Ljava/io/File;
    .end local v16           #tempName:Ljava/lang/String;
    .restart local v5       #endTime:J
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Ltmsdkobf/io;->e:B

    goto/16 :goto_1

    .local v4, e:Lorg/apache/http/client/ClientProtocolException;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Ltmsdkobf/io;->e:B

    goto/16 :goto_1

    .local v4, e:Ljava/net/SocketException;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Ltmsdkobf/io;->e:B

    goto/16 :goto_1

    .line 275
    .end local v4           #e:Ljava/net/SocketException;
    .end local v5           #endTime:J
    :catch_2
    move-exception v4

    .line 276
    .local v4, e:Ljava/net/SocketTimeoutException;
    const/16 v7, -0xbef

    .line 277
    :try_start_6
    const-string v17, "HttpBase"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "socket timeout error:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 288
    if-eqz v8, :cond_18

    .line 289
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 290
    const/4 v8, 0x0

    .line 292
    :cond_18
    if-eqz v10, :cond_19

    .line 293
    const/4 v10, 0x0

    .line 296
    :cond_19
    if-eqz v7, :cond_1a

    const/16 v17, -0x7

    move/from16 v0, v17

    if-eq v7, v0, :cond_1a

    .line 297
    const-string v17, "key_errcode"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Ltmsdkobf/jy;->a(ILandroid/os/Bundle;)V

    .line 301
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 303
    .restart local v5       #endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    sub-long v18, v5, v12

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Ltmsdkobf/io;->g:I

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Ltmsdkobf/io;->h:I

    .line 306
    if-nez v7, :cond_1b

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Ltmsdkobf/io;->e:B

    goto/16 :goto_1

    .line 309
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Ltmsdkobf/io;->e:B

    goto/16 :goto_1

    .line 279
    .end local v4           #e:Ljava/net/SocketTimeoutException;
    .end local v5           #endTime:J
    :catch_3
    move-exception v4

    .line 280
    .local v4, e:Ljava/io/IOException;
    const/16 v7, -0xbf0

    .line 281
    :try_start_7
    const-string v17, "HttpBase"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "io error:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 288
    if-eqz v8, :cond_1c

    .line 289
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 290
    const/4 v8, 0x0

    .line 292
    :cond_1c
    if-eqz v10, :cond_1d

    .line 293
    const/4 v10, 0x0

    .line 296
    :cond_1d
    if-eqz v7, :cond_1e

    const/16 v17, -0x7

    move/from16 v0, v17

    if-eq v7, v0, :cond_1e

    .line 297
    const-string v17, "key_errcode"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Ltmsdkobf/jy;->a(ILandroid/os/Bundle;)V

    .line 301
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 303
    .restart local v5       #endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    sub-long v18, v5, v12

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Ltmsdkobf/io;->g:I

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Ltmsdkobf/io;->h:I

    .line 306
    if-nez v7, :cond_1f

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Ltmsdkobf/io;->e:B

    goto/16 :goto_1

    .line 309
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Ltmsdkobf/io;->e:B

    goto/16 :goto_1

    .line 283
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #endTime:J
    :catch_4
    move-exception v4

    .line 284
    .local v4, e:Ljava/lang/Exception;
    const/16 v7, -0xbb8

    .line 285
    :try_start_8
    const-string v17, "HttpBase"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "get error:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 288
    if-eqz v8, :cond_20

    .line 289
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 290
    const/4 v8, 0x0

    .line 292
    :cond_20
    if-eqz v10, :cond_21

    .line 293
    const/4 v10, 0x0

    .line 296
    :cond_21
    if-eqz v7, :cond_22

    const/16 v17, -0x7

    move/from16 v0, v17

    if-eq v7, v0, :cond_22

    .line 297
    const-string v17, "key_errcode"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Ltmsdkobf/jy;->a(ILandroid/os/Bundle;)V

    .line 301
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 303
    .restart local v5       #endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    sub-long v18, v5, v12

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Ltmsdkobf/io;->g:I

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Ltmsdkobf/io;->h:I

    .line 306
    if-nez v7, :cond_23

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Ltmsdkobf/io;->e:B

    goto/16 :goto_1

    .line 309
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Ltmsdkobf/io;->e:B

    goto/16 :goto_1

    .line 288
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #endTime:J
    :catchall_0
    move-exception v17

    if-eqz v8, :cond_24

    .line 289
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 290
    const/4 v8, 0x0

    .line 292
    :cond_24
    if-eqz v10, :cond_25

    .line 293
    const/4 v10, 0x0

    .line 296
    :cond_25
    if-eqz v7, :cond_26

    const/16 v18, -0x7

    move/from16 v0, v18

    if-eq v7, v0, :cond_26

    .line 297
    const-string v18, "key_errcode"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ltmsdkobf/jy;->a(ILandroid/os/Bundle;)V

    .line 301
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 303
    .restart local v5       #endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v18, v0

    if-eqz v18, :cond_27

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v18, v0

    sub-long v19, v5, v12

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Ltmsdkobf/io;->g:I

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Ltmsdkobf/io;->h:I

    .line 306
    if-nez v7, :cond_28

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-byte v0, v1, Ltmsdkobf/io;->e:B

    .line 312
    :cond_27
    :goto_2
    throw v17

    .line 309
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-byte v0, v1, Ltmsdkobf/io;->e:B

    goto :goto_2
.end method

.method public a(Ltmsdkobf/io;)V
    .locals 0
    .parameter "updateConfigEntity"

    .prologue
    .line 66
    iput-object p1, p0, Ltmsdkobf/jy;->yk:Ltmsdkobf/io;

    .line 67
    return-void
.end method

.method public br(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 156
    iput p1, p0, Ltmsdkobf/jy;->yh:I

    .line 157
    return-void
.end method

.method public cd(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 126
    iput-object p1, p0, Ltmsdkobf/jy;->ye:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public ce(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 136
    iput-object p1, p0, Ltmsdkobf/jy;->yg:Ljava/lang/String;

    .line 137
    return-void
.end method
