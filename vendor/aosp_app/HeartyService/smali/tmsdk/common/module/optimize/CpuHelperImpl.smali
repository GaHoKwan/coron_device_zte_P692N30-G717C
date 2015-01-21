.class public Ltmsdk/common/module/optimize/CpuHelperImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/optimize/ICpuHelper;


# instance fields
.field private zF:I

.field private zG:[Ljava/lang/String;

.field private zH:[I

.field private zI:I

.field private zJ:I

.field private zK:I

.field private zL:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zF:I

    .line 41
    iput-boolean v0, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zL:Z

    .line 44
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    :cond_0
    return-void
.end method

.method private bH(I)Z
    .locals 6
    .parameter "freq"

    .prologue
    .line 463
    const/4 v3, 0x0

    .line 464
    .local v3, isAvailable:Z
    invoke-virtual {p0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->getScalingAvaliableFrequencies()[I

    move-result-object v1

    .line 465
    .local v1, availableFrequencies:[I
    move-object v0, v1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v5, v0, v2

    .line 466
    .local v5, temp:I
    if-ne v5, p1, :cond_1

    .line 467
    const/4 v3, 0x1

    .line 471
    .end local v5           #temp:I
    :cond_0
    return v3

    .line 465
    .restart local v5       #temp:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static co(Ljava/lang/String;)Ljava/util/PriorityQueue;
    .locals 14
    .parameter "line"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/PriorityQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 399
    new-instance v7, Ljava/util/PriorityQueue;

    invoke-direct {v7}, Ljava/util/PriorityQueue;-><init>()V

    .line 400
    .local v7, r:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<Ljava/lang/Integer;>;"
    const-string v11, ","

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, groups:[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-object v7

    .line 414
    :cond_1
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    :try_start_0
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v9, v0, v5

    .line 415
    .local v9, s:Ljava/lang/String;
    const-string v11, "-"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 416
    .local v8, ranges:[Ljava/lang/String;
    if-nez v8, :cond_3

    .line 414
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 418
    :cond_3
    array-length v11, v8

    if-ne v11, v13, :cond_4

    .line 419
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 427
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #ranges:[Ljava/lang/String;
    .end local v9           #s:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 428
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v11, "CpuHelperImpl"

    invoke-static {v11, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 420
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v8       #ranges:[Ljava/lang/String;
    .restart local v9       #s:Ljava/lang/String;
    :cond_4
    :try_start_1
    array-length v11, v8

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 421
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 422
    .local v2, from:I
    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 423
    .local v10, to:I
    move v4, v2

    .local v4, i:I
    :goto_3
    if-gt v4, v10, :cond_2

    .line 424
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 423
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private cp(Ljava/lang/String;)Z
    .locals 8
    .parameter "governor"

    .prologue
    .line 475
    const/4 v3, 0x0

    .line 476
    .local v3, isAvailable:Z
    invoke-virtual {p0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->getScalingAvaliableGovernors()[Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, availableGovernors:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v7, v1

    if-nez v7, :cond_1

    :cond_0
    move v4, v3

    .line 486
    .end local v3           #isAvailable:Z
    .local v4, isAvailable:I
    :goto_0
    return v4

    .line 480
    .end local v4           #isAvailable:I
    .restart local v3       #isAvailable:Z
    :cond_1
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v0, v2

    .line 481
    .local v6, temp:Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 482
    const/4 v3, 0x1

    .end local v6           #temp:Ljava/lang/String;
    :cond_2
    move v4, v3

    .line 486
    .restart local v4       #isAvailable:I
    goto :goto_0

    .line 480
    .end local v4           #isAvailable:I
    .restart local v6       #temp:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private fD()[I
    .locals 19

    .prologue
    .line 293
    invoke-virtual/range {p0 .. p0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->getCpuInfoMinFreq()I

    move-result v11

    .line 294
    .local v11, minFreq:I
    invoke-virtual/range {p0 .. p0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->getCpuInfoMaxFreq()I

    move-result v9

    .line 295
    .local v9, maxFreq:I
    invoke-virtual/range {p0 .. p0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->getScalingCurFreq()I

    move-result v2

    .line 296
    .local v2, curFreq:I
    if-eqz v11, :cond_0

    if-eqz v9, :cond_0

    if-nez v2, :cond_2

    .line 297
    :cond_0
    const/4 v12, 0x0

    .line 347
    :cond_1
    return-object v12

    .line 299
    :cond_2
    new-instance v15, Ljava/util/ArrayList;

    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 300
    .local v15, tempFreqs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    if-eq v2, v11, :cond_3

    if-eq v2, v9, :cond_3

    .line 303
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->getScalingGovernor()Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, curGovernor:Ljava/lang/String;
    const-string v17, "userspace"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    invoke-virtual/range {p0 .. p0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->getScalingAvaliableGovernors()[Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_4

    const-string v17, "userspace"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ltmsdk/common/module/optimize/CpuHelperImpl;->cp(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 309
    const-string v17, "userspace"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ltmsdk/common/module/optimize/CpuHelperImpl;->setScalingGovernor(Ljava/lang/String;)V

    .line 311
    :cond_4
    const-string v17, "userspace"

    invoke-virtual/range {p0 .. p0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->getScalingGovernor()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 312
    add-int v17, v9, v11

    div-int/lit8 v10, v17, 0x2

    .line 313
    .local v10, mid:I
    const/16 v16, 0x1

    .line 315
    .local v16, useMax:Z
    const/4 v7, 0x0

    .local v7, loopTimes:I
    move v8, v7

    .line 316
    .end local v7           #loopTimes:I
    .local v8, loopTimes:I
    :goto_0
    add-int/lit8 v7, v8, 0x1

    .end local v8           #loopTimes:I
    .restart local v7       #loopTimes:I
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v8, v0, :cond_9

    .line 317
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Ltmsdk/common/module/optimize/CpuHelperImpl;->setScalingFreq(IZ)V

    .line 318
    invoke-virtual/range {p0 .. p0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->getScalingCurFreq()I

    move-result v2

    .line 319
    const/4 v4, 0x0

    .line 320
    .local v4, duplicate:Z
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 321
    .local v14, temp:I
    if-ne v14, v2, :cond_5

    .line 322
    const/4 v4, 0x1

    .line 326
    .end local v14           #temp:I
    :cond_6
    if-nez v4, :cond_7

    .line 327
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_7
    if-eqz v16, :cond_8

    .line 331
    add-int v17, v9, v2

    div-int/lit8 v10, v17, 0x2

    .line 332
    const/16 v16, 0x0

    move v8, v7

    .end local v7           #loopTimes:I
    .restart local v8       #loopTimes:I
    goto :goto_0

    .line 334
    .end local v8           #loopTimes:I
    .restart local v7       #loopTimes:I
    :cond_8
    add-int v17, v11, v2

    div-int/lit8 v10, v17, 0x2

    .line 335
    const/16 v16, 0x1

    move v8, v7

    .end local v7           #loopTimes:I
    .restart local v8       #loopTimes:I
    goto :goto_0

    .line 338
    .end local v4           #duplicate:Z
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #loopTimes:I
    .restart local v7       #loopTimes:I
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ltmsdk/common/module/optimize/CpuHelperImpl;->setScalingGovernor(Ljava/lang/String;)V

    .line 341
    .end local v7           #loopTimes:I
    .end local v10           #mid:I
    .end local v16           #useMax:Z
    :cond_a
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v13

    .line 342
    .local v13, size:I
    new-array v12, v13, [I

    .line 343
    .local v12, rst:[I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v13, :cond_1

    .line 344
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aput v17, v12, v5

    .line 343
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private static fE()I
    .locals 8

    .prologue
    .line 381
    const-string v7, "/sys/devices/system/cpu/present"

    invoke-static {v7}, Ltmsdkobf/jv;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 382
    .local v5, presentContent:Ljava/lang/String;
    invoke-static {v5}, Ltmsdk/common/module/optimize/CpuHelperImpl;->co(Ljava/lang/String;)Ljava/util/PriorityQueue;

    move-result-object v6

    .line 384
    .local v6, presentCpus:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<Ljava/lang/Integer;>;"
    const-string v7, "/sys/devices/system/cpu/possible"

    invoke-static {v7}, Ltmsdkobf/jv;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, possibleContent:Ljava/lang/String;
    invoke-static {v3}, Ltmsdk/common/module/optimize/CpuHelperImpl;->co(Ljava/lang/String;)Ljava/util/PriorityQueue;

    move-result-object v4

    .line 387
    .local v4, possibleCpus:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 390
    .local v0, count:I
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 391
    .local v1, cpu:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    .end local v1           #cpu:I
    :cond_1
    return v0
.end method

.method private fF()V
    .locals 2

    .prologue
    .line 497
    iget-boolean v1, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zL:Z

    if-nez v1, :cond_0

    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->isRootGot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v0, scripts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "chmod 666 /sys/devices/system/cpu/kernel_max"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    const-string v1, "chmod 666 /sys/devices/system/cpu/online"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    const-string v1, "chmod 777 /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    const-string v1, "chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/*"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    const-string v1, "chmod 777 /sys/devices/system/cpu/cpu0/cpufreq/stats/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    const-string v1, "chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/stats/*"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-static {v0}, Ltmsdk/common/utils/ScriptHelper;->runScriptAsRoot(Ljava/util/List;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zL:Z

    .line 507
    .end local v0           #scripts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 505
    .restart local v0       #scripts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAvailableCpus()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zF:I

    if-gtz v0, :cond_0

    .line 374
    invoke-static {}, Ltmsdk/common/module/optimize/CpuHelperImpl;->fE()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zF:I

    .line 377
    :cond_0
    iget v0, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zF:I

    return v0
.end method

.method public getCpuInfoMaxFreq()I
    .locals 3

    .prologue
    .line 51
    iget v1, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zI:I

    if-nez v1, :cond_0

    .line 52
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ltmsdkobf/ln;->cb(I)I

    move-result v1

    iput v1, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zI:I

    .line 63
    :cond_0
    :goto_0
    iget v1, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zI:I

    return v1

    .line 57
    :cond_1
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v1}, Ltmsdkobf/jv;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, cpuMaxFreq:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zI:I

    goto :goto_0
.end method

.method public getCpuInfoMinFreq()I
    .locals 3

    .prologue
    .line 68
    iget v1, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zJ:I

    if-nez v1, :cond_0

    .line 69
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ltmsdkobf/ln;->cb(I)I

    move-result v1

    iput v1, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zJ:I

    .line 81
    :cond_0
    :goto_0
    iget v1, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zJ:I

    return v1

    .line 74
    :cond_1
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    invoke-static {v1}, Ltmsdkobf/jv;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, cpuMinFreq:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zJ:I

    goto :goto_0
.end method

.method public getKernelMax()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 357
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v1

    invoke-interface {v1}, Ltmsdkobf/ln;->gz()I

    move-result v1

    .line 368
    :goto_0
    return v1

    .line 362
    :cond_0
    iget v1, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zK:I

    if-nez v1, :cond_1

    .line 363
    const-string v1, "/sys/devices/system/cpu/kernel_max"

    invoke-static {v1}, Ltmsdkobf/jv;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, kernelMax:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 365
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zK:I

    .line 368
    .end local v0           #kernelMax:Ljava/lang/String;
    :cond_1
    iget v1, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zK:I

    goto :goto_0
.end method

.method public getOnlineCpus()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 435
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 437
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Ltmsdkobf/ln;->cc(I)[Ljava/lang/String;

    move-result-object v5

    .line 459
    :cond_0
    :goto_0
    return-object v5

    .line 441
    :cond_1
    const/4 v5, 0x0

    .line 442
    .local v5, onlineCpus:[Ljava/lang/String;
    const-string v7, "/sys/devices/system/cpu/online"

    invoke-static {v7}, Ltmsdkobf/jv;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, online:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 444
    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 445
    .local v0, index:I
    :goto_1
    const/4 v7, -0x1

    if-eq v0, v7, :cond_3

    .line 446
    add-int/lit8 v7, v0, 0x1

    add-int/lit8 v8, v0, 0x2

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 447
    .local v1, max:I
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 448
    .local v3, min:I
    move v2, v3

    .line 449
    .local v2, mid:I
    new-instance v6, Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 450
    .local v6, sb:Ljava/lang/StringBuffer;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_2

    .line 451
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 453
    :cond_2
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 454
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 455
    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 456
    goto :goto_1

    .line 457
    .end local v1           #max:I
    .end local v2           #mid:I
    .end local v3           #min:I
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :cond_3
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public declared-synchronized getScalingAvaliableFrequencies()[I
    .locals 7

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zH:[I

    if-nez v4, :cond_3

    .line 254
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ltmsdkobf/ln;->cc(I)[Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, freqs:[Ljava/lang/String;
    array-length v4, v0

    new-array v4, v4, [I

    iput-object v4, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zH:[I

    .line 258
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 259
    iget-object v4, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zH:[I

    aget-object v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v1

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v0           #freqs:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_0
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-static {v4}, Ltmsdkobf/jv;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, scalingAvailableFrequencies:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 265
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 266
    .restart local v0       #freqs:[Ljava/lang/String;
    array-length v4, v0

    new-array v4, v4, [I

    iput-object v4, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zH:[I

    .line 267
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 268
    iget-object v4, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zH:[I

    aget-object v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v1

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 272
    .end local v0           #freqs:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_1
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-static {v4}, Ltmsdkobf/jv;->cb(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, temprst:[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    .line 276
    array-length v4, v3

    new-array v4, v4, [I

    iput-object v4, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zH:[I

    .line 277
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 278
    iget-object v4, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zH:[I

    aget-object v5, v3, v1

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v1

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 282
    .end local v1           #i:I
    :cond_2
    invoke-direct {p0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->fD()[I

    move-result-object v4

    iput-object v4, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zH:[I

    .line 288
    .end local v2           #scalingAvailableFrequencies:Ljava/lang/String;
    .end local v3           #temprst:[Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zH:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 253
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getScalingAvaliableGovernors()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zG:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 87
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ltmsdkobf/ln;->cc(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zG:[Ljava/lang/String;

    .line 98
    :cond_0
    :goto_0
    iget-object v1, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zG:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 92
    :cond_1
    :try_start_1
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    invoke-static {v1}, Ltmsdkobf/jv;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, scalingAvaliableGovernors:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 94
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zG:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    .end local v0           #scalingAvaliableGovernors:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getScalingCurFreq()I
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ltmsdkobf/ln;->cb(I)I

    move-result v1

    .line 112
    :goto_0
    return v1

    .line 108
    :cond_0
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-static {v1}, Ltmsdkobf/jv;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, cpuCurFreq:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 110
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 112
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getScalingGovernor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v1

    invoke-interface {v1}, Ltmsdkobf/ln;->gy()Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_0
    :goto_0
    return-object v0

    .line 154
    :cond_1
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v1}, Ltmsdkobf/jv;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, governor:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 156
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScalingMaxFreq()I
    .locals 3

    .prologue
    .line 183
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ltmsdkobf/ln;->cb(I)I

    move-result v1

    .line 192
    :goto_0
    return v1

    .line 188
    :cond_0
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {v1}, Ltmsdkobf/jv;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, scalingMaxFreq:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 190
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 192
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getScalingMinFreq()I
    .locals 3

    .prologue
    .line 217
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ltmsdkobf/ln;->cb(I)I

    move-result v1

    .line 227
    :goto_0
    return v1

    .line 223
    :cond_0
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-static {v1}, Ltmsdkobf/jv;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, scalingMinFreq:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 225
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 227
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public setScalingFreq(I)V
    .locals 1
    .parameter "freq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 492
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->setScalingFreq(IZ)V

    .line 493
    return-void
.end method

.method public setScalingFreq(IZ)V
    .locals 3
    .parameter "freq"
    .parameter "checkAvailable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2, p1, p2}, Ltmsdkobf/ln;->b(IIZ)V

    .line 145
    :goto_0
    return-void

    .line 131
    :cond_0
    if-eqz p2, :cond_3

    .line 132
    invoke-direct {p0, p1}, Ltmsdk/common/module/optimize/CpuHelperImpl;->bH(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the freq is not available!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_1
    invoke-virtual {p0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->getScalingMinFreq()I

    move-result v1

    if-lt p1, v1, :cond_2

    invoke-virtual {p0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->getScalingMaxFreq()I

    move-result v1

    if-le p1, v1, :cond_3

    .line 135
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the freq should not be smaller than the min freq and not be larger than the max freq!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_3
    invoke-direct {p0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->fF()V

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "scaling_setspeed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, script:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ltmsdk/common/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized setScalingGovernor(Ljava/lang/String;)V
    .locals 4
    .parameter "governor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v2

    invoke-interface {v2, p1}, Ltmsdkobf/ln;->cA(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :goto_0
    monitor-exit p0

    return-void

    .line 169
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->fF()V

    .line 170
    iget-object v2, p0, Ltmsdk/common/module/optimize/CpuHelperImpl;->zG:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 171
    invoke-virtual {p0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->getScalingAvaliableGovernors()[Ljava/lang/String;

    .line 173
    :cond_1
    invoke-direct {p0, p1}, Ltmsdk/common/module/optimize/CpuHelperImpl;->cp(Ljava/lang/String;)Z

    move-result v0

    .line 174
    .local v0, isMatch:Z
    if-nez v0, :cond_2

    .line 175
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "the governor is unavailable!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v0           #isMatch:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 177
    .restart local v0       #isMatch:Z
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scaling_governor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, script:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Ltmsdk/common/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setScalingMaxFreq(I)V
    .locals 4
    .parameter "maxFreq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 198
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2, p1, v3}, Ltmsdkobf/ln;->b(IIZ)V

    .line 213
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-direct {p0, p1}, Ltmsdk/common/module/optimize/CpuHelperImpl;->bH(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the max freq is not available!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_1
    invoke-virtual {p0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->getScalingMinFreq()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 207
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the max freq can not be smaller than the min freq!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_2
    invoke-direct {p0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->fF()V

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "scaling_max_freq"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, script:Ljava/lang/String;
    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ltmsdk/common/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setScalingMinFreq(I)V
    .locals 4
    .parameter "minFreq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 233
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2, p1, v3}, Ltmsdkobf/ln;->b(IIZ)V

    .line 249
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-direct {p0, p1}, Ltmsdk/common/module/optimize/CpuHelperImpl;->bH(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the min freq is not available!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_1
    invoke-virtual {p0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->getScalingMaxFreq()I

    move-result v1

    if-le p1, v1, :cond_2

    .line 243
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the min freq can not be larger than the max freq!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_2
    invoke-direct {p0}, Ltmsdk/common/module/optimize/CpuHelperImpl;->fF()V

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "scaling_min_freq"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, script:Ljava/lang/String;
    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ltmsdk/common/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    goto :goto_0
.end method
