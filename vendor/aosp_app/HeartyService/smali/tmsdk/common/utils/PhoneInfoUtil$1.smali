.class final Ltmsdk/common/utils/PhoneInfoUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/common/utils/PhoneInfoUtil;->getCPUscale(Ltmsdk/common/utils/PhoneInfoUtil$CPUScaleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Ei:Ltmsdk/common/utils/PhoneInfoUtil$CPUScaleListener;


# direct methods
.method constructor <init>(Ltmsdk/common/utils/PhoneInfoUtil$CPUScaleListener;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Ltmsdk/common/utils/PhoneInfoUtil$1;->Ei:Ltmsdk/common/utils/PhoneInfoUtil$CPUScaleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 311
    const/4 v2, 0x0

    .line 313
    .local v2, cpuScale:F
    :try_start_0
    const-string v19, "/proc/stat"

    invoke-static/range {v19 .. v19}, Ltmsdkobf/jv;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 314
    .local v15, sb_result:Ljava/lang/String;
    const-string v19, "\\n"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 315
    .local v14, ret:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 316
    .local v3, cpuState:Ljava/lang/String;
    move-object v1, v14

    .local v1, arr$:[Ljava/lang/String;
    array-length v13, v1

    .local v13, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v13, :cond_0

    aget-object v12, v1, v8

    .line 317
    .local v12, item:Ljava/lang/String;
    if-eqz v12, :cond_1

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v19

    if-nez v19, :cond_1

    .line 318
    move-object v3, v12

    .line 322
    .end local v12           #item:Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_2

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/utils/PhoneInfoUtil$1;->Ei:Ltmsdk/common/utils/PhoneInfoUtil$CPUScaleListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ltmsdk/common/utils/PhoneInfoUtil$CPUScaleListener;->onFinish(F)V

    .line 370
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #cpuState:Ljava/lang/String;
    .end local v8           #i$:I
    .end local v13           #len$:I
    .end local v14           #ret:[Ljava/lang/String;
    .end local v15           #sb_result:Ljava/lang/String;
    :goto_1
    return-void

    .line 316
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #cpuState:Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v12       #item:Ljava/lang/String;
    .restart local v13       #len$:I
    .restart local v14       #ret:[Ljava/lang/String;
    .restart local v15       #sb_result:Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 325
    .end local v12           #item:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v19, "\\s+"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 327
    .local v5, header1:[Ljava/lang/String;
    const-wide/16 v19, 0x1f4

    invoke-static/range {v19 .. v20}, Ljava/lang/Thread;->sleep(J)V

    .line 329
    const-string v19, "/proc/stat"

    invoke-static/range {v19 .. v19}, Ltmsdkobf/jv;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 330
    const-string v19, "\\n"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 331
    const/4 v3, 0x0

    .line 332
    move-object v1, v14

    array-length v13, v1

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v13, :cond_3

    aget-object v12, v1, v8

    .line 333
    .restart local v12       #item:Ljava/lang/String;
    if-eqz v12, :cond_4

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v19

    if-nez v19, :cond_4

    .line 334
    move-object v3, v12

    .line 338
    .end local v12           #item:Ljava/lang/String;
    :cond_3
    if-nez v3, :cond_5

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/utils/PhoneInfoUtil$1;->Ei:Ltmsdk/common/utils/PhoneInfoUtil$CPUScaleListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ltmsdk/common/utils/PhoneInfoUtil$CPUScaleListener;->onFinish(F)V

    goto :goto_1

    .line 332
    .restart local v12       #item:Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 341
    .end local v12           #item:Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v19, "\\s+"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 343
    .local v6, header2:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 344
    .local v16, totalCpuTime1:I
    const/16 v17, 0x0

    .line 348
    .local v17, totalCpuTime2:I
    const/4 v7, 0x1

    .local v7, i:I
    :goto_3
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_6

    .line 349
    aget-object v19, v5, v7

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    add-int v16, v16, v19

    .line 348
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 351
    :cond_6
    const/4 v7, 0x1

    :goto_4
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_7

    .line 352
    aget-object v19, v6, v7

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    add-int v17, v17, v19

    .line 351
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 354
    :cond_7
    sub-int v18, v17, v16

    .line 357
    .local v18, totalCpuTime_delta:I
    const/16 v19, 0x4

    aget-object v19, v5, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 358
    .local v9, idleTime1:I
    const/16 v19, 0x4

    aget-object v19, v6, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 359
    .local v10, idleTime2:I
    sub-int v11, v10, v9

    .line 362
    .local v11, idleTime_delta:I
    sub-int v19, v18, v11

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    div-int v19, v19, v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4120

    div-float v2, v19, v20

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/utils/PhoneInfoUtil$1;->Ei:Ltmsdk/common/utils/PhoneInfoUtil$CPUScaleListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ltmsdk/common/utils/PhoneInfoUtil$CPUScaleListener;->onFinish(F)V

    goto/16 :goto_1

    .line 363
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #cpuState:Ljava/lang/String;
    .end local v5           #header1:[Ljava/lang/String;
    .end local v6           #header2:[Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #i$:I
    .end local v9           #idleTime1:I
    .end local v10           #idleTime2:I
    .end local v11           #idleTime_delta:I
    .end local v13           #len$:I
    .end local v14           #ret:[Ljava/lang/String;
    .end local v15           #sb_result:Ljava/lang/String;
    .end local v16           #totalCpuTime1:I
    .end local v17           #totalCpuTime2:I
    .end local v18           #totalCpuTime_delta:I
    :catch_0
    move-exception v4

    .line 364
    .local v4, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/utils/PhoneInfoUtil$1;->Ei:Ltmsdk/common/utils/PhoneInfoUtil$CPUScaleListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ltmsdk/common/utils/PhoneInfoUtil$CPUScaleListener;->onFinish(F)V

    goto/16 :goto_1

    .line 365
    .end local v4           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v4

    .line 366
    .local v4, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/utils/PhoneInfoUtil$1;->Ei:Ltmsdk/common/utils/PhoneInfoUtil$CPUScaleListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ltmsdk/common/utils/PhoneInfoUtil$CPUScaleListener;->onFinish(F)V

    goto/16 :goto_1

    .end local v4           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/utils/PhoneInfoUtil$1;->Ei:Ltmsdk/common/utils/PhoneInfoUtil$CPUScaleListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ltmsdk/common/utils/PhoneInfoUtil$CPUScaleListener;->onFinish(F)V

    throw v19
.end method
