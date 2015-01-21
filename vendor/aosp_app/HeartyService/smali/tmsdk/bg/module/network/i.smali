.class final Ltmsdk/bg/module/network/i;
.super Ltmsdk/bg/creator/BaseManagerB;
.source "SourceFile"


# instance fields
.field mContext:Landroid/content/Context;

.field wj:Ltmsdk/bg/module/network/j;

.field wk:Ltmsdkobf/lk;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ltmsdk/bg/creator/BaseManagerB;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "provinceId"
    .parameter "cityId"
    .parameter "carryId"
    .parameter "brandId"

    .prologue
    .line 92
    iget-object v0, p0, Ltmsdk/bg/module/network/i;->wj:Ltmsdk/bg/module/network/j;

    new-instance v1, Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    invoke-direct {v1, p1, p2, p3, p4}, Ltmsdk/bg/module/network/TrafficCorrectionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ltmsdk/bg/module/network/j;->a(Ltmsdk/bg/module/network/TrafficCorrectionConfig;)V

    .line 93
    iget-object v0, p0, Ltmsdk/bg/module/network/i;->wj:Ltmsdk/bg/module/network/j;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ltmsdk/bg/module/network/j;->r(J)V

    .line 94
    invoke-direct {p0}, Ltmsdk/bg/module/network/i;->eG()I

    move-result v0

    return v0
.end method

.method private a(Ltmsdk/bg/module/network/TrafficCorrectionResult;Ltmsdk/common/module/aresengine/SmsEntity;)I
    .locals 12
    .parameter "result"
    .parameter "smsEntity"

    .prologue
    const/4 v7, 0x0

    .line 215
    const/4 v4, 0x0

    .line 216
    .local v4, matchRuleUpdated:Z
    iget-object v0, p2, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    .line 217
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p2}, Ltmsdk/common/module/aresengine/SmsEntity;->getBody()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, body:Ljava/lang/String;
    invoke-static {v0, v1}, Ltmsdk/common/tcc/TrafficSmsParser;->getWrongSmsType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_0

    .line 221
    const-string v7, "TrafficCorrectionManagerImpl"

    invoke-static {v7, v0}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    const/16 v7, -0x67

    .line 259
    :goto_0
    return v7

    .line 226
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Ltmsdk/bg/module/network/i;->wj:Ltmsdk/bg/module/network/j;

    invoke-virtual {v10}, Ltmsdk/bg/module/network/j;->eK()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x240c8400

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 227
    invoke-direct {p0, p2}, Ltmsdk/bg/module/network/i;->c(Ltmsdk/common/module/aresengine/SmsEntity;)I

    move-result v6

    .line 228
    .local v6, ret:I
    const-string v8, "TrafficCorrectionManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMatchRule 1 result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    const/4 v4, 0x1

    .line 232
    .end local v6           #ret:I
    :cond_1
    const/4 v3, 0x0

    .line 234
    .local v3, loop:Z
    :cond_2
    const/4 v5, 0x0

    .line 235
    .local v5, matchRules:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;>;"
    const/4 v2, 0x0

    .line 236
    .local v2, localMatch:Z
    const/4 v3, 0x0

    .line 237
    iget-object v8, p0, Ltmsdk/bg/module/network/i;->wj:Ltmsdk/bg/module/network/j;

    sget-object v9, Ltmsdkobf/ac;->cW:Ltmsdkobf/ac;

    invoke-virtual {v9}, Ltmsdkobf/ac;->value()I

    move-result v9

    invoke-virtual {v8, v9}, Ltmsdk/bg/module/network/j;->bh(I)Ljava/util/List;

    move-result-object v5

    .line 238
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 239
    const/4 v8, 0x1

    invoke-direct {p0, p1, v5, p2, v8}, Ltmsdk/bg/module/network/i;->a(Ltmsdk/bg/module/network/TrafficCorrectionResult;Ljava/util/List;Ltmsdk/common/module/aresengine/SmsEntity;Z)Z

    move-result v2

    .line 242
    :cond_3
    if-nez v2, :cond_4

    .line 243
    iget-object v8, p0, Ltmsdk/bg/module/network/i;->wj:Ltmsdk/bg/module/network/j;

    sget-object v9, Ltmsdkobf/ac;->cV:Ltmsdkobf/ac;

    invoke-virtual {v9}, Ltmsdkobf/ac;->value()I

    move-result v9

    invoke-virtual {v8, v9}, Ltmsdk/bg/module/network/j;->bh(I)Ljava/util/List;

    move-result-object v5

    .line 244
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 245
    invoke-direct {p0, p1, v5, p2, v7}, Ltmsdk/bg/module/network/i;->a(Ltmsdk/bg/module/network/TrafficCorrectionResult;Ljava/util/List;Ltmsdk/common/module/aresengine/SmsEntity;Z)Z

    move-result v2

    .line 249
    :cond_4
    if-nez v2, :cond_6

    if-nez v4, :cond_6

    .line 250
    invoke-direct {p0, p2}, Ltmsdk/bg/module/network/i;->c(Ltmsdk/common/module/aresengine/SmsEntity;)I

    move-result v6

    .line 251
    .restart local v6       #ret:I
    const-string v8, "TrafficCorrectionManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMatchRule 2 result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    if-nez v6, :cond_5

    .line 253
    const/4 v3, 0x1

    .line 255
    :cond_5
    const/4 v4, 0x1

    .line 257
    .end local v6           #ret:I
    :cond_6
    if-nez v3, :cond_2

    goto/16 :goto_0
