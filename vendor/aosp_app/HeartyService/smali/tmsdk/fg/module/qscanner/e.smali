.class final Ltmsdk/fg/module/qscanner/e;
.super Ltmsdk/fg/creator/BaseManagerF;
.source "SourceFile"


# instance fields
.field private EW:Ltmsdk/fg/module/qscanner/AmScanner;

.field private EX:Ltmsdk/fg/module/qscanner/c;

.field private EZ:[B

.field private Fa:Z

.field private Fb:Ljava/lang/Object;

.field private Fc:Z

.field private Fd:Z

.field private Fe:Ljava/lang/Object;

.field private Ff:[Ljava/lang/String;

.field private Fh:Ltmsdkobf/iw;

.field private mContext:Landroid/content/Context;

.field private mPaused:Z

.field private yP:Ltmsdk/common/module/software/SoftwareManager;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ltmsdk/fg/creator/BaseManagerF;-><init>()V

    .line 55
    new-array v0, v2, [B

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/e;->EZ:[B

    .line 58
    iput-boolean v2, p0, Ltmsdk/fg/module/qscanner/e;->mPaused:Z

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/e;->Fb:Ljava/lang/Object;

    .line 61
    iput-boolean v2, p0, Ltmsdk/fg/module/qscanner/e;->Fc:Z

    .line 62
    iput-boolean v2, p0, Ltmsdk/fg/module/qscanner/e;->Fd:Z

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/e;->Fe:Ljava/lang/Object;

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "image"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "photo"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "music"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dcim"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "weibo"

    aput-object v2, v0, v1

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/e;->Ff:[Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .parameter "scanListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/software/AppEntity;",
            ">;",
            "Ltmsdk/fg/module/qscanner/QScanListenerV2;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, appList:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/software/AppEntity;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v3, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-object v3

    .line 266
    :cond_1
    if-eqz p2, :cond_2

    .line 267
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Ltmsdk/fg/module/qscanner/QScanListenerV2;->onScanStarted(I)V

    .line 271
    :cond_2
    invoke-virtual {p0}, Ltmsdk/fg/module/qscanner/e;->initScanner()V

    .line 272
    iget-object v10, p0, Ltmsdk/fg/module/qscanner/e;->EZ:[B

    monitor-enter v10

    .line 273
    const/4 v9, 0x1

    :try_start_0
    iput-boolean v9, p0, Ltmsdk/fg/module/qscanner/e;->Fa:Z

    .line 274
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 276
    const/4 v2, 0x0

    .line 277
    .local v2, result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 278
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 280
    const/4 v9, 0x0

    invoke-direct {p0, v9, p2}, Ltmsdk/fg/module/qscanner/e;->a(ILtmsdk/fg/module/qscanner/QScanListenerV2;)V

    .line 281
    const/4 v9, 0x0

    invoke-direct {p0, v9, p2}, Ltmsdk/fg/module/qscanner/e;->b(ILtmsdk/fg/module/qscanner/QScanListenerV2;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 308
    :cond_3
    iget-object v10, p0, Ltmsdk/fg/module/qscanner/e;->Fe:Ljava/lang/Object;

    monitor-enter v10

    .line 309
    :try_start_1
    iget-boolean v9, p0, Ltmsdk/fg/module/qscanner/e;->Fc:Z

    if-nez v9, :cond_4

    .line 310
    const/4 v9, 0x0

    invoke-direct {p0, v9, p2, v3}, Ltmsdk/fg/module/qscanner/e;->a(ILtmsdk/fg/module/qscanner/QScanListenerV2;Ljava/util/List;)V

    .line 312
    :cond_4
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 314
    iget-object v10, p0, Ltmsdk/fg/module/qscanner/e;->EZ:[B

    monitor-enter v10

    .line 315
    const/4 v9, 0x0

    :try_start_2
    iput-boolean v9, p0, Ltmsdk/fg/module/qscanner/e;->Fa:Z

    .line 316
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 274
    .end local v1           #i:I
    .end local v2           #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    .end local v4           #size:I
    :catchall_1
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 285
    .restart local v1       #i:I
    .restart local v2       #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    .restart local v4       #size:I
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 287
    .local v5, time:J
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {p0, v9}, Ltmsdk/fg/module/qscanner/e;->d(Ltmsdk/common/module/software/AppEntity;)Ltmsdk/common/module/qscanner/QScanResultEntity;

    move-result-object v2

    .line 289
    if-eqz v2, :cond_6

    .line 290
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    if-eqz p2, :cond_6

    .line 292
    const/4 v9, 0x0

    add-int/lit8 v10, v1, 0x1

    mul-int/lit8 v10, v10, 0x64

    div-int/2addr v10, v4

    invoke-virtual {p2, v9, v10, v2}, Ltmsdk/fg/module/qscanner/QScanListenerV2;->onScanProgress(IILtmsdk/common/module/qscanner/QScanResultEntity;)V

    .line 297
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v7, v9, v5

    .line 298
    .local v7, usedTime:J
    const-wide/16 v9, 0x14

    cmp-long v9, v7, v9

    if-gez v9, :cond_7

    .line 300
    const-wide/16 v9, 0x14

    sub-long/2addr v9, v7

    :try_start_4
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 278
    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 312
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v5           #time:J
    .end local v7           #usedTime:J
    :catchall_2
    move-exception v9

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v9
.end method

.method static synthetic a(Ltmsdk/fg/module/qscanner/e;Ltmsdk/common/module/software/AppEntity;)Ltmsdk/common/module/qscanner/QScanResultEntity;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ltmsdk/fg/module/qscanner/e;->d(Ltmsdk/common/module/software/AppEntity;)Ltmsdk/common/module/qscanner/QScanResultEntity;

    move-result-object v0

    return-object v0
.end method

.method private a(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/fg/module/qscanner/ApkKey;
    .locals 9
    .parameter "appEntity"
    .parameter "apkType"

    .prologue
    .line 727
    if-nez p1, :cond_0

    .line 728
    const/4 v0, 0x0

    .line 739
    :goto_0
    return-object v0

    .line 730
    :cond_0
    new-instance v0, Ltmsdk/fg/module/qscanner/ApkKey;

    invoke-virtual {p1}, Ltmsdk/common/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltmsdk/common/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ltmsdk/common/module/software/AppEntity;->getCertMD5()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ltmsdk/common/module/software/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ltmsdk/common/module/software/AppEntity;->getVersionCode()I

    move-result v5

    invoke-virtual {p1}, Ltmsdk/common/module/software/AppEntity;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {p1}, Ltmsdk/common/module/software/AppEntity;->getApkPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move v8, p2

    invoke-direct/range {v0 .. v8}, Ltmsdk/fg/module/qscanner/ApkKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    .line 739
    .local v0, apkKey:Ltmsdk/fg/module/qscanner/ApkKey;
    goto :goto_0
.end method

.method private a(ILtmsdk/fg/module/qscanner/QScanListenerV2;)V
    .locals 4
    .parameter "type"
    .parameter "scanListener"

    .prologue
    .line 674
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/e;->Fb:Ljava/lang/Object;

    monitor-enter v2

    .line 676
    :try_start_0
    iget-boolean v1, p0, Ltmsdk/fg/module/qscanner/e;->mPaused:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 677
    if-eqz p2, :cond_0

    .line 678
    invoke-virtual {p2, p1}, Ltmsdk/fg/module/qscanner/QScanListenerV2;->onScanPaused(I)V

    .line 680
    :cond_0
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/e;->Fb:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 681
    if-eqz p2, :cond_1

    .line 682
    invoke-virtual {p2, p1}, Ltmsdk/fg/module/qscanner/QScanListenerV2;->onScanContinue(I)V

    .line 684
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Ltmsdk/fg/module/qscanner/e;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 690
    return-void

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "QScannerManangerImplV2"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 689
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private a(ILtmsdk/fg/module/qscanner/QScanListenerV2;Ljava/util/List;)V
    .locals 2
    .parameter "type"
    .parameter "scanListener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ltmsdk/fg/module/qscanner/QScanListenerV2;",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 713
    .local p3, results:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/e;->Fb:Ljava/lang/Object;

    monitor-enter v1

    .line 714
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ltmsdk/fg/module/qscanner/e;->mPaused:Z

    .line 715
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/e;->Fe:Ljava/lang/Object;

    monitor-enter v1

    .line 717
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Ltmsdk/fg/module/qscanner/e;->Fc:Z

    .line 718
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdk/fg/module/qscanner/e;->Fd:Z

    .line 719
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 721
    if-eqz p2, :cond_0

    .line 722
    invoke-virtual {p2, p1, p3}, Ltmsdk/fg/module/qscanner/QScanListenerV2;->onScanFinished(ILjava/util/List;)V

    .line 724
    :cond_0
    return-void

    .line 715
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 719
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    .local p2, cloudInfoList:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/d;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/d;

    .line 440
    .local v0, cloudInfo:Ltmsdkobf/d;
    invoke-virtual {v0}, Ltmsdkobf/d;->a()Ltmsdkobf/cf;

    move-result-object v5

    .line 441
    .local v5, uploadInfo:Ltmsdkobf/cf;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ltmsdkobf/cf;->B()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ltmsdkobf/cf;->B()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 442
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltmsdk/common/module/qscanner/QScanResultEntity;

    .line 443
    .local v4, result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    iget-object v6, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v7, v0, Ltmsdkobf/d;->B:Ltmsdkobf/af;

    iget-object v7, v7, Ltmsdkobf/af;->dE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->size:I

    iget-object v7, v0, Ltmsdkobf/d;->B:Ltmsdkobf/af;

    iget v7, v7, Ltmsdkobf/af;->r:I

    if-ne v6, v7, :cond_1

    .line 446
    new-instance v1, Ltmsdkobf/jz;

    iget-object v6, p0, Ltmsdk/fg/module/qscanner/e;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Ltmsdkobf/jz;-><init>(Landroid/content/Context;)V

    .line 447
    .local v1, httpPostFile:Ltmsdkobf/jz;
    const-string v6, "http://uploadserver.3g.qq.com/upload_v3"

    invoke-virtual {v1, v6}, Ltmsdkobf/jz;->setUrl(Ljava/lang/String;)V

    .line 448
    iget-object v6, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Ltmsdkobf/jz;->a(Ljava/lang/String;Ltmsdkobf/cf;)I

    goto :goto_0

    .line 453
    .end local v0           #cloudInfo:Ltmsdkobf/d;
    .end local v1           #httpPostFile:Ltmsdkobf/jz;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    .end local v5           #uploadInfo:Ltmsdkobf/cf;
    :cond_2
    return-void
.end method

.method static synthetic a(Ltmsdk/fg/module/qscanner/e;ILtmsdk/fg/module/qscanner/QScanListenerV2;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ltmsdk/fg/module/qscanner/e;->a(ILtmsdk/fg/module/qscanner/QScanListenerV2;)V

    return-void
.end method

.method private b(Ltmsdk/common/module/software/AppEntity;)Ltmsdk/common/module/software/AppEntity;
    .locals 2
    .parameter "app"

    .prologue
    .line 764
    invoke-virtual {p1}, Ltmsdk/common/module/software/AppEntity;->isApk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/e;->yP:Ltmsdk/common/module/software/SoftwareManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p1, v1}, Ltmsdk/common/module/software/SoftwareManager;->getApkInfo(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v0

    .line 767
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/e;->yP:Ltmsdk/common/module/software/SoftwareManager;

    const/16 v1, 0x49

    invoke-virtual {v0, p1, v1}, Ltmsdk/common/module/software/SoftwareManager;->getAppInfo(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    .local p2, cloudInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/d;>;"
    const/4 v8, 0x1

    .line 393
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltmsdk/common/module/qscanner/QScanResultEntity;

    .line 394
    .local v4, result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/d;

    .line 396
    .local v1, cloudInfo:Ltmsdkobf/d;
    iget v5, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->size:I

    iget-object v6, v1, Ltmsdkobf/d;->B:Ltmsdkobf/af;

    iget v6, v6, Ltmsdkobf/af;->r:I

    if-ne v5, v6, :cond_1

    iget-object v5, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v6, v1, Ltmsdkobf/d;->B:Ltmsdkobf/af;

    iget-object v6, v6, Ltmsdkobf/af;->dE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    iget-object v6, v1, Ltmsdkobf/d;->D:Ltmsdkobf/l;

    iget v6, v6, Ltmsdkobf/l;->X:I

    if-ne v5, v6, :cond_2

    iget-object v5, v1, Ltmsdkobf/d;->D:Ltmsdkobf/l;

    iget v5, v5, Ltmsdkobf/l;->X:I

    if-nez v5, :cond_2

    iget-object v5, v1, Ltmsdkobf/d;->D:Ltmsdkobf/l;

    iget-object v5, v5, Ltmsdkobf/l;->plugins:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, v1, Ltmsdkobf/d;->D:Ltmsdkobf/l;

    iget-object v5, v5, Ltmsdkobf/l;->plugins:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 401
    :cond_2
    iget-object v0, v1, Ltmsdkobf/d;->D:Ltmsdkobf/l;

    .line 402
    .local v0, cloudCheck:Ltmsdkobf/l;
    iget v5, v0, Ltmsdkobf/l;->X:I

    iput v5, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    .line 403
    iget v5, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_5

    .line 404
    iput-boolean v8, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->isInPayList:Z

    .line 408
    :cond_3
    :goto_1
    iget v5, v0, Ltmsdkobf/l;->am:I

    iput v5, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->advice:I

    .line 409
    iget-object v5, v0, Ltmsdkobf/l;->ah:Ljava/lang/String;

    iput-object v5, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    .line 411
    iget-object v5, v0, Ltmsdkobf/l;->ak:Ljava/lang/String;

    iput-object v5, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    .line 412
    iget v5, v0, Ltmsdkobf/l;->an:I

    iput v5, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->malwareid:I

    .line 413
    iget-object v5, v0, Ltmsdkobf/l;->ao:Ljava/lang/String;

    iput-object v5, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    .line 414
    iget v5, v0, Ltmsdkobf/l;->safeLevel:I

    iput v5, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    .line 415
    iget v5, v0, Ltmsdkobf/l;->product:I

    iput v5, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->product:I

    .line 420
    iget-object v5, v0, Ltmsdkobf/l;->plugins:Ljava/util/ArrayList;

    invoke-static {v5}, Ltmsdkobf/ix;->i(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->plugins:Ljava/util/ArrayList;

    .line 421
    iget-object v5, p0, Ltmsdk/fg/module/qscanner/e;->EX:Ltmsdk/fg/module/qscanner/c;

    if-eqz v5, :cond_4

    .line 422
    iget-object v5, p0, Ltmsdk/fg/module/qscanner/e;->EX:Ltmsdk/fg/module/qscanner/c;

    iget-object v6, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget v7, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->size:I

    invoke-virtual {v5, v6, v7, v4}, Ltmsdk/fg/module/qscanner/c;->a(Ljava/lang/String;ILtmsdk/common/module/qscanner/QScanResultEntity;)V

    .line 426
    :cond_4
    if-eqz v4, :cond_1

    iget v5, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 427
    const v5, 0x1d4c6

    invoke-static {v5}, Ltmsdkobf/im;->aT(I)V

    goto/16 :goto_0

    .line 405
    :cond_5
    iget v5, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    .line 406
    iput-boolean v8, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->isInStealAccountList:Z

    goto :goto_1

    .line 432
    .end local v0           #cloudCheck:Ltmsdkobf/l;
    .end local v1           #cloudInfo:Ltmsdkobf/d;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    :cond_6
    return-void
.end method

.method private b(ILtmsdk/fg/module/qscanner/QScanListenerV2;)Z
    .locals 3
    .parameter "type"
    .parameter "scanListener"

    .prologue
    const/4 v0, 0x1

    .line 696
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/e;->Fe:Ljava/lang/Object;

    monitor-enter v1

    .line 697
    :try_start_0
    iget-boolean v2, p0, Ltmsdk/fg/module/qscanner/e;->Fc:Z

    if-ne v2, v0, :cond_1

    .line 698
    if-eqz p2, :cond_0

    iget-boolean v2, p0, Ltmsdk/fg/module/qscanner/e;->Fd:Z

    if-nez v2, :cond_0

    .line 699
    invoke-virtual {p2, p1}, Ltmsdk/fg/module/qscanner/QScanListenerV2;->onScanCanceled(I)V

    .line 700
    const/4 v2, 0x1

    iput-boolean v2, p0, Ltmsdk/fg/module/qscanner/e;->Fd:Z

    .line 702
    :cond_0
    monitor-exit v1

    .line 704
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 705
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Ltmsdk/fg/module/qscanner/e;ILtmsdk/fg/module/qscanner/QScanListenerV2;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ltmsdk/fg/module/qscanner/e;->b(ILtmsdk/fg/module/qscanner/QScanListenerV2;)Z

    move-result v0

    return v0
.end method

.method private c(Ltmsdk/common/module/software/AppEntity;)Ltmsdk/common/module/software/AppEntity;
    .locals 2
    .parameter "app"

    .prologue
    .line 775
    invoke-virtual {p1}, Ltmsdk/common/module/software/AppEntity;->isApk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/e;->yP:Ltmsdk/common/module/software/SoftwareManager;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Ltmsdk/common/module/software/SoftwareManager;->getAppInfo(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object p1

    goto :goto_0
.end method

.method private d(Ltmsdk/common/module/software/AppEntity;)Ltmsdk/common/module/qscanner/QScanResultEntity;
    .locals 11
    .parameter "appEntity"

    .prologue
    const/4 v10, 0x0

    .line 211
    const/4 v8, 0x0

    .line 212
    .local v8, result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    if-nez p1, :cond_0

    move-object v9, v8

    .line 255
    .end local v8           #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    .local v9, result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    :goto_0
    return-object v9

    .line 216
    .end local v9           #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    .restart local v8       #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    :cond_0
    invoke-direct {p0, p1}, Ltmsdk/fg/module/qscanner/e;->b(Ltmsdk/common/module/software/AppEntity;)Ltmsdk/common/module/software/AppEntity;

    move-result-object p1

    .line 217
    if-nez p1, :cond_1

    move-object v9, v8

    .line 218
    .end local v8           #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    .restart local v9       #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    goto :goto_0

    .line 221
    .end local v9           #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    .restart local v8       #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    :cond_1
    const/4 v5, 0x0

    .line 222
    .local v5, appType:I
    invoke-virtual {p1}, Ltmsdk/common/module/software/AppEntity;->isApk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    const/4 v5, 0x2

    .line 227
    :cond_2
    :goto_1
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/e;->EX:Ltmsdk/fg/module/qscanner/c;

    invoke-virtual {p1}, Ltmsdk/common/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltmsdk/common/module/software/AppEntity;->getApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ltmsdk/common/module/software/AppEntity;->getSize()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ltmsdk/fg/module/qscanner/c;->a(Ljava/lang/String;Ljava/lang/String;JI)Ltmsdk/common/module/qscanner/QScanResultEntity;

    move-result-object v8

    .line 228
    if-nez v8, :cond_7

    .line 230
    invoke-direct {p0, p1}, Ltmsdk/fg/module/qscanner/e;->c(Ltmsdk/common/module/software/AppEntity;)Ltmsdk/common/module/software/AppEntity;

    move-result-object p1

    .line 231
    if-nez p1, :cond_4

    move-object v9, v8

    .line 232
    .end local v8           #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    .restart local v9       #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    goto :goto_0

    .line 224
    .end local v9           #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    .restart local v8       #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    :cond_3
    invoke-virtual {p1}, Ltmsdk/common/module/software/AppEntity;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    const/4 v5, 0x1

    goto :goto_1

    .line 234
    :cond_4
    invoke-direct {p0, p1, v5}, Ltmsdk/fg/module/qscanner/e;->a(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/fg/module/qscanner/ApkKey;

    move-result-object v6

    .line 235
    .local v6, appKey:Ltmsdk/fg/module/qscanner/ApkKey;
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/e;->EW:Ltmsdk/fg/module/qscanner/AmScanner;

    invoke-virtual {v0, v6}, Ltmsdk/fg/module/qscanner/AmScanner;->scanApk(Ltmsdk/fg/module/qscanner/ApkKey;)Ltmsdk/fg/module/qscanner/QScanResult;

    move-result-object v7

    .line 237
    .local v7, nativeResult:Ltmsdk/fg/module/qscanner/QScanResult;
    invoke-static {v7}, Ltmsdkobf/ix;->a(Ltmsdk/fg/module/qscanner/QScanResult;)Ltmsdk/common/module/qscanner/QScanResultEntity;

    move-result-object v8

    .line 240
    if-eqz v8, :cond_5

    iget v0, v8, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 241
    if-eqz v8, :cond_9

    iget-object v0, p0, Ltmsdk/fg/module/qscanner/e;->Fh:Ltmsdkobf/iw;

    invoke-virtual {v0, v8}, Ltmsdkobf/iw;->a(Ltmsdk/common/module/qscanner/QScanResultEntity;)Ltmsdk/common/module/qscanner/QScanResultEntity;

    move-result-object v8

    .line 245
    :cond_5
    :goto_2
    if-eqz v7, :cond_6

    iget-object v0, v7, Ltmsdk/fg/module/qscanner/QScanResult;->apkkey:Ltmsdk/fg/module/qscanner/ApkKey;

    iget-object v10, v0, Ltmsdk/fg/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    :cond_6
    iput-object v10, v6, Ltmsdk/fg/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    .line 247
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/e;->EX:Ltmsdk/fg/module/qscanner/c;

    invoke-virtual {v0, v6, v8}, Ltmsdk/fg/module/qscanner/c;->a(Ltmsdk/fg/module/qscanner/ApkKey;Ltmsdk/common/module/qscanner/QScanResultEntity;)V

    .line 251
    .end local v6           #appKey:Ltmsdk/fg/module/qscanner/ApkKey;
    .end local v7           #nativeResult:Ltmsdk/fg/module/qscanner/QScanResult;
    :cond_7
    if-eqz v8, :cond_8

    iget v0, v8, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 252
    const v0, 0x1d4c6

    invoke-static {v0}, Ltmsdkobf/im;->aT(I)V

    :cond_8
    move-object v9, v8

    .line 255
    .end local v8           #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    .restart local v9       #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    goto :goto_0

    .end local v9           #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    .restart local v6       #appKey:Ltmsdk/fg/module/qscanner/ApkKey;
    .restart local v7       #nativeResult:Ltmsdk/fg/module/qscanner/QScanResult;
    .restart local v8       #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    :cond_9
    move-object v8, v10

    .line 241
    goto :goto_2
.end method

.method static getVirusBaseVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 841
    const-wide/16 v2, 0x0

    .line 842
    .local v2, timestamp:J
    invoke-static {p0}, Ltmsdk/fg/module/qscanner/e;->s(Landroid/content/Context;)I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long v2, v5, v7

    .line 843
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 844
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 845
    .local v1, simpleDateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 846
    .local v4, version:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v5

    const/16 v7, 0xc

    if-le v5, v7, :cond_0

    const-string v5, "B"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 847
    return-object v4

    .line 846
    :cond_0
    const-string v5, "A"

    goto :goto_0
.end method

.method private hC()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v2, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    iget-object v5, p0, Ltmsdk/fg/module/qscanner/e;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ltmsdkobf/id;->a(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v3

    .line 749
    .local v3, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 750
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    new-instance v0, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v0}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    .line 751
    .local v0, app:Ltmsdk/common/module/software/AppEntity;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ltmsdk/common/module/software/AppEntity;->setPackageName(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 754
    .end local v0           #app:Ltmsdk/common/module/software/AppEntity;
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-object v2
.end method

.method static s(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 851
    const-string v2, "qv_base.amf"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, virusBasePath:Ljava/lang/String;
    invoke-static {p0, v0}, Ltmsdk/common/utils/UpdateUtil;->getVirusClientInfo(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/ck;

    move-result-object v1

    .line 853
    .local v1, virusClientInfo:Ltmsdkobf/ck;
    if-eqz v1, :cond_0

    .line 854
    invoke-virtual {v1}, Ltmsdkobf/ck;->j()I

    move-result v2

    .line 856
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private s(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, cloudInfoList:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/d;>;"
    const-string v1, "sa_cfg.dat"

    .line 462
    .local v1, SOFT_ACTION_CONFIG_DAT:Ljava/lang/String;
    const-string v0, "label_sa_cfg"

    .line 464
    .local v0, LABEL_SOFT_ACTION_CONFIG:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v4, configList:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/bp;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdkobf/d;

    .line 466
    .local v2, cloudInfo:Ltmsdkobf/d;
    invoke-virtual {v2}, Ltmsdkobf/d;->b()I

    move-result v6

    if-eqz v6, :cond_0

    .line 468
    new-instance v3, Ltmsdkobf/bp;

    iget-object v6, v2, Ltmsdkobf/d;->B:Ltmsdkobf/af;

    iget v7, v2, Ltmsdkobf/d;->H:I

    invoke-direct {v3, v6, v7}, Ltmsdkobf/bp;-><init>(Ltmsdkobf/af;I)V

    .line 469
    .local v3, config:Ltmsdkobf/bp;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 473
    .end local v2           #cloudInfo:Ltmsdkobf/d;
    .end local v3           #config:Ltmsdkobf/bp;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 474
    iget-object v6, p0, Ltmsdk/fg/module/qscanner/e;->mContext:Landroid/content/Context;

    const-string v7, "label_sa_cfg"

    const-string v8, "sa_cfg.dat"

    invoke-static {v6, v4, v7, v8}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_2
    return-void
.end method


# virtual methods
.method a(Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/ArrayList;
    .locals 2
    .parameter "scanListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/fg/module/qscanner/QScanListenerV2;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Ltmsdk/fg/module/qscanner/e;->hC()Ljava/util/ArrayList;

    move-result-object v0

    .line 130
    .local v0, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    invoke-direct {p0, v0, p1}, Ltmsdk/fg/module/qscanner/e;->a(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method b(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter "scanListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ltmsdk/fg/module/qscanner/QScanListenerV2;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    .local p1, packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 597
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 606
    :goto_0
    return-object v4

    .line 600
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 601
    .local v1, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 602
    .local v3, name:Ljava/lang/String;
    new-instance v0, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v0}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    .line 603
    .local v0, appEntity:Ltmsdk/common/module/software/AppEntity;
    invoke-virtual {v0, v3}, Ltmsdk/common/module/software/AppEntity;->setPackageName(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 606
    .end local v0           #appEntity:Ltmsdk/common/module/software/AppEntity;
    .end local v3           #name:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v1, p2}, Ltmsdk/fg/module/qscanner/e;->a(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0
.end method

.method b(Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/ArrayList;
    .locals 5
    .parameter "scanListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/fg/module/qscanner/QScanListenerV2;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v1, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    new-instance v0, Ltmsdk/fg/module/qscanner/e$1;

    invoke-direct {v0, p0, v1, p1}, Ltmsdk/fg/module/qscanner/e$1;-><init>(Ltmsdk/fg/module/qscanner/e;Ljava/util/ArrayList;Ltmsdk/fg/module/qscanner/QScanListenerV2;)V

    .line 180
    .local v0, callback:Ltmsdkobf/jv$a;
    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p1, v2}, Ltmsdk/fg/module/qscanner/QScanListenerV2;->onScanStarted(I)V

    .line 185
    :cond_0
    invoke-virtual {p0}, Ltmsdk/fg/module/qscanner/e;->initScanner()V

    .line 186
    iget-object v3, p0, Ltmsdk/fg/module/qscanner/e;->EZ:[B

    monitor-enter v3

    .line 187
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Ltmsdk/fg/module/qscanner/e;->Fa:Z

    .line 188
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-static {}, Ltmsdkobf/jv;->eT()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Ltmsdk/fg/module/qscanner/e;->Ff:[Ljava/lang/String;

    invoke-static {v2, v0, v4, v3}, Ltmsdkobf/jv;->a(Ljava/util/List;Ltmsdkobf/jv$a;Z[Ljava/lang/String;)V

    .line 193
    iget-object v3, p0, Ltmsdk/fg/module/qscanner/e;->Fe:Ljava/lang/Object;

    monitor-enter v3

    .line 194
    :try_start_1
    iget-boolean v2, p0, Ltmsdk/fg/module/qscanner/e;->Fc:Z

    if-nez v2, :cond_1

    .line 195
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, v1}, Ltmsdk/fg/module/qscanner/e;->a(ILtmsdk/fg/module/qscanner/QScanListenerV2;Ljava/util/List;)V

    .line 197
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    iget-object v3, p0, Ltmsdk/fg/module/qscanner/e;->EZ:[B

    monitor-enter v3

    .line 200
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Ltmsdk/fg/module/qscanner/e;->Fa:Z

    .line 201
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 203
    return-object v1

    .line 188
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 197
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 201
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2
.end method

.method c(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter "scanListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ltmsdk/fg/module/qscanner/QScanListenerV2;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 622
    .local p1, apkPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 623
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 633
    :goto_0
    return-object v4

    .line 626
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 627
    .local v2, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 628
    .local v0, apkPath:Ljava/lang/String;
    new-instance v1, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v1}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    .line 629
    .local v1, app:Ltmsdk/common/module/software/AppEntity;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ltmsdk/common/module/software/AppEntity;->setApkFlag(Z)V

    .line 630
    invoke-virtual {v1, v0}, Ltmsdk/common/module/software/AppEntity;->setApkPath(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 633
    .end local v0           #apkPath:Ljava/lang/String;
    .end local v1           #app:Ltmsdk/common/module/software/AppEntity;
    :cond_2
    invoke-direct {p0, v2, p2}, Ltmsdk/fg/module/qscanner/e;->a(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0
.end method

.method c(Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/ArrayList;
    .locals 4
    .parameter "scanListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/fg/module/qscanner/QScanListenerV2;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 488
    new-instance v0, Ltmsdk/fg/module/qscanner/e$2;

    invoke-direct {v0, p0, p1}, Ltmsdk/fg/module/qscanner/e$2;-><init>(Ltmsdk/fg/module/qscanner/e;Ltmsdk/fg/module/qscanner/QScanListenerV2;)V

    .line 499
    .local v0, callback:Ltmsdk/fg/module/qscanner/b;
    if-eqz p1, :cond_0

    .line 500
    invoke-virtual {p1, v2}, Ltmsdk/fg/module/qscanner/QScanListenerV2;->onScanStarted(I)V

    .line 503
    :cond_0
    iget-object v3, p0, Ltmsdk/fg/module/qscanner/e;->EZ:[B

    monitor-enter v3

    .line 504
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Ltmsdk/fg/module/qscanner/e;->Fa:Z

    .line 505
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/e;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ltmsdk/fg/module/qscanner/h;->u(Landroid/content/Context;)Ltmsdk/fg/module/qscanner/h;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Ltmsdk/fg/module/qscanner/h;->b(Ltmsdk/fg/module/qscanner/QScanListenerV2;Ltmsdk/fg/module/qscanner/b;)Ljava/util/ArrayList;

    move-result-object v1

    .line 510
    .local v1, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    iget-object v3, p0, Ltmsdk/fg/module/qscanner/e;->Fe:Ljava/lang/Object;

    monitor-enter v3

    .line 511
    :try_start_1
    iget-boolean v2, p0, Ltmsdk/fg/module/qscanner/e;->Fc:Z

    if-nez v2, :cond_1

    .line 512
    const/4 v2, 0x3

    invoke-direct {p0, v2, p1, v1}, Ltmsdk/fg/module/qscanner/e;->a(ILtmsdk/fg/module/qscanner/QScanListenerV2;Ljava/util/List;)V

    .line 514
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 515
    iget-object v3, p0, Ltmsdk/fg/module/qscanner/e;->EZ:[B

    monitor-enter v3

    .line 516
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Ltmsdk/fg/module/qscanner/e;->Fa:Z

    .line 517
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 518
    return-object v1

    .line 505
    .end local v1           #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 514
    .restart local v1       #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 517
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2
.end method

.method cancelScan()V
    .locals 2

    .prologue
    .line 806
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/e;->Fe:Ljava/lang/Object;

    monitor-enter v1

    .line 807
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ltmsdk/fg/module/qscanner/e;->Fc:Z

    .line 808
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/e;->Fb:Ljava/lang/Object;

    monitor-enter v1

    .line 811
    :try_start_1
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/e;->Fb:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 812
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 813
    return-void

    .line 808
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 812
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public certCheckInstalledPackage(Ljava/lang/String;)Ltmsdk/common/module/qscanner/QScanResultEntity;
    .locals 5
    .parameter "pkgname"

    .prologue
    .line 819
    new-instance v1, Ltmsdk/common/module/qscanner/QScanResultEntity;

    invoke-direct {v1}, Ltmsdk/common/module/qscanner/QScanResultEntity;-><init>()V

    .line 820
    .local v1, result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    iput-object p1, v1, Ltmsdk/common/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    .line 821
    const/4 v3, 0x0

    iput v3, v1, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    .line 822
    const-class v3, Ltmsdk/common/module/software/SoftwareManager;

    invoke-static {v3}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v3

    check-cast v3, Ltmsdk/common/module/software/SoftwareManager;

    const/16 v4, 0x10

    invoke-virtual {v3, p1, v4}, Ltmsdk/common/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v0

    .line 823
    .local v0, app:Ltmsdk/common/module/software/AppEntity;
    if-nez v0, :cond_0

    move-object v2, v1

    .line 831
    .end local v1           #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    .local v2, result:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 826
    .end local v2           #result:Ljava/lang/Object;
    .restart local v1       #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    :cond_0
    invoke-virtual {v0}, Ltmsdk/common/module/software/AppEntity;->getCertMD5()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ltmsdk/common/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    .line 827
    iget-object v3, p0, Ltmsdk/fg/module/qscanner/e;->Fh:Ltmsdkobf/iw;

    if-nez v3, :cond_1

    .line 828
    new-instance v3, Ltmsdkobf/iw;

    iget-object v4, p0, Ltmsdk/fg/module/qscanner/e;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Ltmsdkobf/iw;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Ltmsdk/fg/module/qscanner/e;->Fh:Ltmsdkobf/iw;

    .line 830
    :cond_1
    iget-object v3, p0, Ltmsdk/fg/module/qscanner/e;->Fh:Ltmsdkobf/iw;

    invoke-virtual {v3, v1}, Ltmsdkobf/iw;->a(Ltmsdk/common/module/qscanner/QScanResultEntity;)Ltmsdk/common/module/qscanner/QScanResultEntity;

    move-result-object v1

    move-object v2, v1

    .line 831
    .restart local v2       #result:Ljava/lang/Object;
    goto :goto_0
.end method

.method cloudScan(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/List;
    .locals 11
    .parameter
    .parameter "scanListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;",
            "Ltmsdk/fg/module/qscanner/QScanListenerV2;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    const/4 v9, 0x1

    const/4 v10, 0x2

    .line 325
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 327
    .local v4, nativeResults:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    const v8, 0x1d4c7

    invoke-static {v8, v9}, Ltmsdkobf/im;->a(II)V

    .line 330
    invoke-static {}, Ltmsdkobf/is;->dt()Ltmsdkobf/is;

    move-result-object v8

    invoke-virtual {v8}, Ltmsdkobf/is;->dv()Z

    move-result v8

    if-nez v8, :cond_0

    .line 331
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "TMS licence expired! Please contact TMS(Tencent Mobile Secure) group."

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 334
    :cond_0
    if-eqz p2, :cond_1

    .line 335
    invoke-virtual {p2, v10}, Ltmsdk/fg/module/qscanner/QScanListenerV2;->onScanStarted(I)V

    .line 339
    :cond_1
    invoke-direct {p0, v10, p2}, Ltmsdk/fg/module/qscanner/e;->a(ILtmsdk/fg/module/qscanner/QScanListenerV2;)V

    .line 340
    invoke-direct {p0, v10, p2}, Ltmsdk/fg/module/qscanner/e;->b(ILtmsdk/fg/module/qscanner/QScanListenerV2;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 386
    :goto_0
    return-object v4

    .line 344
    :cond_2
    iget-object v8, p0, Ltmsdk/fg/module/qscanner/e;->EX:Ltmsdk/fg/module/qscanner/c;

    if-nez v8, :cond_3

    .line 345
    invoke-static {}, Ltmsdk/fg/module/qscanner/c;->hx()Ltmsdk/fg/module/qscanner/c;

    move-result-object v8

    iput-object v8, p0, Ltmsdk/fg/module/qscanner/e;->EX:Ltmsdk/fg/module/qscanner/c;

    .line 347
    :cond_3
    iget-object v9, p0, Ltmsdk/fg/module/qscanner/e;->EZ:[B

    monitor-enter v9

    .line 348
    const/4 v8, 0x1

    :try_start_0
    iput-boolean v8, p0, Ltmsdk/fg/module/qscanner/e;->Fa:Z

    .line 349
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    iget-object v8, p0, Ltmsdk/fg/module/qscanner/e;->mContext:Landroid/content/Context;

    invoke-static {v8}, Ltmsdk/fg/module/qscanner/e;->s(Landroid/content/Context;)I

    move-result v7

    .line 351
    .local v7, virusBaseVersion:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v2, featureList:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/br;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltmsdk/common/module/qscanner/QScanResultEntity;

    .line 353
    .local v5, result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    invoke-static {v5, v7}, Ltmsdkobf/ix;->a(Ltmsdk/common/module/qscanner/QScanResultEntity;I)Ltmsdkobf/br;

    move-result-object v6

    .line 354
    .local v6, softFeature:Ltmsdkobf/br;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 349
    .end local v2           #featureList:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/br;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    .end local v6           #softFeature:Ltmsdkobf/br;
    .end local v7           #virusBaseVersion:I
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 357
    .restart local v2       #featureList:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/br;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v7       #virusBaseVersion:I
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v0, cloudInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/d;>;"
    const-class v8, Ltmsdkobf/lk;

    invoke-static {v8}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v8

    check-cast v8, Ltmsdkobf/lk;

    invoke-virtual {v8, v2, v0}, Ltmsdkobf/lk;->a(Ljava/util/List;Ljava/util/ArrayList;)I

    move-result v1

    .line 361
    .local v1, err:I
    invoke-direct {p0, v10, p2}, Ltmsdk/fg/module/qscanner/e;->a(ILtmsdk/fg/module/qscanner/QScanListenerV2;)V

    .line 362
    invoke-direct {p0, v10, p2}, Ltmsdk/fg/module/qscanner/e;->b(ILtmsdk/fg/module/qscanner/QScanListenerV2;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 363
    iget-object v9, p0, Ltmsdk/fg/module/qscanner/e;->EZ:[B

    monitor-enter v9

    .line 364
    const/4 v8, 0x0

    :try_start_2
    iput-boolean v8, p0, Ltmsdk/fg/module/qscanner/e;->Fa:Z

    .line 365
    monitor-exit v9

    goto :goto_0

    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .line 369
    :cond_5
    if-nez v1, :cond_7

    .line 371
    invoke-direct {p0, v4, v0}, Ltmsdk/fg/module/qscanner/e;->b(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 373
    invoke-direct {p0, v4, v0}, Ltmsdk/fg/module/qscanner/e;->a(Ljava/util/List;Ljava/util/List;)V

    .line 375
    invoke-direct {p0, v0}, Ltmsdk/fg/module/qscanner/e;->s(Ljava/util/List;)V

    .line 377
    invoke-direct {p0, v10, p2, v4}, Ltmsdk/fg/module/qscanner/e;->a(ILtmsdk/fg/module/qscanner/QScanListenerV2;Ljava/util/List;)V

    .line 382
    :cond_6
    :goto_2
    iget-object v9, p0, Ltmsdk/fg/module/qscanner/e;->EZ:[B

    monitor-enter v9

    .line 383
    const/4 v8, 0x0

    :try_start_3
    iput-boolean v8, p0, Ltmsdk/fg/module/qscanner/e;->Fa:Z

    .line 384
    monitor-exit v9

    goto :goto_0

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v8

    .line 378
    :cond_7
    if-eqz p2, :cond_6

    .line 379
    invoke-virtual {p2, v10, v1}, Ltmsdk/fg/module/qscanner/QScanListenerV2;->onScanError(II)V

    goto :goto_2
.end method

.method continueScan()V
    .locals 2

    .prologue
    .line 797
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/e;->Fb:Ljava/lang/Object;

    monitor-enter v1

    .line 798
    :try_start_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/e;->Fb:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 799
    monitor-exit v1

    .line 800
    return-void

    .line 799
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method d(Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/ArrayList;
    .locals 4
    .parameter "scanListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/fg/module/qscanner/QScanListenerV2;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 539
    new-instance v0, Ltmsdk/fg/module/qscanner/e$3;

    invoke-direct {v0, p0, p1}, Ltmsdk/fg/module/qscanner/e$3;-><init>(Ltmsdk/fg/module/qscanner/e;Ltmsdk/fg/module/qscanner/QScanListenerV2;)V

    .line 550
    .local v0, callback:Ltmsdk/fg/module/qscanner/b;
    if-eqz p1, :cond_0

    .line 551
    invoke-virtual {p1, v2}, Ltmsdk/fg/module/qscanner/QScanListenerV2;->onScanStarted(I)V

    .line 553
    :cond_0
    iget-object v3, p0, Ltmsdk/fg/module/qscanner/e;->EZ:[B

    monitor-enter v3

    .line 554
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Ltmsdk/fg/module/qscanner/e;->Fa:Z

    .line 555
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/e;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ltmsdk/fg/module/qscanner/g;->t(Landroid/content/Context;)Ltmsdk/fg/module/qscanner/g;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Ltmsdk/fg/module/qscanner/g;->a(Ltmsdk/fg/module/qscanner/QScanListenerV2;Ltmsdk/fg/module/qscanner/b;)Ljava/util/ArrayList;

    move-result-object v1

    .line 557
    .local v1, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    iget-object v3, p0, Ltmsdk/fg/module/qscanner/e;->Fe:Ljava/lang/Object;

    monitor-enter v3

    .line 558
    :try_start_1
    iget-boolean v2, p0, Ltmsdk/fg/module/qscanner/e;->Fc:Z

    if-nez v2, :cond_1

    .line 559
    const/4 v2, 0x4

    invoke-direct {p0, v2, p1, v1}, Ltmsdk/fg/module/qscanner/e;->a(ILtmsdk/fg/module/qscanner/QScanListenerV2;Ljava/util/List;)V

    .line 561
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 562
    iget-object v3, p0, Ltmsdk/fg/module/qscanner/e;->EZ:[B

    monitor-enter v3

    .line 563
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Ltmsdk/fg/module/qscanner/e;->Fa:Z

    .line 564
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 565
    return-object v1

    .line 555
    .end local v1           #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 561
    .restart local v1       #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 564
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method freeScanner()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/e;->EZ:[B

    monitor-enter v1

    .line 103
    :try_start_0
    iget-boolean v0, p0, Ltmsdk/fg/module/qscanner/e;->Fa:Z

    if-eqz v0, :cond_1

    .line 104
    monitor-exit v1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-static {}, Ltmsdk/fg/module/qscanner/c;->hy()V

    .line 109
    iput-object v2, p0, Ltmsdk/fg/module/qscanner/e;->EX:Ltmsdk/fg/module/qscanner/c;

    .line 110
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/e;->EW:Ltmsdk/fg/module/qscanner/AmScanner;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/e;->EW:Ltmsdk/fg/module/qscanner/AmScanner;

    invoke-virtual {v0}, Ltmsdk/fg/module/qscanner/AmScanner;->finalize()V

    .line 112
    iput-object v2, p0, Ltmsdk/fg/module/qscanner/e;->EW:Ltmsdk/fg/module/qscanner/AmScanner;

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x2

    return v0
.end method

.method handleSpecial(Ltmsdk/common/module/qscanner/QScanResultEntity;)Z
    .locals 1
    .parameter "entity"

    .prologue
    .line 577
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltmsdk/fg/module/qscanner/g;->t(Landroid/content/Context;)Ltmsdk/fg/module/qscanner/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltmsdk/fg/module/qscanner/g;->handleSpecial(Ltmsdk/common/module/qscanner/QScanResultEntity;)Z

    move-result v0

    return v0
.end method

.method handleSystemFlaw(Ltmsdk/common/module/qscanner/QScanResultEntity;)Z
    .locals 1
    .parameter "entity"

    .prologue
    .line 527
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltmsdk/fg/module/qscanner/h;->u(Landroid/content/Context;)Ltmsdk/fg/module/qscanner/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltmsdk/fg/module/qscanner/h;->handleSystemFlaw(Ltmsdk/common/module/qscanner/QScanResultEntity;)Z

    move-result v0

    return v0
.end method

.method initScanner()V
    .locals 4

    .prologue
    .line 86
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/e;->EX:Ltmsdk/fg/module/qscanner/c;

    if-nez v1, :cond_0

    .line 87
    invoke-static {}, Ltmsdk/fg/module/qscanner/c;->hx()Ltmsdk/fg/module/qscanner/c;

    move-result-object v1

    iput-object v1, p0, Ltmsdk/fg/module/qscanner/e;->EX:Ltmsdk/fg/module/qscanner/c;

    .line 89
    :cond_0
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/e;->EW:Ltmsdk/fg/module/qscanner/AmScanner;

    if-nez v1, :cond_1

    .line 90
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/e;->mContext:Landroid/content/Context;

    const-string v2, "qv_base.amf"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, amfile:Ljava/lang/String;
    new-instance v1, Ltmsdk/fg/module/qscanner/AmScanner;

    iget-object v2, p0, Ltmsdk/fg/module/qscanner/e;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Ltmsdk/fg/module/qscanner/AmScanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Ltmsdk/fg/module/qscanner/e;->EW:Ltmsdk/fg/module/qscanner/AmScanner;

    .line 93
    .end local v0           #amfile:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/e;->Fh:Ltmsdkobf/iw;

    if-nez v1, :cond_2

    .line 94
    new-instance v1, Ltmsdkobf/iw;

    iget-object v2, p0, Ltmsdk/fg/module/qscanner/e;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Ltmsdkobf/iw;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ltmsdk/fg/module/qscanner/e;->Fh:Ltmsdkobf/iw;

    .line 96
    :cond_2
    return-void
.end method

.method loadBehaviorConfig()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 637
    iget-object v9, p0, Ltmsdk/fg/module/qscanner/e;->mContext:Landroid/content/Context;

    sget-object v10, Ltmsdk/common/module/update/UpdateConfig;->ADB_DES_LIST_NAME:Ljava/lang/String;

    const-string v11, "ADB_DES_LIST"

    new-instance v12, Ltmsdkobf/p;

    invoke-direct {v12}, Ltmsdkobf/p;-><init>()V

    const-string v13, "UTF-8"

    invoke-static {v9, v10, v11, v12, v13}, Ltmsdkobf/kk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltmsdkobf/p;

    .line 639
    .local v7, rawConfig:Ltmsdkobf/p;
    if-eqz v7, :cond_0

    iget-object v9, v7, Ltmsdkobf/p;->aK:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, v7, Ltmsdkobf/p;->aK:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 640
    :cond_0
    const-string v9, "QScannerManangerImplV2"

    const-string v10, "Empty ad behavior config!"

    invoke-static {v9, v10}, Ltmsdk/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 641
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 668
    :cond_1
    return-object v3

    .line 643
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    iget-object v9, v7, Ltmsdkobf/p;->aK:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 644
    .local v3, config:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;>;"
    iget-object v9, v7, Ltmsdkobf/p;->aK:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ltmsdkobf/o;

    .line 645
    .local v8, rawInfo:Ltmsdkobf/o;
    new-instance v6, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;

    invoke-direct {v6}, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;-><init>()V

    .line 647
    .local v6, info:Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;
    :try_start_0
    iget-object v9, v8, Ltmsdkobf/o;->aC:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 648
    .local v0, behaviorCategory:I
    iget-object v9, v8, Ltmsdkobf/o;->aD:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v1, v9

    .line 649
    .local v1, behaviorValue:J
    packed-switch v0, :pswitch_data_0

    .line 657
    const-string v9, "QScannerManangerImplV2"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad behavior category "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 664
    .end local v0           #behaviorCategory:I
    .end local v1           #behaviorValue:J
    :catch_0
    move-exception v4

    .line 665
    .local v4, e:Ljava/lang/RuntimeException;
    const-string v9, "QScannerManangerImplV2"

    const-string v10, "skipping a config item"

    invoke-static {v9, v10, v4}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 651
    .end local v4           #e:Ljava/lang/RuntimeException;
    .restart local v0       #behaviorCategory:I
    .restart local v1       #behaviorValue:J
    :pswitch_0
    :try_start_1
    iput-wide v1, v6, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;->behavior:J

    .line 660
    :goto_1
    iget-object v9, v8, Ltmsdkobf/o;->aE:Ljava/lang/String;

    iput-object v9, v6, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;->description:Ljava/lang/String;

    .line 661
    iget-object v9, v8, Ltmsdkobf/o;->aF:Ljava/lang/String;

    iput-object v9, v6, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;->damage:Ljava/lang/String;

    .line 662
    iget-object v9, v8, Ltmsdkobf/o;->aG:Ljava/lang/String;

    iput-object v9, v6, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;->level:Ljava/lang/String;

    .line 663
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 654
    :pswitch_1
    const/16 v9, 0x20

    shl-long v9, v1, v9

    iput-wide v9, v6, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;->behavior:J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 649
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 77
    iput-object p1, p0, Ltmsdk/fg/module/qscanner/e;->mContext:Landroid/content/Context;

    .line 78
    const-class v0, Ltmsdk/common/module/software/SoftwareManager;

    invoke-static {v0}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/software/SoftwareManager;

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/e;->yP:Ltmsdk/common/module/software/SoftwareManager;

    .line 79
    const-string v0, "qv_base.amf"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    return-void
.end method

.method pauseScan()V
    .locals 2

    .prologue
    .line 787
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/e;->Fb:Ljava/lang/Object;

    monitor-enter v1

    .line 788
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ltmsdk/fg/module/qscanner/e;->mPaused:Z

    .line 789
    monitor-exit v1

    .line 790
    return-void

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
