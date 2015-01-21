.class final Ltmsdk/fg/module/qscanner/d;
.super Ltmsdk/fg/creator/BaseManagerF;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private EW:Ltmsdk/fg/module/qscanner/AmScanner;

.field private EX:Ltmsdk/fg/module/qscanner/c;

.field private EY:Ltmsdk/fg/module/qscanner/CertChecker;

.field private EZ:[B

.field private Fa:Z

.field private Fb:Ljava/lang/Object;

.field private Fc:Z

.field private Fd:Z

.field private Fe:Ljava/lang/Object;

.field private Ff:[Ljava/lang/String;

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

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/d;->EZ:[B

    .line 58
    iput-boolean v2, p0, Ltmsdk/fg/module/qscanner/d;->mPaused:Z

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/d;->Fb:Ljava/lang/Object;

    .line 61
    iput-boolean v2, p0, Ltmsdk/fg/module/qscanner/d;->Fc:Z

    .line 62
    iput-boolean v2, p0, Ltmsdk/fg/module/qscanner/d;->Fd:Z

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/d;->Fe:Ljava/lang/Object;

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

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/d;->Ff:[Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized a(Ljava/util/ArrayList;Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .parameter "scanListener"
    .parameter "doCloudScan"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/software/AppEntity;",
            ">;",
            "Ltmsdk/fg/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 143
    :try_start_0
    invoke-virtual {p2}, Ltmsdk/fg/module/qscanner/QScanListener;->onScanStarted()V

    .line 147
    :cond_0
    invoke-virtual {p0}, Ltmsdk/fg/module/qscanner/d;->initScanner()V

    .line 148
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/d;->EZ:[B

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Ltmsdk/fg/module/qscanner/d;->Fa:Z

    .line 150
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :try_start_2
    invoke-direct {p0, p1, p2}, Ltmsdk/fg/module/qscanner/d;->b(Ljava/util/ArrayList;Ltmsdk/fg/module/qscanner/QScanListener;)Ljava/util/ArrayList;

    move-result-object v0

    .line 159
    .local v0, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    if-eqz p3, :cond_1

    .line 160
    invoke-direct {p0, v0, p2}, Ltmsdk/fg/module/qscanner/d;->cloudScan(Ljava/util/ArrayList;Ltmsdk/fg/module/qscanner/QScanListener;)Ljava/util/ArrayList;

    move-result-object v0

    .line 166
    :cond_1
    invoke-direct {p0, p2, v0}, Ltmsdk/fg/module/qscanner/d;->a(Ltmsdk/fg/module/qscanner/QScanListener;Ljava/util/ArrayList;)V

    .line 169
    invoke-virtual {p0}, Ltmsdk/fg/module/qscanner/d;->freeScanner()V

    .line 170
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/d;->EZ:[B

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Ltmsdk/fg/module/qscanner/d;->Fa:Z

    .line 172
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 174
    monitor-exit p0

    return-object v0

    .line 150
    .end local v0           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 142
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 172
    .restart local v0       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private a(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/fg/module/qscanner/ApkKey;
    .locals 9
    .parameter "appEntity"
    .parameter "apkType"

    .prologue
    .line 476
    if-nez p1, :cond_0

    .line 477
    const/4 v0, 0x0

    .line 488
    :goto_0
    return-object v0

    .line 479
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

    .line 488
    .local v0, apkKey:Ltmsdk/fg/module/qscanner/ApkKey;
    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
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
    .line 380
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
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

    .line 381
    .local v0, cloudInfo:Ltmsdkobf/d;
    invoke-virtual {v0}, Ltmsdkobf/d;->a()Ltmsdkobf/cf;

    move-result-object v5

    .line 382
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

    .line 383
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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

    .line 384
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

    .line 387
    new-instance v1, Ltmsdkobf/jz;

    iget-object v6, p0, Ltmsdk/fg/module/qscanner/d;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Ltmsdkobf/jz;-><init>(Landroid/content/Context;)V

    .line 388
    .local v1, httpPostFile:Ltmsdkobf/jz;
    const-string v6, "http://uploadserver.3g.qq.com/upload_v3"

    invoke-virtual {v1, v6}, Ltmsdkobf/jz;->setUrl(Ljava/lang/String;)V

    .line 389
    iget-object v6, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Ltmsdkobf/jz;->a(Ljava/lang/String;Ltmsdkobf/cf;)I

    goto :goto_0

    .line 394
    .end local v0           #cloudInfo:Ltmsdkobf/d;
    .end local v1           #httpPostFile:Ltmsdkobf/jz;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    .end local v5           #uploadInfo:Ltmsdkobf/cf;
    :cond_2
    return-void
.end method

.method private a(Ltmsdk/fg/module/qscanner/QScanListener;)V
    .locals 4
    .parameter "scanListener"

    .prologue
    .line 423
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/d;->Fb:Ljava/lang/Object;

    monitor-enter v2

    .line 425
    :try_start_0
    iget-boolean v1, p0, Ltmsdk/fg/module/qscanner/d;->mPaused:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 426
    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p1}, Ltmsdk/fg/module/qscanner/QScanListener;->onScanPaused()V

    .line 429
    :cond_0
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/d;->Fb:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 430
    if-eqz p1, :cond_1

    .line 431
    invoke-virtual {p1}, Ltmsdk/fg/module/qscanner/QScanListener;->onScanContinue()V

    .line 433
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Ltmsdk/fg/module/qscanner/d;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 439
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "QScannerManangerImpl"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 438
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private a(Ltmsdk/fg/module/qscanner/QScanListener;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "scanListener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/fg/module/qscanner/QScanListener;",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/d;->Fb:Ljava/lang/Object;

    monitor-enter v1

    .line 463
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ltmsdk/fg/module/qscanner/d;->mPaused:Z

    .line 464
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/d;->Fe:Ljava/lang/Object;

    monitor-enter v1

    .line 466
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Ltmsdk/fg/module/qscanner/d;->Fc:Z

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdk/fg/module/qscanner/d;->Fd:Z

    .line 468
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 470
    if-eqz p1, :cond_0

    .line 471
    invoke-virtual {p1, p2}, Ltmsdk/fg/module/qscanner/QScanListener;->onScanFinished(Ljava/util/ArrayList;)V

    .line 473
    :cond_0
    return-void

    .line 464
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 468
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private b(Ljava/util/ArrayList;Ltmsdk/fg/module/qscanner/QScanListener;)Ljava/util/ArrayList;
    .locals 19
    .parameter
    .parameter "scanListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/software/AppEntity;",
            ">;",
            "Ltmsdk/fg/module/qscanner/QScanListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v14, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 285
    :cond_0
    return-object v14

    .line 214
    :cond_1
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_0

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ltmsdk/fg/module/qscanner/d;->a(Ltmsdk/fg/module/qscanner/QScanListener;)V

    .line 217
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ltmsdk/fg/module/qscanner/d;->b(Ltmsdk/fg/module/qscanner/QScanListener;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 224
    .local v15, time:J
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ltmsdk/common/module/software/AppEntity;

    .line 226
    .local v8, appEntity:Ltmsdk/common/module/software/AppEntity;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Ltmsdk/fg/module/qscanner/d;->b(Ltmsdk/common/module/software/AppEntity;)Ltmsdk/common/module/software/AppEntity;

    move-result-object v8

    .line 227
    if-nez v8, :cond_3

    .line 214
    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 231
    :cond_3
    const/4 v7, 0x0

    .line 232
    .local v7, appType:I
    invoke-virtual {v8}, Ltmsdk/common/module/software/AppEntity;->isApk()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 233
    const/4 v7, 0x2

    .line 237
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Ltmsdk/fg/module/qscanner/d;->EX:Ltmsdk/fg/module/qscanner/c;

    invoke-virtual {v8}, Ltmsdk/common/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ltmsdk/common/module/software/AppEntity;->getApkPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Ltmsdk/common/module/software/AppEntity;->getSize()J

    move-result-wide v5

    invoke-virtual/range {v2 .. v7}, Ltmsdk/fg/module/qscanner/c;->a(Ljava/lang/String;Ljava/lang/String;JI)Ltmsdk/common/module/qscanner/QScanResultEntity;

    move-result-object v13

    .line 238
    .local v13, result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    if-nez v13, :cond_5

    .line 240
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Ltmsdk/fg/module/qscanner/d;->c(Ltmsdk/common/module/software/AppEntity;)Ltmsdk/common/module/software/AppEntity;

    move-result-object v8

    .line 241
    if-eqz v8, :cond_2

    .line 244
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Ltmsdk/fg/module/qscanner/d;->a(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/fg/module/qscanner/ApkKey;

    move-result-object v9

    .line 245
    .local v9, appKey:Ltmsdk/fg/module/qscanner/ApkKey;
    move-object/from16 v0, p0

    iget-object v2, v0, Ltmsdk/fg/module/qscanner/d;->EW:Ltmsdk/fg/module/qscanner/AmScanner;

    invoke-virtual {v2, v9}, Ltmsdk/fg/module/qscanner/AmScanner;->scanApk(Ltmsdk/fg/module/qscanner/ApkKey;)Ltmsdk/fg/module/qscanner/QScanResult;

    move-result-object v12

    .line 248
    .local v12, nativeResult:Ltmsdk/fg/module/qscanner/QScanResult;
    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Ltmsdk/fg/module/qscanner/d;->EY:Ltmsdk/fg/module/qscanner/CertChecker;

    invoke-virtual {v2, v12}, Ltmsdk/fg/module/qscanner/CertChecker;->checkCert(Ltmsdk/fg/module/qscanner/QScanResult;)Ltmsdk/fg/module/qscanner/QScanResult;

    move-result-object v12

    .line 250
    :goto_3
    invoke-static {v12}, Ltmsdkobf/ix;->a(Ltmsdk/fg/module/qscanner/QScanResult;)Ltmsdk/common/module/qscanner/QScanResultEntity;

    move-result-object v13

    .line 252
    if-eqz v12, :cond_b

    iget-object v2, v12, Ltmsdk/fg/module/qscanner/QScanResult;->apkkey:Ltmsdk/fg/module/qscanner/ApkKey;

    iget-object v2, v2, Ltmsdk/fg/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    :goto_4
    iput-object v2, v9, Ltmsdk/fg/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Ltmsdk/fg/module/qscanner/d;->EX:Ltmsdk/fg/module/qscanner/c;

    invoke-virtual {v2, v9, v13}, Ltmsdk/fg/module/qscanner/c;->a(Ltmsdk/fg/module/qscanner/ApkKey;Ltmsdk/common/module/qscanner/QScanResultEntity;)V

    .line 258
    .end local v9           #appKey:Ltmsdk/fg/module/qscanner/ApkKey;
    .end local v12           #nativeResult:Ltmsdk/fg/module/qscanner/QScanResult;
    :cond_5
    if-eqz v13, :cond_8

    .line 259
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    if-eqz p2, :cond_7

    .line 261
    iget v2, v13, Ltmsdk/common/module/qscanner/QScanResultEntity;->apkType:I

    if-eqz v2, :cond_6

    iget v2, v13, Ltmsdk/common/module/qscanner/QScanResultEntity;->apkType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 262
    :cond_6
    add-int/lit8 v2, v11, 0x1

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/2addr v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v13}, Ltmsdk/fg/module/qscanner/QScanListener;->onPackageScanProgress(ILtmsdk/common/module/qscanner/QScanResultEntity;)V

    .line 269
    :cond_7
    :goto_5
    if-eqz v13, :cond_8

    iget v2, v13, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 270
    const v2, 0x1d4c6

    invoke-static {v2}, Ltmsdkobf/im;->aT(I)V

    .line 275
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v17, v2, v15

    .line 276
    .local v17, usedTime:J
    const-wide/16 v2, 0x14

    cmp-long v2, v17, v2

    if-gez v2, :cond_2

    .line 278
    const-wide/16 v2, 0x14

    sub-long v2, v2, v17

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 279
    :catch_0
    move-exception v10

    .line 280
    .local v10, e:Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 234
    .end local v10           #e:Ljava/lang/InterruptedException;
    .end local v13           #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    .end local v17           #usedTime:J
    :cond_9
    invoke-virtual {v8}, Ltmsdk/common/module/software/AppEntity;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 235
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 248
    .restart local v9       #appKey:Ltmsdk/fg/module/qscanner/ApkKey;
    .restart local v12       #nativeResult:Ltmsdk/fg/module/qscanner/QScanResult;
    .restart local v13       #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    :cond_a
    const/4 v12, 0x0

    goto :goto_3

    .line 252
    :cond_b
    const/4 v2, 0x0

    goto :goto_4

    .line 263
    .end local v9           #appKey:Ltmsdk/fg/module/qscanner/ApkKey;
    .end local v12           #nativeResult:Ltmsdk/fg/module/qscanner/QScanResult;
    :cond_c
    iget v2, v13, Ltmsdk/common/module/qscanner/QScanResultEntity;->apkType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 264
    add-int/lit8 v2, v11, 0x1

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/2addr v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v13}, Ltmsdk/fg/module/qscanner/QScanListener;->onSdcardScanProgress(ILtmsdk/common/module/qscanner/QScanResultEntity;)V

    goto :goto_5
.end method

.method private b(Ltmsdk/common/module/software/AppEntity;)Ltmsdk/common/module/software/AppEntity;
    .locals 2
    .parameter "app"

    .prologue
    .line 537
    invoke-virtual {p1}, Ltmsdk/common/module/software/AppEntity;->isApk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/d;->yP:Ltmsdk/common/module/software/SoftwareManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p1, v1}, Ltmsdk/common/module/software/SoftwareManager;->getApkInfo(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v0

    .line 540
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/d;->yP:Ltmsdk/common/module/software/SoftwareManager;

    const/16 v1, 0x49

    invoke-virtual {v0, p1, v1}, Ltmsdk/common/module/software/SoftwareManager;->getAppInfo(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
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
    .line 348
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    .local p2, cloudInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/d;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltmsdk/common/module/qscanner/QScanResultEntity;

    .line 349
    .local v3, result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/d;

    .line 350
    .local v0, cloudInfo:Ltmsdkobf/d;
    iget-object v4, v3, Ltmsdk/common/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v5, v0, Ltmsdkobf/d;->B:Ltmsdkobf/af;

    iget-object v5, v5, Ltmsdkobf/af;->dE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Ltmsdk/common/module/qscanner/QScanResultEntity;->size:I

    iget-object v5, v0, Ltmsdkobf/d;->B:Ltmsdkobf/af;

    iget v5, v5, Ltmsdkobf/af;->r:I

    if-ne v4, v5, :cond_1

    iget-object v4, v0, Ltmsdkobf/d;->D:Ltmsdkobf/l;

    iget v4, v4, Ltmsdkobf/l;->X:I

    if-eqz v4, :cond_1

    .line 354
    iget-object v4, v0, Ltmsdkobf/d;->D:Ltmsdkobf/l;

    iget v4, v4, Ltmsdkobf/l;->X:I

    iput v4, v3, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    .line 355
    iget-object v4, v0, Ltmsdkobf/d;->D:Ltmsdkobf/l;

    iget v4, v4, Ltmsdkobf/l;->am:I

    iput v4, v3, Ltmsdk/common/module/qscanner/QScanResultEntity;->advice:I

    .line 356
    iget-object v4, v0, Ltmsdkobf/d;->D:Ltmsdkobf/l;

    iget-object v4, v4, Ltmsdkobf/l;->ah:Ljava/lang/String;

    iput-object v4, v3, Ltmsdk/common/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    .line 358
    iget-object v4, v0, Ltmsdkobf/d;->D:Ltmsdkobf/l;

    iget-object v4, v4, Ltmsdkobf/l;->ak:Ljava/lang/String;

    iput-object v4, v3, Ltmsdk/common/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    .line 359
    iget-object v4, v0, Ltmsdkobf/d;->D:Ltmsdkobf/l;

    iget v4, v4, Ltmsdkobf/l;->an:I

    iput v4, v3, Ltmsdk/common/module/qscanner/QScanResultEntity;->malwareid:I

    .line 360
    iget-object v4, v0, Ltmsdkobf/d;->D:Ltmsdkobf/l;

    iget-object v4, v4, Ltmsdkobf/l;->ao:Ljava/lang/String;

    iput-object v4, v3, Ltmsdk/common/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    .line 361
    iget-object v4, v0, Ltmsdkobf/d;->D:Ltmsdkobf/l;

    iget v4, v4, Ltmsdkobf/l;->safeLevel:I

    iput v4, v3, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    .line 363
    iget-object v4, p0, Ltmsdk/fg/module/qscanner/d;->EX:Ltmsdk/fg/module/qscanner/c;

    iget-object v5, v3, Ltmsdk/common/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget v6, v3, Ltmsdk/common/module/qscanner/QScanResultEntity;->size:I

    invoke-virtual {v4, v5, v6, v3}, Ltmsdk/fg/module/qscanner/c;->a(Ljava/lang/String;ILtmsdk/common/module/qscanner/QScanResultEntity;)V

    .line 366
    if-eqz v3, :cond_1

    iget v4, v3, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 367
    const v4, 0x1d4c6

    invoke-static {v4}, Ltmsdkobf/im;->aT(I)V

    goto :goto_0

    .line 373
    .end local v0           #cloudInfo:Ltmsdkobf/d;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    :cond_2
    return-void
.end method

.method private b(Ltmsdk/fg/module/qscanner/QScanListener;)Z
    .locals 3
    .parameter "scanListener"

    .prologue
    const/4 v0, 0x1

    .line 445
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/d;->Fe:Ljava/lang/Object;

    monitor-enter v1

    .line 446
    :try_start_0
    iget-boolean v2, p0, Ltmsdk/fg/module/qscanner/d;->Fc:Z

    if-ne v2, v0, :cond_1

    .line 447
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Ltmsdk/fg/module/qscanner/d;->Fd:Z

    if-nez v2, :cond_0

    .line 448
    invoke-virtual {p1}, Ltmsdk/fg/module/qscanner/QScanListener;->onScanCanceled()V

    .line 449
    const/4 v2, 0x1

    iput-boolean v2, p0, Ltmsdk/fg/module/qscanner/d;->Fd:Z

    .line 451
    :cond_0
    monitor-exit v1

    .line 453
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c(Ltmsdk/common/module/software/AppEntity;)Ltmsdk/common/module/software/AppEntity;
    .locals 2
    .parameter "app"

    .prologue
    .line 548
    invoke-virtual {p1}, Ltmsdk/common/module/software/AppEntity;->isApk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/d;->yP:Ltmsdk/common/module/software/SoftwareManager;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Ltmsdk/common/module/software/SoftwareManager;->getAppInfo(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object p1

    goto :goto_0
.end method

.method private cloudScan(Ljava/util/ArrayList;Ltmsdk/fg/module/qscanner/QScanListener;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter "scanListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;",
            "Ltmsdk/fg/module/qscanner/QScanListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, nativeResults:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    const v6, 0x1d4c7

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ltmsdkobf/im;->a(II)V

    .line 296
    invoke-direct {p0, p2}, Ltmsdk/fg/module/qscanner/d;->a(Ltmsdk/fg/module/qscanner/QScanListener;)V

    .line 297
    invoke-direct {p0, p2}, Ltmsdk/fg/module/qscanner/d;->b(Ltmsdk/fg/module/qscanner/QScanListener;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-object p1

    .line 302
    :cond_1
    invoke-static {}, Ltmsdkobf/is;->dt()Ltmsdkobf/is;

    move-result-object v6

    invoke-virtual {v6}, Ltmsdkobf/is;->dv()Z

    move-result v6

    if-nez v6, :cond_2

    .line 303
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "TMS licence expired! Please contact TMS(Tencent Mobile Secure) group."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 306
    :cond_2
    if-eqz p2, :cond_3

    .line 307
    invoke-virtual {p2}, Ltmsdk/fg/module/qscanner/QScanListener;->onCloudScan()V

    .line 311
    :cond_3
    invoke-direct {p0, p2}, Ltmsdk/fg/module/qscanner/d;->a(Ltmsdk/fg/module/qscanner/QScanListener;)V

    .line 312
    invoke-direct {p0, p2}, Ltmsdk/fg/module/qscanner/d;->b(Ltmsdk/fg/module/qscanner/QScanListener;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 316
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v2, featureList:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/br;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltmsdk/common/module/qscanner/QScanResultEntity;

    .line 318
    .local v4, result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    const/4 v6, 0x0

    invoke-static {v4, v6}, Ltmsdkobf/ix;->a(Ltmsdk/common/module/qscanner/QScanResultEntity;I)Ltmsdkobf/br;

    move-result-object v5

    .line 319
    .local v5, softFeature:Ltmsdkobf/br;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 322
    .end local v4           #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    .end local v5           #softFeature:Ltmsdkobf/br;
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v0, cloudInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/d;>;"
    const-class v6, Ltmsdkobf/lk;

    invoke-static {v6}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v6

    check-cast v6, Ltmsdkobf/lk;

    invoke-virtual {v6, v2, v0}, Ltmsdkobf/lk;->a(Ljava/util/List;Ljava/util/ArrayList;)I

    move-result v1

    .line 326
    .local v1, err:I
    invoke-direct {p0, p2}, Ltmsdk/fg/module/qscanner/d;->a(Ltmsdk/fg/module/qscanner/QScanListener;)V

    .line 327
    invoke-direct {p0, p2}, Ltmsdk/fg/module/qscanner/d;->b(Ltmsdk/fg/module/qscanner/QScanListener;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 331
    if-nez v1, :cond_5

    .line 333
    invoke-direct {p0, p1, v0}, Ltmsdk/fg/module/qscanner/d;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 335
    invoke-direct {p0, p1, v0}, Ltmsdk/fg/module/qscanner/d;->a(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 337
    invoke-direct {p0, v0}, Ltmsdk/fg/module/qscanner/d;->s(Ljava/util/List;)V

    goto :goto_0

    .line 338
    :cond_5
    if-eqz p2, :cond_0

    .line 339
    invoke-virtual {p2, v1}, Ltmsdk/fg/module/qscanner/QScanListener;->onCloudScanError(I)V

    goto :goto_0
.end method

.method public static getVirusBaseVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    .line 671
    const-string v7, "qv_base.amf"

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 672
    .local v5, virusBasePath:Ljava/lang/String;
    invoke-static {p0, v5}, Ltmsdk/common/utils/UpdateUtil;->getVirusClientInfo(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/ck;

    move-result-object v6

    .line 673
    .local v6, virusClientInfo:Ltmsdkobf/ck;
    const-wide/16 v2, 0x0

    .line 674
    .local v2, timestamp:J
    if-eqz v6, :cond_0

    .line 675
    invoke-virtual {v6}, Ltmsdkobf/ck;->j()I

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, 0x3e8

    mul-long v2, v7, v9

    .line 677
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 678
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd"

    invoke-direct {v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 679
    .local v1, simpleDateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 680
    .local v4, version:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v7

    const/16 v9, 0xc

    if-le v7, v9, :cond_1

    const-string v7, "B"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 681
    return-object v4

    .line 680
    :cond_1
    const-string v7, "A"

    goto :goto_0
.end method

.method private hC()Ljava/util/ArrayList;
    .locals 8
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
    .line 495
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v2, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    iget-object v5, p0, Ltmsdk/fg/module/qscanner/d;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Ltmsdkobf/id;->b(Landroid/content/pm/PackageManager;IZ)Ljava/util/List;

    move-result-object v3

    .line 505
    .local v3, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v3, :cond_0

    .line 506
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

    .line 507
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    new-instance v0, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v0}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    .line 508
    .local v0, app:Ltmsdk/common/module/software/AppEntity;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ltmsdk/common/module/software/AppEntity;->setPackageName(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 512
    .end local v0           #app:Ltmsdk/common/module/software/AppEntity;
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_0
    return-object v2
.end method

.method private hD()Ljava/util/ArrayList;
    .locals 6
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
    .line 519
    iget-object v5, p0, Ltmsdk/fg/module/qscanner/d;->Ff:[Ljava/lang/String;

    invoke-static {v5}, Ltmsdkobf/jv;->c([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 520
    .local v4, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v2, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 522
    .local v0, apkPath:Ljava/lang/String;
    new-instance v1, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v1}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    .line 523
    .local v1, app:Ltmsdk/common/module/software/AppEntity;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ltmsdk/common/module/software/AppEntity;->setApkFlag(Z)V

    .line 524
    invoke-virtual {v1, v0}, Ltmsdk/common/module/software/AppEntity;->setApkPath(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 527
    .end local v0           #apkPath:Ljava/lang/String;
    .end local v1           #app:Ltmsdk/common/module/software/AppEntity;
    :cond_0
    return-object v2
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
    .line 402
    .local p1, cloudInfoList:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/d;>;"
    const-string v1, "sa_cfg.dat"

    .line 403
    .local v1, SOFT_ACTION_CONFIG_DAT:Ljava/lang/String;
    const-string v0, "label_sa_cfg"

    .line 405
    .local v0, LABEL_SOFT_ACTION_CONFIG:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 406
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

    .line 407
    .local v2, cloudInfo:Ltmsdkobf/d;
    invoke-virtual {v2}, Ltmsdkobf/d;->b()I

    move-result v6

    if-eqz v6, :cond_0

    .line 409
    new-instance v3, Ltmsdkobf/bp;

    iget-object v6, v2, Ltmsdkobf/d;->B:Ltmsdkobf/af;

    iget v7, v2, Ltmsdkobf/d;->H:I

    invoke-direct {v3, v6, v7}, Ltmsdkobf/bp;-><init>(Ltmsdkobf/af;I)V

    .line 410
    .local v3, config:Ltmsdkobf/bp;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    .end local v2           #cloudInfo:Ltmsdkobf/d;
    .end local v3           #config:Ltmsdkobf/bp;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 415
    iget-object v6, p0, Ltmsdk/fg/module/qscanner/d;->mContext:Landroid/content/Context;

    const-string v7, "label_sa_cfg"

    const-string v8, "sa_cfg.dat"

    invoke-static {v6, v4, v7, v8}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/ArrayList;Ltmsdk/fg/module/qscanner/QScanListener;)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .parameter "scanListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;",
            "Ltmsdk/fg/module/qscanner/QScanListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, entitys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 182
    :try_start_0
    invoke-virtual {p2}, Ltmsdk/fg/module/qscanner/QScanListener;->onScanStarted()V

    .line 186
    :cond_0
    invoke-virtual {p0}, Ltmsdk/fg/module/qscanner/d;->initScanner()V

    .line 187
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/d;->EZ:[B

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Ltmsdk/fg/module/qscanner/d;->Fa:Z

    .line 189
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :try_start_2
    invoke-direct {p0, p1, p2}, Ltmsdk/fg/module/qscanner/d;->cloudScan(Ljava/util/ArrayList;Ltmsdk/fg/module/qscanner/QScanListener;)Ljava/util/ArrayList;

    move-result-object v0

    .line 194
    .local v0, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    invoke-direct {p0, p2, v0}, Ltmsdk/fg/module/qscanner/d;->a(Ltmsdk/fg/module/qscanner/QScanListener;Ljava/util/ArrayList;)V

    .line 197
    invoke-virtual {p0}, Ltmsdk/fg/module/qscanner/d;->freeScanner()V

    .line 198
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/d;->EZ:[B

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Ltmsdk/fg/module/qscanner/d;->Fa:Z

    .line 200
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 202
    monitor-exit p0

    return-object v0

    .line 189
    .end local v0           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 181
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 200
    .restart local v0       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public cancelScan()V
    .locals 2

    .prologue
    .line 640
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/d;->Fe:Ljava/lang/Object;

    monitor-enter v1

    .line 641
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ltmsdk/fg/module/qscanner/d;->Fc:Z

    .line 642
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/d;->Fb:Ljava/lang/Object;

    monitor-enter v1

    .line 645
    :try_start_1
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/d;->Fb:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 646
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 647
    return-void

    .line 642
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 646
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public continueScan()V
    .locals 2

    .prologue
    .line 631
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/d;->Fb:Ljava/lang/Object;

    monitor-enter v1

    .line 632
    :try_start_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/d;->Fb:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 633
    monitor-exit v1

    .line 634
    return-void

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0}, Ltmsdk/fg/module/qscanner/d;->freeScanner()V

    .line 122
    return-void
.end method

.method public freeScanner()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/d;->EZ:[B

    monitor-enter v1

    .line 103
    :try_start_0
    iget-boolean v0, p0, Ltmsdk/fg/module/qscanner/d;->Fa:Z

    if-eqz v0, :cond_1

    .line 104
    monitor-exit v1

    .line 114
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
    iput-object v2, p0, Ltmsdk/fg/module/qscanner/d;->EX:Ltmsdk/fg/module/qscanner/c;

    .line 110
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/d;->EW:Ltmsdk/fg/module/qscanner/AmScanner;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/d;->EW:Ltmsdk/fg/module/qscanner/AmScanner;

    invoke-virtual {v0}, Ltmsdk/fg/module/qscanner/AmScanner;->finalize()V

    .line 112
    iput-object v2, p0, Ltmsdk/fg/module/qscanner/d;->EW:Ltmsdk/fg/module/qscanner/AmScanner;

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

.method public getApkClass(Ljava/lang/String;)I
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 658
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/d;->EY:Ltmsdk/fg/module/qscanner/CertChecker;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/d;->EY:Ltmsdk/fg/module/qscanner/CertChecker;

    invoke-virtual {v0, p1}, Ltmsdk/fg/module/qscanner/CertChecker;->getApkClass(Ljava/lang/String;)I

    move-result v0

    .line 661
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x2

    return v0
.end method

.method public initScanner()V
    .locals 4

    .prologue
    .line 86
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/d;->EX:Ltmsdk/fg/module/qscanner/c;

    if-nez v1, :cond_0

    .line 87
    invoke-static {}, Ltmsdk/fg/module/qscanner/c;->hx()Ltmsdk/fg/module/qscanner/c;

    move-result-object v1

    iput-object v1, p0, Ltmsdk/fg/module/qscanner/d;->EX:Ltmsdk/fg/module/qscanner/c;

    .line 89
    :cond_0
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/d;->EW:Ltmsdk/fg/module/qscanner/AmScanner;

    if-nez v1, :cond_1

    .line 90
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/d;->mContext:Landroid/content/Context;

    const-string v2, "qv_base.amf"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, amfile:Ljava/lang/String;
    new-instance v1, Ltmsdk/fg/module/qscanner/AmScanner;

    iget-object v2, p0, Ltmsdk/fg/module/qscanner/d;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Ltmsdk/fg/module/qscanner/AmScanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Ltmsdk/fg/module/qscanner/d;->EW:Ltmsdk/fg/module/qscanner/AmScanner;

    .line 93
    .end local v0           #amfile:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/d;->EY:Ltmsdk/fg/module/qscanner/CertChecker;

    if-nez v1, :cond_2

    .line 94
    new-instance v1, Ltmsdk/fg/module/qscanner/CertChecker;

    iget-object v2, p0, Ltmsdk/fg/module/qscanner/d;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Ltmsdk/fg/module/qscanner/CertChecker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ltmsdk/fg/module/qscanner/d;->EY:Ltmsdk/fg/module/qscanner/CertChecker;

    .line 96
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 77
    iput-object p1, p0, Ltmsdk/fg/module/qscanner/d;->mContext:Landroid/content/Context;

    .line 78
    const-class v0, Ltmsdk/common/module/software/SoftwareManager;

    invoke-static {v0}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/software/SoftwareManager;

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/d;->yP:Ltmsdk/common/module/software/SoftwareManager;

    .line 79
    const-string v0, "qv_base.amf"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    return-void
.end method

.method public pauseScan()V
    .locals 2

    .prologue
    .line 621
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/d;->Fb:Ljava/lang/Object;

    monitor-enter v1

    .line 622
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ltmsdk/fg/module/qscanner/d;->mPaused:Z

    .line 623
    monitor-exit v1

    .line 624
    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scanApks(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter "scanListener"
    .parameter "doCloudScan"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ltmsdk/fg/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    .local p1, apkPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 603
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 613
    :goto_0
    return-object v4

    .line 606
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 607
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

    .line 608
    .local v0, apkPath:Ljava/lang/String;
    new-instance v1, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v1}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    .line 609
    .local v1, app:Ltmsdk/common/module/software/AppEntity;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ltmsdk/common/module/software/AppEntity;->setApkFlag(Z)V

    .line 610
    invoke-virtual {v1, v0}, Ltmsdk/common/module/software/AppEntity;->setApkPath(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 613
    .end local v0           #apkPath:Ljava/lang/String;
    .end local v1           #app:Ltmsdk/common/module/software/AppEntity;
    :cond_2
    invoke-direct {p0, v2, p2, p3}, Ltmsdk/fg/module/qscanner/d;->a(Ljava/util/ArrayList;Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0
.end method

.method public scanGlobal(Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 2
    .parameter "scanListener"
    .parameter "doCloudScan"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/fg/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    invoke-direct {p0}, Ltmsdk/fg/module/qscanner/d;->hC()Ljava/util/ArrayList;

    move-result-object v0

    .line 577
    .local v0, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    invoke-direct {p0}, Ltmsdk/fg/module/qscanner/d;->hD()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 578
    invoke-direct {p0, v0, p1, p2}, Ltmsdk/fg/module/qscanner/d;->a(Ljava/util/ArrayList;Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public scanInstalledPackages(Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 2
    .parameter "scanListener"
    .parameter "doCloudScan"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/fg/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    invoke-direct {p0}, Ltmsdk/fg/module/qscanner/d;->hC()Ljava/util/ArrayList;

    move-result-object v0

    .line 561
    .local v0, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    invoke-direct {p0, v0, p1, p2}, Ltmsdk/fg/module/qscanner/d;->a(Ljava/util/ArrayList;Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public scanPackages(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter "scanListener"
    .parameter "doCloudScan"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ltmsdk/fg/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 585
    .local p1, packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 586
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 595
    :goto_0
    return-object v4

    .line 589
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 590
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

    .line 591
    .local v3, name:Ljava/lang/String;
    new-instance v0, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v0}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    .line 592
    .local v0, appEntity:Ltmsdk/common/module/software/AppEntity;
    invoke-virtual {v0, v3}, Ltmsdk/common/module/software/AppEntity;->setPackageName(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 595
    .end local v0           #appEntity:Ltmsdk/common/module/software/AppEntity;
    .end local v3           #name:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v1, p2, p3}, Ltmsdk/fg/module/qscanner/d;->a(Ljava/util/ArrayList;Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0
.end method

.method public scanSdcardApks(Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 2
    .parameter "scanListener"
    .parameter "doCloudScan"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/fg/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    invoke-direct {p0}, Ltmsdk/fg/module/qscanner/d;->hD()Ljava/util/ArrayList;

    move-result-object v0

    .line 569
    .local v0, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    invoke-direct {p0, v0, p1, p2}, Ltmsdk/fg/module/qscanner/d;->a(Ljava/util/ArrayList;Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method
