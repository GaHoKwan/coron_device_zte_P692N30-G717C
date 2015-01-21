.class public final Ltmsdkobf/fc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;JJ)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 77
    const-string v0, "rqdp{  EUPDAO.deleteEup() start}"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    if-nez p0, :cond_0

    .line 81
    const-string v0, "rqdp{  deleteEup() context is null arg}"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    const/4 v0, -0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Ltmsdkobf/eb;->a(Landroid/content/Context;[IJJ)I

    move-result v0

    goto :goto_0

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIIIJJ)Ljava/util/List;
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IIIIJJ)",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/fd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    const-string v1, "rqdp{  EUPDAO.queryEupRecent() start}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v1, p11, v1

    if-lez v1, :cond_0

    const-wide/16 v1, -0x1

    cmp-long v1, v1, p11

    if-gtz v1, :cond_2

    .line 180
    :cond_0
    const-string v1, "asc"

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    .line 182
    :goto_0
    const/4 v2, 0x0

    .line 183
    const/4 v1, 0x2

    move/from16 v0, p3

    if-ne v0, v1, :cond_4

    .line 185
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x2

    aput v3, v2, v1

    .line 200
    :goto_1
    const/4 v3, -0x1

    const-wide/16 v5, -0x1

    const/4 v10, -0x1

    const-wide/16 v13, -0x1

    move-object/from16 v1, p0

    move/from16 v7, p1

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    move-wide/from16 v15, p11

    invoke-static/range {v1 .. v16}, Ltmsdkobf/eb;->a(Landroid/content/Context;[IIIJILjava/lang/String;IIIIJJ)Ljava/util/List;

    move-result-object v4

    .line 202
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_7

    .line 203
    :cond_1
    const/4 v1, 0x0

    .line 253
    :goto_2
    return-object v1

    .line 176
    :cond_2
    const-string v1, "rqdp{  context == null || limitNum == 0 || (timeEnd > 0 && timeStart > timeEnd) || (maxCount > 0 && miniCount > maxCount ,pls check}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    const/4 v1, 0x0

    goto :goto_2

    .line 180
    :cond_3
    const/4 v4, 0x2

    goto :goto_0

    .line 187
    :cond_4
    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_5

    .line 189
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v3, v2, v1

    goto :goto_1

    .line 191
    :cond_5
    if-gez p3, :cond_6

    .line 193
    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    goto :goto_1

    .line 197
    :cond_6
    const-string v1, "rqdp{  queryEupRecent() seletedRecordType unaccepted}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 205
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 209
    :cond_8
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 212
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ltmsdkobf/ea;

    .line 215
    :try_start_0
    invoke-virtual {v2}, Ltmsdkobf/ea;->ai()[B

    move-result-object v1

    invoke-static {v1}, Ltmsdkobf/er;->g([B)Ljava/lang/Object;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_8

    const-class v6, Ltmsdkobf/fd;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 219
    const-class v6, Ltmsdkobf/fd;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/fd;

    .line 220
    invoke-virtual {v2}, Ltmsdkobf/ea;->X()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ltmsdkobf/fd;->h(J)V

    .line 221
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 228
    :catch_0
    move-exception v1

    .line 230
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    const-string v1, "rqdp{  query have error!}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 236
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rqdp{  there are error datas ,should be remove }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/Long;

    .line 243
    const/4 v1, 0x0

    move v2, v1

    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_a

    .line 245
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/ea;

    invoke-virtual {v1}, Ltmsdkobf/ea;->X()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v2

    .line 243
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    .line 248
    :cond_a
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Ltmsdkobf/eb;->a(Landroid/content/Context;[Ljava/lang/Long;)I

    .line 251
    :cond_b
    const-string v1, "rqdp{  EUPDAO.queryEupRecent() end}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    .line 253
    goto/16 :goto_2

    .line 193
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(Landroid/content/Context;Ltmsdkobf/fd;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 29
    const-string v0, "rqdp{  EUPDAO.insertEUP() start}"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 33
    :cond_0
    const-string v0, "rqdp{  EUPDAO.insertEUP() have null args}"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v7

    .line 56
    :goto_0
    return v0

    .line 39
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ltmsdkobf/fd;->ab()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v6

    .line 40
    :goto_1
    new-instance v0, Ltmsdkobf/ea;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ltmsdkobf/fd;->aI()J

    move-result-wide v3

    invoke-static {p1}, Ltmsdkobf/er;->a(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ltmsdkobf/ea;-><init>(IIJ[B)V

    .line 41
    invoke-virtual {p1}, Ltmsdkobf/fd;->bg()I

    move-result v1

    invoke-virtual {v0, v1}, Ltmsdkobf/ea;->aA(I)Ltmsdkobf/ea;

    .line 42
    invoke-virtual {p1}, Ltmsdkobf/fd;->bi()I

    move-result v1

    invoke-virtual {v0, v1}, Ltmsdkobf/ea;->az(I)Ltmsdkobf/ea;

    .line 43
    invoke-virtual {p1}, Ltmsdkobf/fd;->bj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/ea;->av(Ljava/lang/String;)Ltmsdkobf/ea;

    .line 44
    invoke-static {p0, v0}, Ltmsdkobf/eb;->a(Landroid/content/Context;Ltmsdkobf/ea;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    invoke-virtual {v0}, Ltmsdkobf/ea;->X()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/fd;->h(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    const-string v0, "rqdp{  EUPDAO.insertEUP() end}"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    goto :goto_0

    .line 39
    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    .line 49
    :cond_3
    const-string v0, "rqdp{  EUPDAO.insertEUP() end}"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v7

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 54
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    const-string v0, "rqdp{  insert fail!}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    const-string v0, "rqdp{  EUPDAO.insertEUP() end}"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "rqdp{  EUPDAO.insertEUP() end}"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;)Z
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/fd;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 274
    const-string v1, "rqdp{  EUPDAO.insertOrUpdateEupList() start}"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 278
    :cond_0
    const-string v1, "rqdp{  context == null ||| list == null || list.size() <= 0,pls check}"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v8

    .line 307
    :goto_0
    return v1

    .line 284
    :cond_1
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 285
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ltmsdkobf/fd;

    move-object v7, v0

    .line 287
    invoke-virtual {v7}, Ltmsdkobf/fd;->ab()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 289
    :goto_2
    new-instance v1, Ltmsdkobf/ea;

    const/4 v3, 0x0

    invoke-virtual {v7}, Ltmsdkobf/fd;->aI()J

    move-result-wide v4

    invoke-static {v7}, Ltmsdkobf/er;->a(Ljava/lang/Object;)[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Ltmsdkobf/ea;-><init>(IIJ[B)V

    .line 290
    invoke-virtual {v7}, Ltmsdkobf/fd;->bg()I

    move-result v2

    invoke-virtual {v1, v2}, Ltmsdkobf/ea;->aA(I)Ltmsdkobf/ea;

    .line 291
    invoke-virtual {v7}, Ltmsdkobf/fd;->bi()I

    move-result v2

    invoke-virtual {v1, v2}, Ltmsdkobf/ea;->az(I)Ltmsdkobf/ea;

    .line 292
    invoke-virtual {v7}, Ltmsdkobf/fd;->bj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltmsdkobf/ea;->av(Ljava/lang/String;)Ltmsdkobf/ea;

    .line 293
    invoke-virtual {v7}, Ltmsdkobf/fd;->X()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ltmsdkobf/ea;->e(J)Ltmsdkobf/ea;

    .line 294
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 299
    :catch_0
    move-exception v1

    .line 301
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 302
    const-string v1, "rqdp{  insert fail!}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    const-string v1, "rqdp{  EUPDAO.insertOrUpdateEupList() end}"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v8

    goto :goto_0

    .line 287
    :cond_2
    const/4 v2, 0x2

    goto :goto_2

    .line 297
    :cond_3
    :try_start_2
    invoke-static {p0, v9}, Ltmsdkobf/eb;->b(Landroid/content/Context;Ljava/util/List;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 307
    const-string v2, "rqdp{  EUPDAO.insertOrUpdateEupList() end}"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v1

    const-string v2, "rqdp{  EUPDAO.insertOrUpdateEupList() end}"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static c(Landroid/content/Context;Ljava/util/List;)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/fd;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 93
    const-string v1, "rqdp{  EUPDAO.deleteEupList() start}"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    if-nez p0, :cond_1

    .line 97
    const-string v1, "rqdp{  deleteEupList() have null args!}"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    const/4 v0, -0x1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 104
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Long;

    move v1, v0

    .line 106
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 108
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/fd;

    invoke-virtual {v0}, Ltmsdkobf/fd;->X()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    .line 106
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 111
    :cond_2
    invoke-static {p0, v2}, Ltmsdkobf/eb;->a(Landroid/content/Context;[Ljava/lang/Long;)I

    move-result v0

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)I
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 134
    const-string v0, "rqdp{  EUPDAO.querySum() start}"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    if-nez p0, :cond_0

    .line 138
    const-string v0, "rqdp{  querySum() context is null arg}"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    const/4 v0, -0x1

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const-wide/16 v2, -0x1

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Ltmsdkobf/eb;->a(Landroid/content/Context;[IJJLjava/lang/String;)I

    move-result v0

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method
