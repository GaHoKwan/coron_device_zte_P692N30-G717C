.class public final Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;
.super Lcom/zte/heartyservice/net/TrafficCorrectionAPI;
.source "TrafficCorrection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$trafficCorrectionTask;,
        Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SwitchConfigTask;,
        Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$CorrectingTask;,
        Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;,
        Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SetConfigTask;
    }
.end annotation


# static fields
.field public static final SET_CONFIG_FAILED:Ljava/lang/String; = "SET_CONFIG_FAILED"

.field public static final SET_CONFIG_SUCCESS:Ljava/lang/String; = "SET_CONFIG_SUCCESS"

.field private static final TAG:Ljava/lang/String; = "TrafficCorrection"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCarriersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/net/CodeNameItem;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

.field private mProvincesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/net/CodeNameItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTcMgr:Ltmsdk/bg/module/network/TrafficCorrectionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mProvincesList:Ljava/util/List;

    .line 35
    iput-object v0, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mCarriersList:Ljava/util/List;

    .line 41
    const-class v0, Ltmsdk/bg/module/network/TrafficCorrectionManager;

    invoke-static {v0}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/network/TrafficCorrectionManager;

    iput-object v0, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mTcMgr:Ltmsdk/bg/module/network/TrafficCorrectionManager;

    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mTcMgr:Ltmsdk/bg/module/network/TrafficCorrectionManager;

    invoke-virtual {v0}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->getConfig()Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    .line 43
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mAppContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getCodeNameItem(Ljava/util/List;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;
    .locals 4
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/net/CodeNameItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/zte/heartyservice/net/CodeNameItem;"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/net/CodeNameItem;>;"
    const/4 v2, 0x0

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 58
    :goto_0
    return-object v1

    .line 50
    :cond_0
    if-nez p0, :cond_1

    move-object v1, v2

    .line 51
    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/net/CodeNameItem;

    .line 54
    .local v1, item:Lcom/zte/heartyservice/net/CodeNameItem;
    iget-object v3, v1, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v1           #item:Lcom/zte/heartyservice/net/CodeNameItem;
    :cond_3
    move-object v1, v2

    .line 58
    goto :goto_0
.end method

.method public static trafficCorrection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .parameter "phonenum"
    .parameter "msg"

    .prologue
    .line 298
    invoke-static {}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->IsInTrafficCorrecting()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 299
    const-class v13, Ltmsdk/bg/module/network/TrafficCorrectionManager;

    invoke-static {v13}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v8

    check-cast v8, Ltmsdk/bg/module/network/TrafficCorrectionManager;

    .line 301
    .local v8, tcMgr:Ltmsdk/bg/module/network/TrafficCorrectionManager;
    new-instance v7, Ltmsdk/bg/module/network/TrafficCorrectionResult;

    invoke-direct {v7}, Ltmsdk/bg/module/network/TrafficCorrectionResult;-><init>()V

    .line 303
    .local v7, result:Ltmsdk/bg/module/network/TrafficCorrectionResult;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v8, v7, v0, v1}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->getCorrectionResult(Ltmsdk/bg/module/network/TrafficCorrectionResult;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 304
    .local v4, err:I
    if-nez v4, :cond_1

    .line 305
    const-string v13, "TrafficCorrection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v7, Ltmsdk/bg/module/network/TrafficCorrectionResult;->mLeftTrafficInKb:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Kb, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Ltmsdk/bg/module/network/TrafficCorrectionResult;->mUsedTrafficInKb:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Kb"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 309
    .local v2, appContext:Landroid/content/Context;
    const-wide/high16 v9, -0x4010

    .line 310
    .local v9, used:D
    iget v13, v7, Ltmsdk/bg/module/network/TrafficCorrectionResult;->mUsedTrafficInKb:I

    if-ltz v13, :cond_2

    .line 311
    iget v13, v7, Ltmsdk/bg/module/network/TrafficCorrectionResult;->mUsedTrafficInKb:I

    int-to-double v13, v13

    const-wide/high16 v15, 0x4090

    div-double v9, v13, v15

    .line 333
    :cond_0
    :goto_0
    move-wide v11, v9

    .line 334
    .local v11, usedTraffic:D
    const-wide/16 v13, 0x0

    cmpl-double v13, v11, v13

    if-ltz v13, :cond_1

    .line 335
    new-instance v13, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v14, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$2;

    invoke-direct {v14, v2, v11, v12}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$2;-><init>(Landroid/content/Context;D)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    .end local v2           #appContext:Landroid/content/Context;
    .end local v4           #err:I
    .end local v7           #result:Ltmsdk/bg/module/network/TrafficCorrectionResult;
    .end local v8           #tcMgr:Ltmsdk/bg/module/network/TrafficCorrectionManager;
    .end local v9           #used:D
    .end local v11           #usedTraffic:D
    :cond_1
    :goto_1
    return-void

    .line 312
    .restart local v2       #appContext:Landroid/content/Context;
    .restart local v4       #err:I
    .restart local v7       #result:Ltmsdk/bg/module/network/TrafficCorrectionResult;
    .restart local v8       #tcMgr:Ltmsdk/bg/module/network/TrafficCorrectionManager;
    .restart local v9       #used:D
    :cond_2
    iget v13, v7, Ltmsdk/bg/module/network/TrafficCorrectionResult;->mLeftTrafficInKb:I

    if-ltz v13, :cond_0

    .line 313
    invoke-static {v2}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthThreshold()J

    move-result-wide v5

    .line 315
    .local v5, mMonthThreshold:J
    long-to-double v13, v5

    iget v15, v7, Ltmsdk/bg/module/network/TrafficCorrectionResult;->mLeftTrafficInKb:I

    int-to-double v15, v15

    const-wide/high16 v17, 0x4090

    div-double v15, v15, v17

    sub-double v9, v13, v15

    .line 317
    const-wide/16 v13, 0x0

    cmpg-double v13, v9, v13

    if-gez v13, :cond_0

    .line 318
    new-instance v13, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v14, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$1;

    invoke-direct {v14, v2}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 329
    invoke-static {}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->closeReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    .end local v2           #appContext:Landroid/content/Context;
    .end local v4           #err:I
    .end local v5           #mMonthThreshold:J
    .end local v9           #used:D
    :catch_0
    move-exception v3

    .line 356
    .local v3, e:Ljava/lang/Exception;
    const-string v13, "TrafficCorrection"

    const-string v14, ""

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static trafficCorrection(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 19
    .parameter "phonenum"
    .parameter "msg"
    .parameter "subscription"

    .prologue
    .line 554
    invoke-static {}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->IsInTrafficCorrecting()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 555
    const-class v13, Ltmsdk/bg/module/network/TrafficCorrectionManager;

    invoke-static {v13}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v8

    check-cast v8, Ltmsdk/bg/module/network/TrafficCorrectionManager;

    .line 557
    .local v8, tcMgr:Ltmsdk/bg/module/network/TrafficCorrectionManager;
    new-instance v7, Ltmsdk/bg/module/network/TrafficCorrectionResult;

    invoke-direct {v7}, Ltmsdk/bg/module/network/TrafficCorrectionResult;-><init>()V

    .line 559
    .local v7, result:Ltmsdk/bg/module/network/TrafficCorrectionResult;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v8, v7, v0, v1}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->getCorrectionResult(Ltmsdk/bg/module/network/TrafficCorrectionResult;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 560
    .local v4, err:I
    if-nez v4, :cond_1

    .line 561
    const-string v13, "TrafficCorrection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v7, Ltmsdk/bg/module/network/TrafficCorrectionResult;->mLeftTrafficInKb:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Kb, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Ltmsdk/bg/module/network/TrafficCorrectionResult;->mUsedTrafficInKb:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Kb"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 565
    .local v2, appContext:Landroid/content/Context;
    const-wide/high16 v9, -0x4010

    .line 566
    .local v9, used:D
    iget v13, v7, Ltmsdk/bg/module/network/TrafficCorrectionResult;->mUsedTrafficInKb:I

    if-ltz v13, :cond_2

    .line 567
    iget v13, v7, Ltmsdk/bg/module/network/TrafficCorrectionResult;->mUsedTrafficInKb:I

    int-to-double v13, v13

    const-wide/high16 v15, 0x4090

    div-double v9, v13, v15

    .line 589
    :cond_0
    :goto_0
    move-wide v11, v9

    .line 590
    .local v11, usedTraffic:D
    const-wide/16 v13, 0x0

    cmpl-double v13, v11, v13

    if-ltz v13, :cond_1

    .line 591
    new-instance v13, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v14, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$4;

    move/from16 v0, p2

    invoke-direct {v14, v2, v0, v11, v12}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$4;-><init>(Landroid/content/Context;ID)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 615
    .end local v2           #appContext:Landroid/content/Context;
    .end local v4           #err:I
    .end local v7           #result:Ltmsdk/bg/module/network/TrafficCorrectionResult;
    .end local v8           #tcMgr:Ltmsdk/bg/module/network/TrafficCorrectionManager;
    .end local v9           #used:D
    .end local v11           #usedTraffic:D
    :cond_1
    :goto_1
    return-void

    .line 568
    .restart local v2       #appContext:Landroid/content/Context;
    .restart local v4       #err:I
    .restart local v7       #result:Ltmsdk/bg/module/network/TrafficCorrectionResult;
    .restart local v8       #tcMgr:Ltmsdk/bg/module/network/TrafficCorrectionManager;
    .restart local v9       #used:D
    :cond_2
    iget v13, v7, Ltmsdk/bg/module/network/TrafficCorrectionResult;->mLeftTrafficInKb:I

    if-ltz v13, :cond_0

    .line 569
    invoke-static {v2}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthThreshold(I)J

    move-result-wide v5

    .line 571
    .local v5, mMonthThreshold:J
    long-to-double v13, v5

    iget v15, v7, Ltmsdk/bg/module/network/TrafficCorrectionResult;->mLeftTrafficInKb:I

    int-to-double v15, v15

    const-wide/high16 v17, 0x4090

    div-double v15, v15, v17

    sub-double v9, v13, v15

    .line 573
    const-wide/16 v13, 0x0

    cmpg-double v13, v9, v13

    if-gez v13, :cond_0

    .line 574
    new-instance v13, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v14, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$3;

    invoke-direct {v14, v2}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 585
    invoke-static {}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->closeReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 611
    .end local v2           #appContext:Landroid/content/Context;
    .end local v4           #err:I
    .end local v5           #mMonthThreshold:J
    .end local v9           #used:D
    :catch_0
    move-exception v3

    .line 612
    .local v3, e:Ljava/lang/Exception;
    const-string v13, "TrafficCorrection"

    const-string v14, ""

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;
    .locals 2
    .parameter "type"
    .parameter "Code"
    .parameter "arg"

    .prologue
    .line 83
    invoke-virtual {p0, p1, p3}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->getCodeNameList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->getCodeNameItem(Ljava/util/List;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v0

    .line 84
    .local v0, item:Lcom/zte/heartyservice/net/CodeNameItem;
    return-object v0
.end method

.method public cleanConfigSim()V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v0

    const-string v1, "SIM_INFO_SERIAL_NUM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setSimInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public getCodeNameList(ILjava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "type"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/net/CodeNameItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v3, 0x0

    .line 122
    .local v3, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/net/CodeNameItem;>;"
    const/4 v2, 0x0

    .line 123
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/bg/module/network/CodeName;>;"
    packed-switch p1, :pswitch_data_0

    .line 146
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/net/CodeNameItem;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .restart local v3       #retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/net/CodeNameItem;>;"
    if-eqz v2, :cond_3

    .line 148
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/bg/module/network/CodeName;

    .line 149
    .local v1, item:Ltmsdk/bg/module/network/CodeName;
    new-instance v4, Lcom/zte/heartyservice/net/CodeNameItem;

    iget-object v5, v1, Ltmsdk/bg/module/network/CodeName;->mCode:Ljava/lang/String;

    iget-object v6, v1, Ltmsdk/bg/module/network/CodeName;->mName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/zte/heartyservice/net/CodeNameItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Ltmsdk/bg/module/network/CodeName;
    :pswitch_0
    iget-object v4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mProvincesList:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 126
    iget-object v4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mProvincesList:Ljava/util/List;

    .line 162
    :goto_2
    return-object v4

    .line 128
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mTcMgr:Ltmsdk/bg/module/network/TrafficCorrectionManager;

    invoke-virtual {v4}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->getAllProvinces()Ljava/util/ArrayList;

    move-result-object v2

    .line 129
    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mTcMgr:Ltmsdk/bg/module/network/TrafficCorrectionManager;

    invoke-virtual {v4, p2}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->getCities(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 132
    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mCarriersList:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 135
    iget-object v4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mCarriersList:Ljava/util/List;

    goto :goto_2

    .line 137
    :cond_1
    iget-object v4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mTcMgr:Ltmsdk/bg/module/network/TrafficCorrectionManager;

    invoke-virtual {v4}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->getCarries()Ljava/util/ArrayList;

    move-result-object v2

    .line 138
    goto :goto_0

    .line 140
    :pswitch_3
    iget-object v4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mTcMgr:Ltmsdk/bg/module/network/TrafficCorrectionManager;

    invoke-virtual {v4, p2}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->getBrands(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 141
    goto :goto_0

    .line 152
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    packed-switch p1, :pswitch_data_1

    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    :pswitch_4
    move-object v4, v3

    .line 162
    goto :goto_2

    .line 154
    .restart local v0       #i$:Ljava/util/Iterator;
    :pswitch_5
    iput-object v3, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mProvincesList:Ljava/util/List;

    goto :goto_3

    .line 157
    :pswitch_6
    iput-object v3, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mCarriersList:Ljava/util/List;

    goto :goto_3

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 152
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public getCurCodeNameItem(I)Lcom/zte/heartyservice/net/CodeNameItem;
    .locals 3
    .parameter "type"

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, item:Lcom/zte/heartyservice/net/CodeNameItem;
    packed-switch p1, :pswitch_data_0

    .line 78
    :goto_0
    return-object v0

    .line 66
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v1, v1, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v0

    .line 67
    goto :goto_0

    .line 69
    :pswitch_1
    iget-object v1, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v1, v1, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v2, v2, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v0

    .line 70
    goto :goto_0

    .line 72
    :pswitch_2
    iget-object v1, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v1, v1, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v0

    .line 73
    goto :goto_0

    .line 75
    :pswitch_3
    iget-object v1, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v1, v1, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v2, v2, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v0

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCurCodeNameItem(II)Lcom/zte/heartyservice/net/CodeNameItem;
    .locals 5
    .parameter "subscription"
    .parameter "type"

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, item:Lcom/zte/heartyservice/net/CodeNameItem;
    iget-object v3, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v2

    .line 378
    .local v2, nSetting:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    packed-switch p2, :pswitch_data_0

    .line 394
    :goto_0
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 411
    .end local v0           #item:Lcom/zte/heartyservice/net/CodeNameItem;
    .local v1, item:Lcom/zte/heartyservice/net/CodeNameItem;
    :goto_1
    return-object v1

    .line 380
    .end local v1           #item:Lcom/zte/heartyservice/net/CodeNameItem;
    .restart local v0       #item:Lcom/zte/heartyservice/net/CodeNameItem;
    :pswitch_0
    invoke-virtual {v2, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getCorrectionConfigProvice(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p0, p2, v3, v4}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v0

    .line 381
    goto :goto_0

    .line 383
    :pswitch_1
    invoke-virtual {v2, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getCorrectionConfigCity(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getCorrectionConfigProvice(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v3, v4}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v0

    .line 385
    goto :goto_0

    .line 387
    :pswitch_2
    invoke-virtual {v2, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getCorrectionConfigCarrier(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p0, p2, v3, v4}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v0

    .line 388
    goto :goto_0

    .line 390
    :pswitch_3
    invoke-virtual {v2, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getCorrectionConfigBrand(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getCorrectionConfigCarrier(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v3, v4}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v0

    goto :goto_0

    .line 397
    :cond_0
    packed-switch p2, :pswitch_data_1

    :goto_2
    move-object v1, v0

    .line 411
    .end local v0           #item:Lcom/zte/heartyservice/net/CodeNameItem;
    .restart local v1       #item:Lcom/zte/heartyservice/net/CodeNameItem;
    goto :goto_1

    .line 399
    .end local v1           #item:Lcom/zte/heartyservice/net/CodeNameItem;
    .restart local v0       #item:Lcom/zte/heartyservice/net/CodeNameItem;
    :pswitch_4
    iget-object v3, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v3, v3, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {p0, p2, v3, v4}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v0

    .line 400
    goto :goto_2

    .line 402
    :pswitch_5
    iget-object v3, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v3, v3, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v4, v4, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    invoke-virtual {p0, p2, v3, v4}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v0

    .line 403
    goto :goto_2

    .line 405
    :pswitch_6
    iget-object v3, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v3, v3, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {p0, p2, v3, v4}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v0

    .line 406
    goto :goto_2

    .line 408
    :pswitch_7
    iget-object v3, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v3, v3, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v4, v4, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    invoke-virtual {p0, p2, v3, v4}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v0

    goto :goto_2

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 397
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public hasSavedConfig(I)Z
    .locals 2
    .parameter "subscription"

    .prologue
    .line 466
    const-string v0, "SET_CONFIG_SUCCESS"

    iget-object v1, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getSimConfigFlag(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLastConfigSim(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    .line 433
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zte/heartyservice/msim/SimManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, simSerialNum:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v1

    const-string v2, "SIM_INFO_SERIAL_NUM"

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getSimInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    const/4 v1, 0x1

    .line 441
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetConfig(I)Z
    .locals 11
    .parameter "subscription"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 472
    iget-object v4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mAppContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v0

    .line 476
    .local v0, nSetting:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    iget-object v4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getCorrectionConfigProvice(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    .line 477
    iget-object v4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getCorrectionConfigCity(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    .line 478
    iget-object v4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getCorrectionConfigCarrier(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    .line 479
    iget-object v4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getCorrectionConfigBrand(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    .line 481
    iget-object v4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v4, v4, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {p0, v2, v4, v5}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v4

    if-nez v4, :cond_1

    .line 500
    :cond_0
    :goto_0
    return v2

    .line 484
    :cond_1
    iget-object v4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v4, v4, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    iget-object v5, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v5, v5, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v5}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 487
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v5, v5, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {p0, v4, v5, v6}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 490
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v5, v5, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    iget-object v6, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v6, v6, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v6}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->cleanConfigSim()V

    .line 496
    new-instance v1, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SwitchConfigTask;

    invoke-direct {v1, p0, p1}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SwitchConfigTask;-><init>(Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;I)V

    .line 497
    .local v1, task:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SwitchConfigTask;
    sget-object v4, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v3, [Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    new-instance v6, Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v7, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v7, v7, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    iget-object v8, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v8, v8, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    iget-object v9, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v9, v9, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    iget-object v10, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v10, v10, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v10}, Ltmsdk/bg/module/network/TrafficCorrectionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SwitchConfigTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v2, v3

    .line 500
    goto :goto_0
.end method

.method public saveConfig(ILcom/zte/heartyservice/net/CodeNameItem;Lcom/zte/heartyservice/net/CodeNameItem;Lcom/zte/heartyservice/net/CodeNameItem;Lcom/zte/heartyservice/net/CodeNameItem;)V
    .locals 2
    .parameter "subscription"
    .parameter "province"
    .parameter "city"
    .parameter "carrier"
    .parameter "brand"

    .prologue
    .line 455
    iget-object v1, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v0

    .line 456
    .local v0, nSetting:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    iget-object v1, p2, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setCorrectionConfigProvice(ILjava/lang/String;)V

    .line 457
    iget-object v1, p3, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setCorrectionConfigCity(ILjava/lang/String;)V

    .line 458
    iget-object v1, p4, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setCorrectionConfigCarrier(ILjava/lang/String;)V

    .line 459
    iget-object v1, p5, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setCorrectionConfigBrand(ILjava/lang/String;)V

    .line 461
    const-string v1, "SET_CONFIG_SUCCESS"

    invoke-virtual {v0, p1, v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setSimConfigFlag(ILjava/lang/String;)V

    .line 462
    return-void
.end method

.method public setConfig(ILcom/zte/heartyservice/net/CodeNameItem;Lcom/zte/heartyservice/net/CodeNameItem;Lcom/zte/heartyservice/net/CodeNameItem;Lcom/zte/heartyservice/net/CodeNameItem;)Z
    .locals 10
    .parameter "subscription"
    .parameter "province"
    .parameter "city"
    .parameter "carrier"
    .parameter "brand"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    iget-object v3, p2, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {p0, v1, v3, v4}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v3

    if-nez v3, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    iget-object v3, p3, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    iget-object v4, p2, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 96
    const/4 v3, 0x2

    iget-object v4, p4, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {p0, v3, v4, v5}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 99
    const/4 v3, 0x3

    iget-object v4, p5, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    iget-object v5, p4, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v5}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v4, p2, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    iput-object v4, v3, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    .line 103
    iget-object v3, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v4, p3, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    iput-object v4, v3, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    .line 104
    iget-object v3, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v4, p4, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    iput-object v4, v3, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    .line 105
    iget-object v3, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v4, p5, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    iput-object v4, v3, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->cleanConfigSim()V

    .line 112
    new-instance v0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SetConfigTask;

    invoke-direct {v0, p0, p1}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SetConfigTask;-><init>(Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;I)V

    .line 113
    .local v0, task:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SetConfigTask;
    sget-object v3, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v2, [Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    new-instance v5, Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v6, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v6, v6, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    iget-object v7, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v7, v7, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    iget-object v8, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v8, v8, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    iget-object v9, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mConfig:Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v9, v9, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v9}, Ltmsdk/bg/module/network/TrafficCorrectionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SetConfigTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v1, v2

    .line 116
    goto :goto_0
.end method

.method public setConfigSim(I)V
    .locals 3
    .parameter "subscription"

    .prologue
    .line 416
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zte/heartyservice/msim/SimManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, simSerialNum:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v1

    const-string v2, "SIM_INFO_SERIAL_NUM"

    invoke-virtual {v1, v2, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setSimInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_0
    return-void
.end method

.method public startCorrection(I)V
    .locals 5
    .parameter "subscription"

    .prologue
    const/4 v4, 0x0

    .line 186
    new-instance v0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$CorrectingTask;

    invoke-direct {v0, p0, p1}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$CorrectingTask;-><init>(Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;I)V

    .line 187
    .local v0, task:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$CorrectingTask;
    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$CorrectingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 189
    iget-object v1, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mAppContext:Landroid/content/Context;

    const v3, 0x7f0a03ac

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 192
    return-void
.end method

.method public switchConfig(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 446
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->hasSavedConfig(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->resetConfig(I)Z

    move-result v0

    .line 449
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized trafficCorrectionWithConfig(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "phonenum"
    .parameter "msg"
    .parameter "subscription"

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->isLastConfigSim(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 619
    invoke-virtual {p0, p3}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->resetConfig(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 620
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 627
    .end local v0           #success:Z
    :goto_0
    monitor-exit p0

    return-void

    .line 625
    :cond_0
    :try_start_1
    new-instance v1, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$trafficCorrectionTask;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$trafficCorrectionTask;-><init>(Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;ILjava/lang/String;Ljava/lang/String;)V

    .line 626
    .local v1, task:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$trafficCorrectionTask;
    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$trafficCorrectionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 618
    .end local v1           #task:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$trafficCorrectionTask;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