.end method

.method private a(Ltmsdk/bg/module/network/TrafficCorrectionResult;Ljava/util/List;Ltmsdk/common/module/aresengine/SmsEntity;Z)Z
    .locals 11
    .parameter "result"
    .parameter
    .parameter "smsEntity"
    .parameter "isUseTypeMatchRule"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/bg/module/network/TrafficCorrectionResult;",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;",
            ">;",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 314
    .local p2, matchRules:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;>;"
    const/4 v5, 0x0

    .line 315
    .local v5, ruleMatched:Z
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 316
    iget-object v0, p3, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    .line 317
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p3}, Ltmsdk/common/module/aresengine/SmsEntity;->getBody()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, body:Ljava/lang/String;
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 322
    .local v7, trafficRef:Ljava/util/concurrent/atomic/AtomicInteger;
    if-eqz p4, :cond_3

    .line 323
    const/4 v6, 0x0

    .line 324
    .local v6, trafficData:I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;

    .line 325
    .local v4, rule:Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;
    invoke-static {v0, v1, v4, v7}, Ltmsdk/common/tcc/TrafficSmsParser;->getNumberEntrance(Ljava/lang/String;Ljava/lang/String;Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v3

    .line 326
    .local v3, resultCode:I
    if-nez v3, :cond_0

    .line 327
    const/4 v5, 0x1

    .line 328
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_0

    .line 330
    :cond_0
    const/4 v5, 0x0

    .line 335
    .end local v3           #resultCode:I
    .end local v4           #rule:Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;
    :cond_1
    const-string v8, "TrafficCorrectionManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Used "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " kb"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    if-eqz v5, :cond_2

    .line 337
    if-eqz p1, :cond_2

    .line 338
    iput v6, p1, Ltmsdk/bg/module/network/TrafficCorrectionResult;->mUsedTrafficInKb:I

    .line 339
    const/4 v8, -0x1

    iput v8, p1, Ltmsdk/bg/module/network/TrafficCorrectionResult;->mLeftTrafficInKb:I

    .line 364
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #body:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #trafficData:I
    .end local v7           #trafficRef:Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_2
    :goto_1
    return v5

    .line 343
    .restart local v0       #address:Ljava/lang/String;
    .restart local v1       #body:Ljava/lang/String;
    .restart local v7       #trafficRef:Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_3
    const/4 v6, 0x0

    .line 344
    .restart local v6       #trafficData:I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;

    .line 345
    .restart local v4       #rule:Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;
    invoke-static {v0, v1, v4, v7}, Ltmsdk/common/tcc/TrafficSmsParser;->getNumberEntrance(Ljava/lang/String;Ljava/lang/String;Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v3

    .line 346
    .restart local v3       #resultCode:I
    if-nez v3, :cond_4

    .line 347
    const/4 v5, 0x1

    .line 348
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_2

    .line 350
    :cond_4
    const/4 v5, 0x0

    .line 355
    .end local v3           #resultCode:I
    .end local v4           #rule:Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;
    :cond_5
    const-string v8, "TrafficCorrectionManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Left "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " kb"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    if-eqz v5, :cond_2

    .line 357
    if-eqz p1, :cond_2

    .line 358
    const/4 v8, -0x1

    iput v8, p1, Ltmsdk/bg/module/network/TrafficCorrectionResult;->mUsedTrafficInKb:I

    .line 359
    iput v6, p1, Ltmsdk/bg/module/network/TrafficCorrectionResult;->mLeftTrafficInKb:I

    goto :goto_1
.end method

.method private c(Ltmsdk/common/module/aresengine/SmsEntity;)I
    .locals 29
    .parameter "smsEntity"

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Ltmsdk/bg/module/network/i;->wj:Ltmsdk/bg/module/network/j;

    sget-object v4, Ltmsdkobf/y;->ck:Ltmsdkobf/y;

    invoke-virtual {v4}, Ltmsdkobf/y;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Ltmsdk/bg/module/network/j;->bi(I)Ljava/util/List;

    move-result-object v21

    .line 264
    .local v21, queryInfo:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/ba;>;"
    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    .line 265
    .local v25, sb:Ljava/lang/StringBuffer;
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ltmsdkobf/ba;

    .line 266
    .local v20, query:Ltmsdkobf/ba;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 267
    move-object/from16 v0, v20

    iget-object v3, v0, Ltmsdkobf/ba;->ew:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 269
    :cond_0
    const-string v3, "|"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v4, v0, Ltmsdkobf/ba;->ew:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 273
    .end local v20           #query:Ltmsdkobf/ba;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Ltmsdk/bg/module/network/i;->wj:Ltmsdk/bg/module/network/j;

    invoke-virtual {v3}, Ltmsdk/bg/module/network/j;->eH()Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    move-result-object v18

    .line 275
    .local v18, config:Ltmsdk/bg/module/network/TrafficCorrectionConfig;
    new-instance v2, Ltmsdkobf/bd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    move-object/from16 v0, p1

    iget-object v4, v0, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ltmsdk/common/module/aresengine/SmsEntity;->getBody()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v6, v0, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Ltmsdk/bg/module/network/i;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    iget-object v7, v0, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Ltmsdk/bg/module/network/i;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2710

    const/4 v10, 0x0

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "version-notset-tms"

    new-instance v15, Ltmsdkobf/cq;

    invoke-direct {v15}, Ltmsdkobf/cq;-><init>()V

    const/16 v16, 0x2

    new-instance v17, Ltmsdkobf/co;

    invoke-direct/range {v17 .. v17}, Ltmsdkobf/co;-><init>()V

    invoke-direct/range {v2 .. v17}, Ltmsdkobf/bd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IZLjava/lang/String;Ltmsdkobf/cq;ILtmsdkobf/co;)V

    .line 277
    .local v2, stSmsInfo:Ltmsdkobf/bd;
    new-instance v28, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct/range {v28 .. v28}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 278
    .local v28, trafficTemplateRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/be;>;"
    new-instance v26, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 279
    .local v26, stRetInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bc;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Ltmsdk/bg/module/network/i;->wk:Ltmsdkobf/lk;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v3, v2, v0, v1}, Ltmsdkobf/lk;->a(Ltmsdkobf/bd;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v22

    .line 280
    .local v22, resultCode:I
    const/4 v3, 0x2

    move/from16 v0, v22

    if-eq v0, v3, :cond_2

    const/4 v3, 0x1

    move/from16 v0, v22

    if-eq v0, v3, :cond_2

    if-nez v22, :cond_5

    .line 281
    :cond_2
    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ltmsdkobf/bc;

    .line 282
    .local v23, retInfo:Ltmsdkobf/bc;
    if-eqz v23, :cond_3

    .line 283
    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ltmsdkobf/be;

    .line 284
    .local v27, template:Ltmsdkobf/be;
    if-eqz v27, :cond_3

    invoke-virtual/range {v27 .. v27}, Ltmsdkobf/be;->u()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 285
    invoke-virtual/range {v27 .. v27}, Ltmsdkobf/be;->u()Ljava/util/ArrayList;

    move-result-object v24

    .line 286
    .local v24, rules:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/ax;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Ltmsdk/bg/module/network/i;->wj:Ltmsdk/bg/module/network/j;

    invoke-virtual {v3}, Ltmsdk/bg/module/network/j;->eI()V

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Ltmsdk/bg/module/network/i;->wj:Ltmsdk/bg/module/network/j;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ltmsdk/bg/module/network/j;->l(Ljava/util/List;)V

    .line 294
    .end local v24           #rules:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/ax;>;"
    .end local v27           #template:Ltmsdkobf/be;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Ltmsdk/bg/module/network/i;->wj:Ltmsdk/bg/module/network/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ltmsdk/bg/module/network/j;->r(J)V

    .line 299
    const/4 v3, 0x0

    .end local v23           #retInfo:Ltmsdkobf/bc;
    :goto_1
    return v3

    .line 290
    .restart local v23       #retInfo:Ltmsdkobf/bc;
    .restart local v24       #rules:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/ax;>;"
    .restart local v27       #template:Ltmsdkobf/be;
    :cond_4
    const/16 v3, -0x65

    goto :goto_1

    .line 296
    .end local v23           #retInfo:Ltmsdkobf/bc;
    .end local v24           #rules:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/ax;>;"
    .end local v27           #template:Ltmsdkobf/be;
    :cond_5
    const/16 v3, -0x66

    goto :goto_1
.end method

.method private eG()I
    .locals 14

    .prologue
    const/4 v4, 0x2

    .line 121
    iget-object v5, p0, Ltmsdk/bg/module/network/i;->wj:Ltmsdk/bg/module/network/j;

    invoke-virtual {v5}, Ltmsdk/bg/module/network/j;->eH()Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    move-result-object v8

    .line 122
    .local v8, config:Ltmsdk/bg/module/network/TrafficCorrectionConfig;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v8, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v8, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, provinceCode:Ljava/lang/String;
    iget-object v2, v8, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    .line 124
    .local v2, carryCode:Ljava/lang/String;
    iget-object v3, v8, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    .line 125
    .local v3, brandCode:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 126
    :cond_0
    const/16 v11, -0x39

    .line 144
    :goto_0
    return v11

    .line 129
    :cond_1
    const/4 v11, 0x0

    .line 130
    .local v11, resultCode:I
    new-instance v0, Ltmsdkobf/az;

    const-string v5, "imei-notset-tms"

    new-instance v7, Ltmsdkobf/co;

    invoke-direct {v7}, Ltmsdkobf/co;-><init>()V

    move v6, v4

    invoke-direct/range {v0 .. v7}, Ltmsdkobf/az;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILtmsdkobf/co;)V

    .line 131
    .local v0, queryParam:Ltmsdkobf/az;
    new-instance v10, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v10}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 132
    .local v10, queryResultRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bb;>;"
    iget-object v5, p0, Ltmsdk/bg/module/network/i;->wk:Ltmsdkobf/lk;

    invoke-virtual {v5, v0, v10}, Ltmsdkobf/lk;->a(Ltmsdkobf/az;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v13

    .line 133
    .local v13, wupResultCode:I
    if-eq v13, v4, :cond_2

    const/4 v4, 0x1

    if-eq v13, v4, :cond_2

    if-nez v13, :cond_4

    .line 134
    :cond_2
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ltmsdkobf/bb;

    .line 135
    .local v12, st:Ltmsdkobf/bb;
    invoke-virtual {v12}, Ltmsdkobf/bb;->t()Ljava/util/ArrayList;

    move-result-object v9

    .line 136
    .local v9, queryInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/ba;>;"
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 137
    iget-object v4, p0, Ltmsdk/bg/module/network/i;->wj:Ltmsdk/bg/module/network/j;

    invoke-virtual {v4}, Ltmsdk/bg/module/network/j;->eJ()V

    .line 138
    iget-object v4, p0, Ltmsdk/bg/module/network/i;->wj:Ltmsdk/bg/module/network/j;

    invoke-virtual {v4, v9}, Ltmsdk/bg/module/network/j;->m(Ljava/util/List;)V

    .line 140
    :cond_3
    iget-object v4, p0, Ltmsdk/bg/module/network/i;->wj:Ltmsdk/bg/module/network/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ltmsdk/bg/module/network/j;->q(J)V

    goto :goto_0

    .line 142
    .end local v9           #queryInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/ba;>;"
    .end local v12           #st:Ltmsdkobf/bb;
    :cond_4
    move v11, v13

    goto :goto_0
.end method


# virtual methods
.method public d(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "srcCode"
    .parameter "areaCode"

    .prologue
    .line 378
    if-eqz p2, :cond_0

    .line 379
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 460
    .end local p1
    :goto_0
    return-object p1

    .line 381
    .restart local p1
    :sswitch_0
    const-string p1, "\u5317\u4eac"

    goto :goto_0

    .line 383
    :sswitch_1
    const-string p1, "\u5e7f\u4e1c"

    goto :goto_0

    .line 385
    :sswitch_2
    const-string p1, "\u4e0a\u6d77"

    goto :goto_0

    .line 387
    :sswitch_3
    const-string p1, "\u5929\u6d25"

    goto :goto_0

    .line 389
    :sswitch_4
    const-string p1, "\u91cd\u5e86"

    goto :goto_0

    .line 391
    :sswitch_5
    const-string p1, "\u8fbd\u5b81"

    goto :goto_0

    .line 393
    :sswitch_6
    const-string p1, "\u6c5f\u82cf"

    goto :goto_0

    .line 395
    :sswitch_7
    const-string p1, "\u6e56\u5317"

    goto :goto_0

    .line 397
    :sswitch_8
    const-string p1, "\u56db\u5ddd"

    goto :goto_0

    .line 399
    :sswitch_9
    const-string p1, "\u9655\u897f"

    goto :goto_0

    .line 401
    :sswitch_a
    const-string p1, "\u6cb3\u5317"

    goto :goto_0

    .line 403
    :sswitch_b
    const-string p1, "\u5c71\u897f"

    goto :goto_0

    .line 405
    :sswitch_c
    const-string p1, "\u6cb3\u5357"

    goto :goto_0

    .line 407
    :sswitch_d
    const-string p1, "\u5409\u6797"

    goto :goto_0

    .line 409
    :sswitch_e
    const-string p1, "\u9ed1\u9f99\u6c5f"

    goto :goto_0

    .line 411
    :sswitch_f
    const-string p1, "\u5185\u8499\u53e4"

    goto :goto_0

    .line 413
    :sswitch_10
    const-string p1, "\u5c71\u4e1c"

    goto :goto_0

    .line 415
    :sswitch_11
    const-string p1, "\u5b89\u5fbd"

    goto :goto_0

    .line 417
    :sswitch_12
    const-string p1, "\u6d59\u6c5f"

    goto :goto_0

    .line 419
    :sswitch_13
    const-string p1, "\u798f\u5efa"

    goto :goto_0

    .line 421
    :sswitch_14
    const-string p1, "\u6e56\u5357"

    goto :goto_0

    .line 423
    :sswitch_15
    const-string p1, "\u5e7f\u897f"

    goto :goto_0

    .line 425
    :sswitch_16
    const-string p1, "\u6c5f\u897f"

    goto :goto_0

    .line 427
    :sswitch_17
    const-string p1, "\u8d35\u5dde"

    goto :goto_0

    .line 429
    :sswitch_18
    const-string p1, "\u4e91\u5357"

    goto :goto_0

    .line 431
    :sswitch_19
    const-string p1, "\u897f\u85cf"

    goto :goto_0

    .line 433
    :sswitch_1a
    const-string p1, "\u6d77\u5357"

    goto :goto_0

    .line 435
    :sswitch_1b
    const-string p1, "\u7518\u8083"

    goto :goto_0

    .line 437
    :sswitch_1c
    const-string p1, "\u5b81\u590f"

    goto :goto_0

    .line 439
    :sswitch_1d
    const-string p1, "\u9752\u6d77"

    goto :goto_0

    .line 441
    :sswitch_1e
    const-string p1, "\u65b0\u7586"

    goto :goto_0

    .line 446
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 450
    :sswitch_1f
    const-string p1, "QUAN_QIU_TONG"

    goto :goto_0

    .line 448
    :sswitch_20
    const-string p1, "SHEN_ZHOU_XING"

    goto :goto_0

    .line 452
    :sswitch_21
    const-string p1, "DONG_GAN"

    goto :goto_0

    .line 454
    :sswitch_22
    const-string p1, "UNICOM_2G"

    goto :goto_0

    .line 456
    :sswitch_23
    const-string p1, "UNICOM_3G"

    goto :goto_0

    .line 458
    :sswitch_24
    const-string p1, "CHINA_TELECOM"

    goto :goto_0

    .line 379
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x18 -> :sswitch_5
        0x19 -> :sswitch_6
        0x1b -> :sswitch_7
        0x1c -> :sswitch_8
        0x1d -> :sswitch_9
        0x137 -> :sswitch_a
        0x15f -> :sswitch_b
        0x173 -> :sswitch_c
        0x1af -> :sswitch_d
        0x1c3 -> :sswitch_e
        0x1d7 -> :sswitch_f
        0x213 -> :sswitch_10
        0x227 -> :sswitch_11
        0x23b -> :sswitch_12
        0x24f -> :sswitch_13
        0x2db -> :sswitch_14
        0x303 -> :sswitch_15
        0x317 -> :sswitch_16
        0x353 -> :sswitch_17
        0x367 -> :sswitch_18
        0x37b -> :sswitch_19
        0x382 -> :sswitch_1a
        0x3a3 -> :sswitch_1b
        0x3b7 -> :sswitch_1c
        0x3cb -> :sswitch_1d
        0x3df -> :sswitch_1e
    .end sparse-switch

    .line 446
    :sswitch_data_1
    .sparse-switch
        0x2710 -> :sswitch_1f
        0x4e20 -> :sswitch_21
        0x7530 -> :sswitch_20
        0xc350 -> :sswitch_22
        0xea60 -> :sswitch_24
        0x11170 -> :sswitch_23
    .end sparse-switch
.end method

.method public getConfig()Ltmsdk/bg/module/network/TrafficCorrectionConfig;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Ltmsdk/bg/module/network/i;->wj:Ltmsdk/bg/module/network/j;

    invoke-virtual {v0}, Ltmsdk/bg/module/network/j;->eH()Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getCorrectionResult(Ltmsdk/bg/module/network/TrafficCorrectionResult;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "result"
    .parameter "retNumber"
    .parameter "retBody"

    .prologue
    .line 197
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 198
    :cond_0
    const/4 v1, -0x6

    .line 205
    :goto_0
    return v1

    .line 202
    :cond_1
    new-instance v0, Ltmsdk/common/module/aresengine/SmsEntity;

    invoke-direct {v0}, Ltmsdk/common/module/aresengine/SmsEntity;-><init>()V

    .line 203
    .local v0, entity:Ltmsdk/common/module/aresengine/SmsEntity;
    iput-object p2, v0, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    .line 204
    iput-object p3, v0, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    .line 205
    invoke-direct {p0, p1, v0}, Ltmsdk/bg/module/network/i;->a(Ltmsdk/bg/module/network/TrafficCorrectionResult;Ltmsdk/common/module/aresengine/SmsEntity;)I

    move-result v1

    goto :goto_0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x2

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    iput-object p1, p0, Ltmsdk/bg/module/network/i;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Ltmsdk/bg/module/network/j;

    invoke-direct {v0}, Ltmsdk/bg/module/network/j;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/network/i;->wj:Ltmsdk/bg/module/network/j;

    .line 69
    const-class v0, Ltmsdkobf/lk;

    invoke-static {v0}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdkobf/lk;

    iput-object v0, p0, Ltmsdk/bg/module/network/i;->wk:Ltmsdkobf/lk;

    .line 70
    return-void
.end method

.method public setConfig(Ltmsdk/bg/module/network/TrafficCorrectionConfig;)I
    .locals 4
    .parameter "config"

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p1, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    iget-object v1, p1, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    iget-object v2, p1, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    iget-object v3, p1, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Ltmsdk/bg/module/network/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x6

    goto :goto_0
.end method

.method public startCorrection(Ljava/util/ArrayList;)I
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/bg/module/network/CorrectionDataInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/bg/module/network/CorrectionDataInfo;>;"
    if-nez p1, :cond_0

    .line 154
    const/4 v8, -0x6

    .line 181
    :goto_0
    return v8

    .line 157
    :cond_0
    iget-object v8, p0, Ltmsdk/bg/module/network/i;->wj:Ltmsdk/bg/module/network/j;

    sget-object v9, Ltmsdkobf/y;->ck:Ltmsdkobf/y;

    invoke-virtual {v9}, Ltmsdkobf/y;->value()I

    move-result v9

    invoke-virtual {v8, v9}, Ltmsdk/bg/module/network/j;->bi(I)Ljava/util/List;

    move-result-object v5

    .line 158
    .local v5, queryInfo:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/ba;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 160
    :cond_1
    const/16 v8, -0x68

    goto :goto_0

    .line 163
    :cond_2
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 164
    .local v7, yearFormat:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v8, "MM"

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, monthFormat:Ljava/text/SimpleDateFormat;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltmsdkobf/ba;

    .line 168
    .local v4, query:Ltmsdkobf/ba;
    invoke-virtual {v4}, Ltmsdkobf/ba;->r()Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, telNumber:Ljava/lang/String;
    invoke-virtual {v4}, Ltmsdkobf/ba;->s()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, message:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v8, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v6, :cond_3

    const-string v8, ""

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 172
    const-string v8, "[MONTH]"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "[YEAR]"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 173
    :cond_4
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 174
    .local v3, now:Ljava/util/Date;
    const-string v8, "[MONTH]"

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "[YEAR]"

    invoke-virtual {v7, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .end local v3           #now:Ljava/util/Date;
    :cond_5
    new-instance v8, Ltmsdk/bg/module/network/CorrectionDataInfo;

    invoke-direct {v8, v6, v1}, Ltmsdk/bg/module/network/CorrectionDataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    .end local v1           #message:Ljava/lang/String;
    .end local v4           #query:Ltmsdkobf/ba;
    .end local v6           #telNumber:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0
.end method
