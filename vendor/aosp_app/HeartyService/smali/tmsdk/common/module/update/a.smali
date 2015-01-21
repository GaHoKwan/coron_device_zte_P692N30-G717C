.class final Ltmsdk/common/module/update/a;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# instance fields
.field private BR:Ljava/lang/String;

.field private BS:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private BT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ltmsdk/common/module/update/IUpdateObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private BU:Ltmsdk/common/module/update/IExecutionRetLis;

.field private mContext:Landroid/content/Context;

.field private wk:Ltmsdkobf/lk;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdk/common/module/update/a;->BR:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ltmsdk/common/module/update/a;->BS:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/update/a;->BT:Ljava/util/HashMap;

    return-void
.end method

.method private a(ILtmsdk/common/module/update/ICheckListener;)V
    .locals 1
    .parameter "err"
    .parameter "checkListener"

    .prologue
    .line 265
    if-nez p2, :cond_0

    .line 272
    :goto_0
    return-void

    .line 268
    :cond_0
    if-eqz p1, :cond_1

    .line 269
    invoke-interface {p2, p1}, Ltmsdk/common/module/update/ICheckListener;->onCheckEvent(I)V

    .line 271
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ltmsdk/common/module/update/ICheckListener;->onCheckFinished(Ltmsdk/common/module/update/CheckResult;)V

    goto :goto_0
.end method

.method private a(JII)V
    .locals 1
    .parameter "updateFlag"
    .parameter "mode"
    .parameter "ret"

    .prologue
    .line 553
    iget-object v0, p0, Ltmsdk/common/module/update/a;->BU:Ltmsdk/common/module/update/IExecutionRetLis;

    if-nez v0, :cond_0

    .line 558
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/update/a;->BU:Ltmsdk/common/module/update/IExecutionRetLis;

    invoke-interface {v0, p1, p2, p3, p4}, Ltmsdk/common/module/update/IExecutionRetLis;->onExecutionCode(JII)V

    goto :goto_0
.end method

.method private a(Ltmsdk/common/module/update/UpdateInfo;)V
    .locals 5
    .parameter "updateInfo"

    .prologue
    .line 485
    const v3, 0x1d4dd

    invoke-static {v3}, Ltmsdkobf/im;->aT(I)V

    .line 487
    iget-object v3, p0, Ltmsdk/common/module/update/a;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltmsdk/bg/tcc/TelNumberLocator;->getDefault(Landroid/content/Context;)Ltmsdk/bg/tcc/TelNumberLocator;

    move-result-object v2

    .line 488
    .local v2, telNumberLocator:Ltmsdk/bg/tcc/TelNumberLocator;
    iget-object v0, p1, Ltmsdk/common/module/update/UpdateInfo;->data1:Ljava/lang/Object;

    check-cast v0, Ltmsdkobf/s;

    .line 489
    .local v0, confSrc:Ltmsdkobf/s;
    iget v3, v0, Ltmsdkobf/s;->aS:I

    if-eqz v3, :cond_0

    .line 490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ltmsdk/common/module/update/a;->BR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Ltmsdk/common/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, patchPath:Ljava/lang/String;
    invoke-virtual {v0}, Ltmsdkobf/s;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ltmsdk/bg/tcc/TelNumberLocator;->patchLocation(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .end local v1           #patchPath:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ltmsdk/bg/tcc/TelNumberLocator;->reload()V

    .line 494
    return-void
.end method

.method static synthetic a(Ltmsdk/common/module/update/a;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ltmsdk/common/module/update/a;->l(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ltmsdk/common/module/update/UpdateInfo;)V
    .locals 8
    .parameter "updateInfo"

    .prologue
    .line 519
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ltmsdk/common/module/update/a;->BR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Ltmsdk/common/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, filePath:Ljava/lang/String;
    const-string v5, "NumMarkerTag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMarkFile() filePath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 522
    iget-object v0, p1, Ltmsdk/common/module/update/UpdateInfo;->data1:Ljava/lang/Object;

    check-cast v0, Ltmsdkobf/s;

    .line 523
    .local v0, confSrc:Ltmsdkobf/s;
    if-nez v0, :cond_0

    .line 550
    :goto_0
    return-void

    .line 528
    :cond_0
    const-string v4, ""

    .line 529
    .local v4, wholeMd5:Ljava/lang/String;
    invoke-virtual {v0}, Ltmsdkobf/s;->m()I

    move-result v5

    if-nez v5, :cond_2

    .line 531
    invoke-virtual {v0}, Ltmsdkobf/s;->l()Ljava/lang/String;

    move-result-object v4

    .line 537
    :goto_1
    const-string v5, "NumMarkerTag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMarkFile() isincreupdate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ltmsdkobf/s;->m()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " checksum:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ltmsdkobf/s;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " iuchecksum:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ltmsdkobf/s;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 539
    const-string v5, "NumMarkerTag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMarkFile()  filePath:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " wholeMd5:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    const-class v5, Ltmsdk/common/module/numbermarker/NumMarkerManager;

    invoke-static {v5}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/numbermarker/NumMarkerManager;

    .line 541
    .local v2, numMarkManager:Ltmsdk/common/module/numbermarker/NumMarkerManager;
    invoke-virtual {v2, v1, v4}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->updateMarkFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 542
    .local v3, ret:I
    const-string v5, "NumMarkerTag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMarkFile()  filePath:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " wholeMd5:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 543
    if-nez v3, :cond_1

    .line 544
    invoke-virtual {v2}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->refreshTagMap()V

    .line 547
    :cond_1
    const-string v5, "NumMarkerTag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMarkFile()  ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 549
    iget-wide v5, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const/4 v7, -0x1

    invoke-direct {p0, v5, v6, v7, v3}, Ltmsdk/common/module/update/a;->a(JII)V

    goto/16 :goto_0

    .line 534
    .end local v2           #numMarkManager:Ltmsdk/common/module/numbermarker/NumMarkerManager;
    .end local v3           #ret:I
    :cond_2
    invoke-virtual {v0}, Ltmsdkobf/s;->n()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method private fX()I
    .locals 10

    .prologue
    const-wide/32 v8, 0x40000000

    .line 452
    const v6, 0x1d4de

    invoke-static {v6}, Ltmsdkobf/im;->aT(I)V

    .line 454
    const/4 v1, 0x0

    .line 455
    .local v1, err:I
    iget-object v6, p0, Ltmsdk/common/module/update/a;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8, v9}, Ltmsdk/common/module/update/a;->u(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ltmsdk/common/utils/UpdateUtil;->getVirusClientInfo(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/ck;

    move-result-object v0

    .line 457
    .local v0, clientVirusInfo:Ltmsdkobf/ck;
    if-eqz v0, :cond_0

    .line 459
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ltmsdkobf/ck;->an(I)V

    .line 460
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 461
    .local v2, serverInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/cn;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v3, virusInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/cm;>;"
    iget-object v6, p0, Ltmsdk/common/module/update/a;->wk:Ltmsdkobf/lk;

    invoke-virtual {v6, v0, v2, v3}, Ltmsdkobf/lk;->a(Ltmsdkobf/ck;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v1

    if-nez v1, :cond_0

    .line 464
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltmsdkobf/cn;

    .line 465
    .local v5, virusServerInfo:Ltmsdkobf/cn;
    if-eqz v5, :cond_0

    .line 466
    invoke-virtual {v5}, Ltmsdkobf/cn;->C()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 477
    .end local v2           #serverInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/cn;>;"
    .end local v3           #virusInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/cm;>;"
    .end local v5           #virusServerInfo:Ltmsdkobf/cn;
    :cond_0
    :goto_0
    return v1

    .line 468
    .restart local v2       #serverInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/cn;>;"
    .restart local v3       #virusInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/cm;>;"
    .restart local v5       #virusServerInfo:Ltmsdkobf/cn;
    :cond_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 470
    invoke-direct {p0, v8, v9}, Ltmsdk/common/module/update/a;->u(J)Ljava/lang/String;

    move-result-object v4

    .line 471
    .local v4, virusPath:Ljava/lang/String;
    iget-object v6, p0, Ltmsdk/common/module/update/a;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5, v3}, Ltmsdk/fg/module/qscanner/AmScanner;->updateBase(Landroid/content/Context;Ljava/lang/String;Ltmsdkobf/cn;Ljava/util/List;)I

    goto :goto_0
.end method

.method private l(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "filePath"
    .parameter "dataMd5"

    .prologue
    const/4 v2, 0x0

    .line 497
    const-class v3, Ltmsdk/common/module/numbermarker/NumMarkerManager;

    invoke-static {v3}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v1

    check-cast v1, Ltmsdk/common/module/numbermarker/NumMarkerManager;

    .line 498
    .local v1, numMarkManager:Ltmsdk/common/module/numbermarker/NumMarkerManager;
    invoke-virtual {v1, p1}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->getDataMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, dlDataMd5:Ljava/lang/String;
    if-eqz p2, :cond_0

    if-nez v0, :cond_1

    .line 509
    :cond_0
    :goto_0
    return v2

    .line 503
    :cond_1
    const-string v3, "NumMarkerTag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMd5MatchFile() rightMd5:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dlMd5:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 505
    const-wide/32 v3, 0x20000000

    invoke-direct {p0, v3, v4, v2, v2}, Ltmsdk/common/module/update/a;->a(JII)V

    goto :goto_0

    .line 509
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private u(J)Ljava/lang/String;
    .locals 5
    .parameter "flag"

    .prologue
    .line 630
    invoke-static {p1, p2}, Ltmsdk/common/module/update/UpdateConfig;->getFileNameByFlag(J)Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, fileName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ltmsdk/common/module/update/a;->BR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 632
    .local v2, filePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 633
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 634
    iget-object v3, p0, Ltmsdk/common/module/update/a;->mContext:Landroid/content/Context;

    iget-object v4, p0, Ltmsdk/common/module/update/a;->BR:Ljava/lang/String;

    invoke-static {v3, v1, v4}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 636
    :cond_0
    return-object v2
.end method


# virtual methods
.method public addObserver(JLtmsdk/common/module/update/IUpdateObserver;)V
    .locals 4
    .parameter "update_flag"
    .parameter "observer"

    .prologue
    .line 576
    iget-object v1, p0, Ltmsdk/common/module/update/a;->BT:Ljava/util/HashMap;

    monitor-enter v1

    .line 577
    if-eqz p3, :cond_0

    .line 578
    :try_start_0
    iget-object v0, p0, Ltmsdk/common/module/update/a;->BT:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_0
    monitor-exit v1

    .line 581
    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Ltmsdk/common/module/update/a;->BS:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 565
    return-void
.end method

.method public check(JLtmsdk/common/module/update/ICheckListener;)V
    .locals 22
    .parameter "checkFlag"
    .parameter "checkListener"

    .prologue
    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/module/update/a;->BS:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    if-eqz p3, :cond_0

    .line 88
    invoke-interface/range {p3 .. p3}, Ltmsdk/common/module/update/ICheckListener;->onCheckStarted()V

    .line 90
    :cond_0
    invoke-static/range {p1 .. p2}, Ltmsdk/common/module/update/UpdateConfig;->prepareCheckFlag(J)J

    move-result-wide p1

    .line 91
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v17, updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/update/UpdateInfo;>;"
    invoke-static {}, Ltmsdkobf/is;->dt()Ltmsdkobf/is;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ltmsdkobf/is;->dv()Z

    move-result v18

    if-nez v18, :cond_2

    .line 96
    new-instance v13, Ltmsdk/common/module/update/CheckResult;

    invoke-direct {v13}, Ltmsdk/common/module/update/CheckResult;-><init>()V

    .line 97
    .local v13, result:Ltmsdk/common/module/update/CheckResult;
    const-string v18, "\u63d0\u793a"

    move-object/from16 v0, v18

    iput-object v0, v13, Ltmsdk/common/module/update/CheckResult;->mTitle:Ljava/lang/String;

    .line 98
    const-string v18, "TMS\u6a21\u5757\u5df2\u7ecf\u8fc7\u671f\uff0c\u8bf7\u8054\u7cfb\u4f9b\u5e94\u5546"

    move-object/from16 v0, v18

    iput-object v0, v13, Ltmsdk/common/module/update/CheckResult;->mMessage:Ljava/lang/String;

    .line 99
    move-object/from16 v0, v17

    iput-object v0, v13, Ltmsdk/common/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    .line 100
    if-eqz p3, :cond_1

    .line 101
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ltmsdk/common/module/update/ICheckListener;->onCheckFinished(Ltmsdk/common/module/update/CheckResult;)V

    .line 180
    .end local v13           #result:Ltmsdk/common/module/update/CheckResult;
    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/module/update/a;->BS:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 109
    if-eqz p3, :cond_3

    .line 110
    invoke-interface/range {p3 .. p3}, Ltmsdk/common/module/update/ICheckListener;->onCheckCanceled()V

    .line 112
    :cond_3
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Ltmsdk/common/module/update/a;->a(ILtmsdk/common/module/update/ICheckListener;)V

    goto :goto_0

    .line 117
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v5, confInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/r;>;"
    sget-object v3, Ltmsdk/common/module/update/UpdateConfig;->UPDATE_FLAGS:[J

    .local v3, arr$:[J
    array-length v12, v3

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v12, :cond_b

    aget-wide v9, v3, v11

    .line 119
    .local v9, flag:J
    and-long v18, v9, p1

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_6

    .line 120
    const/4 v4, 0x0

    .line 121
    .local v4, confInfo:Ltmsdkobf/r;
    const-wide/16 v18, 0x4

    cmp-long v18, v9, v18

    if-nez v18, :cond_7

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/module/update/a;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Ltmsdk/common/module/update/a;->u(J)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Ltmsdk/common/utils/UpdateUtil;->getSmsCheckerConfInfo(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/r;

    move-result-object v4

    .line 135
    :goto_2
    if-nez v4, :cond_5

    .line 136
    new-instance v4, Ltmsdkobf/r;

    .end local v4           #confInfo:Ltmsdkobf/r;
    invoke-direct {v4}, Ltmsdkobf/r;-><init>()V

    .line 137
    .restart local v4       #confInfo:Ltmsdkobf/r;
    invoke-static {v9, v10}, Ltmsdk/common/module/update/UpdateConfig;->getFileNameByFlag(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Ltmsdkobf/r;->aO:Ljava/lang/String;

    .line 138
    const-string v18, ""

    move-object/from16 v0, v18

    iput-object v0, v4, Ltmsdkobf/r;->aP:Ljava/lang/String;

    .line 139
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Ltmsdkobf/r;->d:I

    .line 141
    :cond_5
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v4           #confInfo:Ltmsdkobf/r;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 123
    .restart local v4       #confInfo:Ltmsdkobf/r;
    :cond_7
    const-wide/32 v18, 0x40000000

    cmp-long v18, v9, v18

    if-nez v18, :cond_8

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/module/update/a;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Ltmsdk/common/module/update/a;->u(J)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Ltmsdk/common/utils/UpdateUtil;->getVirusConfInfo(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/r;

    move-result-object v4

    goto :goto_2

    .line 125
    :cond_8
    const-wide/16 v18, 0x2

    cmp-long v18, v9, v18

    if-nez v18, :cond_9

    .line 126
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Ltmsdk/common/module/update/a;->u(J)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ltmsdk/common/utils/UpdateUtil;->getLocationConfInfo(Ljava/lang/String;)Ltmsdkobf/r;

    move-result-object v4

    goto :goto_2

    .line 127
    :cond_9
    const-wide/32 v18, 0x20000000

    cmp-long v18, v9, v18

    if-nez v18, :cond_a

    .line 128
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Ltmsdk/common/module/update/a;->u(J)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ltmsdk/common/utils/UpdateUtil;->getMarkConfInfo(Ljava/lang/String;)Ltmsdkobf/r;

    move-result-object v4

    .line 129
    const-string v18, "NumMarkerTag"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "filename:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ltmsdkobf/r;->i()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " timestamp:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ltmsdkobf/r;->j()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " pfutimestamp:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ltmsdkobf/r;->k()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " version:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ltmsdkobf/r;->getVersion()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 132
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Ltmsdk/common/module/update/a;->u(J)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ltmsdk/common/utils/UpdateUtil;->getFileConfInfo(Ljava/lang/String;)Ltmsdkobf/r;

    move-result-object v4

    goto/16 :goto_2

    .line 145
    .end local v4           #confInfo:Ltmsdkobf/r;
    .end local v9           #flag:J
    :cond_b
    const/4 v8, 0x0

    .line 146
    .local v8, err:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v7, confSrcList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/s;>;"
    new-instance v15, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v15}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 148
    .local v15, tips:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/cb;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/module/update/a;->wk:Ltmsdkobf/lk;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7, v15}, Ltmsdkobf/lk;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v8

    if-nez v8, :cond_e

    .line 149
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_f

    .line 150
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_c
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltmsdkobf/s;

    .line 151
    .local v6, confSrc:Ltmsdkobf/s;
    if-eqz v6, :cond_c

    .line 152
    new-instance v16, Ltmsdk/common/module/update/UpdateInfo;

    invoke-direct/range {v16 .. v16}, Ltmsdk/common/module/update/UpdateInfo;-><init>()V

    .line 153
    .local v16, updateInfo:Ltmsdk/common/module/update/UpdateInfo;
    iget v0, v6, Ltmsdkobf/s;->aS:I

    move/from16 v18, v0

    if-nez v18, :cond_d

    .line 154
    invoke-virtual {v6}, Ltmsdkobf/s;->i()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Ltmsdk/common/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    .line 159
    :goto_4
    invoke-virtual {v6}, Ltmsdkobf/s;->i()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ltmsdk/common/module/update/UpdateConfig;->getFlagByFileName(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    .line 160
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Ltmsdk/common/module/update/UpdateInfo;->type:I

    .line 161
    invoke-virtual {v6}, Ltmsdkobf/s;->getUrl()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Ltmsdk/common/module/update/UpdateInfo;->url:Ljava/lang/String;

    .line 162
    move-object/from16 v0, v16

    iput-object v6, v0, Ltmsdk/common/module/update/UpdateInfo;->data1:Ljava/lang/Object;

    .line 163
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 156
    :cond_d
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ltmsdkobf/s;->i()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".patch"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Ltmsdk/common/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    goto :goto_4

    .line 168
    .end local v6           #confSrc:Ltmsdkobf/s;
    .end local v16           #updateInfo:Ltmsdk/common/module/update/UpdateInfo;
    .local v11, i$:I
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v8, v1}, Ltmsdk/common/module/update/a;->a(ILtmsdk/common/module/update/ICheckListener;)V

    goto/16 :goto_0

    .line 172
    .end local v11           #i$:I
    :cond_f
    new-instance v13, Ltmsdk/common/module/update/CheckResult;

    invoke-direct {v13}, Ltmsdk/common/module/update/CheckResult;-><init>()V

    .line 173
    .restart local v13       #result:Ltmsdk/common/module/update/CheckResult;
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ltmsdkobf/cb;

    .line 174
    .local v14, tipInfo:Ltmsdkobf/cb;
    if-eqz v14, :cond_10

    iget-object v0, v14, Ltmsdkobf/cb;->ik:Ljava/lang/String;

    move-object/from16 v18, v0

    :goto_5
    move-object/from16 v0, v18

    iput-object v0, v13, Ltmsdk/common/module/update/CheckResult;->mTitle:Ljava/lang/String;

    .line 175
    if-eqz v14, :cond_11

    iget-object v0, v14, Ltmsdkobf/cb;->ij:Ljava/lang/String;

    move-object/from16 v18, v0

    :goto_6
    move-object/from16 v0, v18

    iput-object v0, v13, Ltmsdk/common/module/update/CheckResult;->mMessage:Ljava/lang/String;

    .line 176
    move-object/from16 v0, v17

    iput-object v0, v13, Ltmsdk/common/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    .line 177
    if-eqz p3, :cond_1

    .line 178
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ltmsdk/common/module/update/ICheckListener;->onCheckFinished(Ltmsdk/common/module/update/CheckResult;)V

    goto/16 :goto_0

    .line 174
    :cond_10
    const-string v18, ""

    goto :goto_5

    .line 175
    :cond_11
    const-string v18, ""

    goto :goto_6
.end method

.method public check(Ljava/util/ArrayList;Ltmsdk/common/module/update/ICheckListener;)V
    .locals 12
    .parameter
    .parameter "checkListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/r;",
            ">;",
            "Ltmsdk/common/module/update/ICheckListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, confInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/r;>;"
    const/4 v11, 0x0

    .line 188
    iget-object v9, p0, Ltmsdk/common/module/update/a;->BS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 189
    if-eqz p2, :cond_0

    .line 190
    invoke-interface {p2}, Ltmsdk/common/module/update/ICheckListener;->onCheckStarted()V

    .line 193
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v8, updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/update/UpdateInfo;>;"
    invoke-static {}, Ltmsdkobf/is;->dt()Ltmsdkobf/is;

    move-result-object v9

    invoke-virtual {v9}, Ltmsdkobf/is;->dv()Z

    move-result v9

    if-nez v9, :cond_2

    .line 198
    new-instance v4, Ltmsdk/common/module/update/CheckResult;

    invoke-direct {v4}, Ltmsdk/common/module/update/CheckResult;-><init>()V

    .line 199
    .local v4, result:Ltmsdk/common/module/update/CheckResult;
    const-string v9, "\u63d0\u793a"

    iput-object v9, v4, Ltmsdk/common/module/update/CheckResult;->mTitle:Ljava/lang/String;

    .line 200
    const-string v9, "TMS\u6a21\u5757\u5df2\u7ecf\u8fc7\u671f\uff0c\u8bf7\u8054\u7cfb\u4f9b\u5e94\u5546"

    iput-object v9, v4, Ltmsdk/common/module/update/CheckResult;->mMessage:Ljava/lang/String;

    .line 201
    iput-object v8, v4, Ltmsdk/common/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    .line 202
    if-eqz p2, :cond_1

    .line 203
    invoke-interface {p2, v4}, Ltmsdk/common/module/update/ICheckListener;->onCheckFinished(Ltmsdk/common/module/update/CheckResult;)V

    .line 254
    .end local v4           #result:Ltmsdk/common/module/update/CheckResult;
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    iget-object v9, p0, Ltmsdk/common/module/update/a;->BS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 211
    if-eqz p2, :cond_3

    .line 212
    invoke-interface {p2}, Ltmsdk/common/module/update/ICheckListener;->onCheckCanceled()V

    .line 214
    :cond_3
    invoke-direct {p0, v11, p2}, Ltmsdk/common/module/update/a;->a(ILtmsdk/common/module/update/ICheckListener;)V

    goto :goto_0

    .line 219
    :cond_4
    const/4 v2, 0x0

    .line 220
    .local v2, err:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v1, confSrcList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/s;>;"
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 222
    .local v6, tips:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/cb;>;"
    iget-object v9, p0, Ltmsdk/common/module/update/a;->wk:Ltmsdkobf/lk;

    invoke-virtual {v9, p1, v1, v6}, Ltmsdkobf/lk;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    if-nez v2, :cond_7

    .line 223
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 224
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/s;

    .line 225
    .local v0, confSrc:Ltmsdkobf/s;
    if-eqz v0, :cond_5

    .line 226
    new-instance v7, Ltmsdk/common/module/update/UpdateInfo;

    invoke-direct {v7}, Ltmsdk/common/module/update/UpdateInfo;-><init>()V

    .line 227
    .local v7, updateInfo:Ltmsdk/common/module/update/UpdateInfo;
    iget v9, v0, Ltmsdkobf/s;->aS:I

    if-nez v9, :cond_6

    .line 228
    invoke-virtual {v0}, Ltmsdkobf/s;->i()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Ltmsdk/common/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    .line 233
    :goto_2
    invoke-virtual {v0}, Ltmsdkobf/s;->i()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ltmsdk/common/module/update/UpdateConfig;->getFlagByFileName(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v7, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    .line 234
    iput v11, v7, Ltmsdk/common/module/update/UpdateInfo;->type:I

    .line 235
    invoke-virtual {v0}, Ltmsdkobf/s;->getUrl()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Ltmsdk/common/module/update/UpdateInfo;->url:Ljava/lang/String;

    .line 236
    iput-object v0, v7, Ltmsdk/common/module/update/UpdateInfo;->data1:Ljava/lang/Object;

    .line 237
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltmsdkobf/s;->i()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".patch"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Ltmsdk/common/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    goto :goto_2

    .line 242
    .end local v0           #confSrc:Ltmsdkobf/s;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #updateInfo:Ltmsdk/common/module/update/UpdateInfo;
    :cond_7
    invoke-direct {p0, v2, p2}, Ltmsdk/common/module/update/a;->a(ILtmsdk/common/module/update/ICheckListener;)V

    goto/16 :goto_0

    .line 246
    :cond_8
    new-instance v4, Ltmsdk/common/module/update/CheckResult;

    invoke-direct {v4}, Ltmsdk/common/module/update/CheckResult;-><init>()V

    .line 247
    .restart local v4       #result:Ltmsdk/common/module/update/CheckResult;
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltmsdkobf/cb;

    .line 248
    .local v5, tipInfo:Ltmsdkobf/cb;
    if-eqz v5, :cond_9

    iget-object v9, v5, Ltmsdkobf/cb;->ik:Ljava/lang/String;

    :goto_3
    iput-object v9, v4, Ltmsdk/common/module/update/CheckResult;->mTitle:Ljava/lang/String;

    .line 249
    if-eqz v5, :cond_a

    iget-object v9, v5, Ltmsdkobf/cb;->ij:Ljava/lang/String;

    :goto_4
    iput-object v9, v4, Ltmsdk/common/module/update/CheckResult;->mMessage:Ljava/lang/String;

    .line 250
    iput-object v8, v4, Ltmsdk/common/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    .line 251
    if-eqz p2, :cond_1

    .line 252
    invoke-interface {p2, v4}, Ltmsdk/common/module/update/ICheckListener;->onCheckFinished(Ltmsdk/common/module/update/CheckResult;)V

    goto/16 :goto_0

    .line 248
    :cond_9
    const-string v9, ""

    goto :goto_3

    .line 249
    :cond_a
    const-string v9, ""

    goto :goto_4
.end method

.method public getFileSavePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Ltmsdk/common/module/update/a;->BR:Ljava/lang/String;

    return-object v0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public getTimeStamp(J)J
    .locals 5
    .parameter "flag"

    .prologue
    .line 648
    const-wide/32 v1, 0x40000000

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 649
    iget-object v1, p0, Ltmsdk/common/module/update/a;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Ltmsdk/common/module/update/a;->u(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/UpdateUtil;->getVirusConfInfo(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/r;

    move-result-object v0

    .line 650
    .local v0, confInfo:Ltmsdkobf/r;
    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {v0}, Ltmsdkobf/r;->j()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 655
    .end local v0           #confInfo:Ltmsdkobf/r;
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    iput-object p1, p0, Ltmsdk/common/module/update/a;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/update/a;->BR:Ljava/lang/String;

    .line 66
    const-class v0, Ltmsdkobf/lk;

    invoke-static {v0}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdkobf/lk;

    iput-object v0, p0, Ltmsdk/common/module/update/a;->wk:Ltmsdkobf/lk;

    .line 67
    return-void
.end method

.method public removeObserver(J)V
    .locals 3
    .parameter "update_flag"

    .prologue
    .line 590
    iget-object v1, p0, Ltmsdk/common/module/update/a;->BT:Ljava/util/HashMap;

    monitor-enter v1

    .line 591
    :try_start_0
    iget-object v0, p0, Ltmsdk/common/module/update/a;->BT:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    monitor-exit v1

    .line 593
    return-void

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setExcutionRetLis(Ltmsdk/common/module/update/IExecutionRetLis;)V
    .locals 0
    .parameter "etList"

    .prologue
    .line 444
    iput-object p1, p0, Ltmsdk/common/module/update/a;->BU:Ltmsdk/common/module/update/IExecutionRetLis;

    .line 445
    return-void
.end method

.method public update(Ljava/util/List;Ltmsdk/common/module/update/IUpdateListener;)Z
    .locals 15
    .parameter
    .parameter "updateListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/update/UpdateInfo;",
            ">;",
            "Ltmsdk/common/module/update/IUpdateListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, updateInfoList:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/update/UpdateInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v9, updateConfigEntityList:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/io;>;"
    iget-object v11, p0, Ltmsdk/common/module/update/a;->BS:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 287
    if-eqz p2, :cond_0

    .line 288
    invoke-interface/range {p2 .. p2}, Ltmsdk/common/module/update/IUpdateListener;->onUpdateStarted()V

    .line 292
    :cond_0
    invoke-static {}, Ltmsdkobf/is;->dt()Ltmsdkobf/is;

    move-result-object v11

    invoke-virtual {v11}, Ltmsdkobf/is;->dv()Z

    move-result v11

    if-nez v11, :cond_2

    .line 293
    if-eqz p2, :cond_1

    .line 294
    invoke-interface/range {p2 .. p2}, Ltmsdk/common/module/update/IUpdateListener;->onUpdateFinished()V

    .line 296
    :cond_1
    const/4 v7, 0x0

    .line 440
    :goto_0
    return v7

    .line 300
    :cond_2
    iget-object v11, p0, Ltmsdk/common/module/update/a;->BS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 301
    if-eqz p2, :cond_3

    .line 302
    invoke-interface/range {p2 .. p2}, Ltmsdk/common/module/update/IUpdateListener;->onUpdateCanceled()V

    .line 303
    invoke-interface/range {p2 .. p2}, Ltmsdk/common/module/update/IUpdateListener;->onUpdateFinished()V

    .line 305
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 308
    :cond_4
    const/4 v7, 0x1

    .line 309
    .local v7, ret:Z
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x0

    invoke-direct {v6, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 310
    .local v6, isStop:Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_a

    .line 311
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ltmsdk/common/module/update/UpdateInfo;

    .line 312
    .local v10, updateInfo:Ltmsdk/common/module/update/UpdateInfo;
    if-nez v10, :cond_6

    .line 310
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 315
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    .line 316
    if-eqz p2, :cond_7

    .line 317
    const/16 v11, 0x32

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11}, Ltmsdk/common/module/update/IUpdateListener;->onProgressChanged(Ltmsdk/common/module/update/UpdateInfo;I)V

    .line 324
    :cond_7
    :goto_2
    iget-wide v11, v10, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/32 v13, 0x40000000

    cmp-long v11, v11, v13

    if-nez v11, :cond_d

    .line 326
    invoke-direct {p0}, Ltmsdk/common/module/update/a;->fX()I

    move-result v3

    .line 327
    .local v3, errCode:I
    if-eqz v3, :cond_8

    .line 328
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 329
    const/4 v7, 0x0

    .line 423
    .end local v3           #errCode:I
    :cond_8
    :goto_3
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-nez v11, :cond_9

    .line 424
    invoke-virtual {p0, v10}, Ltmsdk/common/module/update/a;->updateObservers(Ltmsdk/common/module/update/UpdateInfo;)V

    .line 427
    :cond_9
    iget-object v11, p0, Ltmsdk/common/module/update/a;->BS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 428
    if-eqz p2, :cond_a

    .line 429
    invoke-interface/range {p2 .. p2}, Ltmsdk/common/module/update/IUpdateListener;->onUpdateCanceled()V

    .line 435
    .end local v10           #updateInfo:Ltmsdk/common/module/update/UpdateInfo;
    :cond_a
    if-eqz p2, :cond_b

    .line 436
    invoke-interface/range {p2 .. p2}, Ltmsdk/common/module/update/IUpdateListener;->onUpdateFinished()V

    .line 439
    :cond_b
    invoke-static {}, Ltmsdkobf/in;->dk()Ltmsdkobf/in;

    move-result-object v11

    invoke-virtual {v11, v9}, Ltmsdkobf/in;->f(Ljava/util/List;)V

    goto :goto_0

    .line 320
    .restart local v10       #updateInfo:Ltmsdk/common/module/update/UpdateInfo;
    :cond_c
    if-eqz p2, :cond_7

    .line 321
    mul-int/lit8 v11, v5, 0x64

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    div-int/2addr v11, v12

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11}, Ltmsdk/common/module/update/IUpdateListener;->onProgressChanged(Ltmsdk/common/module/update/UpdateInfo;I)V

    goto :goto_2

    .line 333
    :cond_d
    if-eqz v10, :cond_8

    iget-object v11, v10, Ltmsdk/common/module/update/UpdateInfo;->url:Ljava/lang/String;

    if-eqz v11, :cond_8

    .line 335
    new-instance v8, Ltmsdkobf/io;

    invoke-direct {v8}, Ltmsdkobf/io;-><init>()V

    .line 336
    .local v8, updateConfigEntity:Ltmsdkobf/io;
    iget-object v11, v10, Ltmsdk/common/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    iput-object v11, v8, Ltmsdkobf/io;->fileName:Ljava/lang/String;

    .line 337
    iget-object v11, v10, Ltmsdk/common/module/update/UpdateInfo;->url:Ljava/lang/String;

    iput-object v11, v8, Ltmsdkobf/io;->url:Ljava/lang/String;

    .line 338
    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getNetworkType()Ltmsdkobf/t;

    move-result-object v11

    invoke-virtual {v11}, Ltmsdkobf/t;->value()I

    move-result v11

    iput v11, v8, Ltmsdkobf/io;->k:I

    .line 339
    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getNetworkName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Ltmsdkobf/io;->l:Ljava/lang/String;

    .line 340
    iget-object v11, v10, Ltmsdk/common/module/update/UpdateInfo;->data1:Ljava/lang/Object;

    if-eqz v11, :cond_e

    .line 341
    iget-object v1, v10, Ltmsdk/common/module/update/UpdateInfo;->data1:Ljava/lang/Object;

    check-cast v1, Ltmsdkobf/s;

    .line 342
    .local v1, confSrc:Ltmsdkobf/s;
    iget-object v11, v1, Ltmsdkobf/s;->aP:Ljava/lang/String;

    iput-object v11, v8, Ltmsdkobf/io;->c:Ljava/lang/String;

    .line 343
    iget v11, v1, Ltmsdkobf/s;->d:I

    iput v11, v8, Ltmsdkobf/io;->d:I

    .line 345
    iget v11, v1, Ltmsdkobf/s;->aS:I

    if-eqz v11, :cond_15

    .line 346
    const/4 v11, 0x2

    iput-byte v11, v8, Ltmsdkobf/io;->j:B

    .line 352
    .end local v1           #confSrc:Ltmsdkobf/s;
    :cond_e
    :goto_4
    new-instance v4, Ltmsdkobf/jy;

    iget-object v11, p0, Ltmsdk/common/module/update/a;->mContext:Landroid/content/Context;

    invoke-direct {v4, v11}, Ltmsdkobf/jy;-><init>(Landroid/content/Context;)V

    .line 353
    .local v4, httpGetFile:Ltmsdkobf/jy;
    invoke-virtual {v4, v8}, Ltmsdkobf/jy;->a(Ltmsdkobf/io;)V

    .line 354
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Ltmsdk/common/module/update/a;->BR:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ltmsdkobf/jy;->cd(Ljava/lang/String;)V

    .line 355
    iget-object v11, v10, Ltmsdk/common/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ltmsdkobf/jy;->ce(Ljava/lang/String;)V

    .line 356
    new-instance v11, Ltmsdk/common/module/update/a$1;

    move-object/from16 v0, p2

    invoke-direct {v11, p0, v0, v10, v6}, Ltmsdk/common/module/update/a$1;-><init>(Ltmsdk/common/module/update/a;Ltmsdk/common/module/update/IUpdateListener;Ltmsdk/common/module/update/UpdateInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v4, v11}, Ltmsdkobf/jy;->a(Ltmsdkobf/jw$a;)V

    .line 373
    iget-wide v11, v10, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/16 v13, 0x4

    cmp-long v11, v11, v13

    if-nez v11, :cond_f

    .line 374
    const v11, 0x1d4dc

    invoke-static {v11}, Ltmsdkobf/im;->aT(I)V

    .line 377
    :cond_f
    const/4 v2, 0x0

    .line 378
    .local v2, dataMd5Ch:Ltmsdkobf/jy$a;
    iget-wide v11, v10, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/32 v13, 0x20000000

    cmp-long v11, v11, v13

    if-nez v11, :cond_10

    .line 379
    new-instance v2, Ltmsdk/common/module/update/a$2;

    .end local v2           #dataMd5Ch:Ltmsdkobf/jy$a;
    invoke-direct {v2, p0, v10}, Ltmsdk/common/module/update/a$2;-><init>(Ltmsdk/common/module/update/a;Ltmsdk/common/module/update/UpdateInfo;)V

    .line 396
    .restart local v2       #dataMd5Ch:Ltmsdkobf/jy$a;
    :cond_10
    const/4 v3, -0x2

    .line 397
    .restart local v3       #errCode:I
    :cond_11
    iget-object v11, v10, Ltmsdk/common/module/update/UpdateInfo;->url:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12, v2}, Ltmsdkobf/jy;->a(Ljava/lang/String;ZLtmsdkobf/jy$a;)I

    move-result v3

    const/4 v11, -0x7

    if-eq v3, v11, :cond_11

    .line 402
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-nez v11, :cond_12

    iget-wide v11, v10, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/16 v13, 0x2

    cmp-long v11, v11, v13

    if-nez v11, :cond_12

    if-nez v3, :cond_12

    .line 404
    invoke-direct {p0, v10}, Ltmsdk/common/module/update/a;->a(Ltmsdk/common/module/update/UpdateInfo;)V

    .line 408
    :cond_12
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-nez v11, :cond_13

    iget-wide v11, v10, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide/32 v13, 0x20000000

    cmp-long v11, v11, v13

    if-nez v11, :cond_13

    if-nez v3, :cond_13

    .line 410
    invoke-direct {p0, v10}, Ltmsdk/common/module/update/a;->b(Ltmsdk/common/module/update/UpdateInfo;)V

    .line 413
    :cond_13
    if-eqz v3, :cond_14

    .line 414
    const/4 v7, 0x0

    .line 417
    :cond_14
    iput v3, v8, Ltmsdkobf/io;->errorCode:I

    .line 418
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 348
    .end local v2           #dataMd5Ch:Ltmsdkobf/jy$a;
    .end local v3           #errCode:I
    .end local v4           #httpGetFile:Ltmsdkobf/jy;
    .restart local v1       #confSrc:Ltmsdkobf/s;
    :cond_15
    const/4 v11, 0x1

    iput-byte v11, v8, Ltmsdkobf/io;->j:B

    goto/16 :goto_4
.end method

.method public updateObservers(Ltmsdk/common/module/update/UpdateInfo;)V
    .locals 9
    .parameter "updateInfo"

    .prologue
    .line 602
    iget-object v4, p0, Ltmsdk/common/module/update/a;->BT:Ljava/util/HashMap;

    monitor-enter v4

    .line 603
    :try_start_0
    iget-object v3, p0, Ltmsdk/common/module/update/a;->BT:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 604
    .local v0, entity:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/ref/SoftReference<Ltmsdk/common/module/update/IUpdateObserver;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v7, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    .line 606
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/update/IUpdateObserver;

    .line 607
    .local v2, observer:Ltmsdk/common/module/update/IUpdateObserver;
    if-eqz v2, :cond_0

    .line 608
    invoke-interface {v2, p1}, Ltmsdk/common/module/update/IUpdateObserver;->onChanged(Ltmsdk/common/module/update/UpdateInfo;)V

    goto :goto_0

    .line 612
    .end local v0           #entity:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/ref/SoftReference<Ltmsdk/common/module/update/IUpdateObserver;>;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #observer:Ltmsdk/common/module/update/IUpdateObserver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    return-void
.end method
