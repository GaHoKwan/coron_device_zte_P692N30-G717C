.class public Ltmsdkobf/lu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static CX:Ltmsdkobf/lq;

.field public static path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/userlog/qqpimsecure/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltmsdkobf/lu;->path:Ljava/lang/String;

    .line 62
    new-instance v0, Ltmsdkobf/lq;

    invoke-direct {v0}, Ltmsdkobf/lq;-><init>()V

    sput-object v0, Ltmsdkobf/lu;->CX:Ltmsdkobf/lq;

    return-void
.end method

.method public static G(Z)V
    .locals 1
    .parameter "isOpen"

    .prologue
    .line 97
    if-eqz p0, :cond_0

    .line 98
    new-instance v0, Ltmsdkobf/lt;

    invoke-direct {v0}, Ltmsdkobf/lt;-><init>()V

    sput-object v0, Ltmsdkobf/lu;->CX:Ltmsdkobf/lq;

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v0, Ltmsdkobf/lq;

    invoke-direct {v0}, Ltmsdkobf/lq;-><init>()V

    sput-object v0, Ltmsdkobf/lu;->CX:Ltmsdkobf/lq;

    goto :goto_0
.end method

.method private static a([Ljava/io/File;)Ljava/io/File;
    .locals 5
    .parameter "files"

    .prologue
    .line 414
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_2

    .line 415
    :cond_0
    const/4 v2, 0x0

    .line 426
    :cond_1
    return-object v2

    .line 417
    :cond_2
    const/4 v4, 0x0

    aget-object v2, p0, v4

    .line 418
    .local v2, ret:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltmsdkobf/lu;->cS(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 419
    .local v1, min:Ljava/util/Date;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 420
    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltmsdkobf/lu;->cS(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 421
    .local v3, temp:Ljava/util/Date;
    invoke-virtual {v1, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 422
    move-object v1, v3

    .line 423
    aget-object v2, p0, v0

    .line 419
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs a(I[Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"
    .parameter "datas"

    .prologue
    .line 126
    sget-object v0, Ltmsdkobf/lu;->CX:Ltmsdkobf/lq;

    invoke-virtual {v0, p0, p1}, Ltmsdkobf/lq;->a(I[Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public static a(Ljava/util/Calendar;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 171
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 172
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 173
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 174
    return-void
.end method

.method public static b(Ljava/util/Date;Ljava/util/Date;)I
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    .line 305
    invoke-static {p0, p1}, Ltmsdkobf/lu;->c(Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v1

    .line 306
    .local v1, files:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 307
    :cond_0
    const/4 v5, -0x1

    .line 325
    :goto_0
    return v5

    .line 309
    :cond_1
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 310
    .local v4, uploadSucceedFiles:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 311
    .local v0, f:Ljava/io/File;
    new-instance v3, Ltmsdkobf/kz;

    sget-object v5, Ltmsdkobf/kz$a;->Bx:Ltmsdkobf/kz$a;

    invoke-direct {v3, v5}, Ltmsdkobf/kz;-><init>(Ltmsdkobf/kz$a;)V

    .line 312
    .local v3, reporter:Ltmsdkobf/kz;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ltmsdkobf/kz;->cv(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v3}, Ltmsdkobf/kz;->fV()I

    move-result v5

    if-nez v5, :cond_2

    .line 314
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 319
    .end local v0           #f:Ljava/io/File;
    .end local v3           #reporter:Ltmsdkobf/kz;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 320
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 322
    .end local v0           #f:Ljava/io/File;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 323
    const/4 v5, 0x0

    goto :goto_0

    .line 325
    :cond_5
    const/4 v5, -0x2

    goto :goto_0
.end method

.method private static b([Ljava/io/File;)Ljava/io/File;
    .locals 5
    .parameter "files"

    .prologue
    .line 429
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_2

    .line 430
    :cond_0
    const/4 v2, 0x0

    .line 441
    :cond_1
    return-object v2

    .line 432
    :cond_2
    const/4 v4, 0x0

    aget-object v2, p0, v4

    .line 433
    .local v2, ret:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltmsdkobf/lu;->cS(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 434
    .local v1, max:Ljava/util/Date;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 435
    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltmsdkobf/lu;->cS(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 436
    .local v3, temp:Ljava/util/Date;
    invoke-virtual {v1, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 437
    move-object v1, v3

    .line 438
    aget-object v2, p0, v0

    .line 434
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static c(Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 23
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    new-instance v5, Ljava/io/File;

    sget-object v21, Ltmsdkobf/lu;->path:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .local v5, dir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_1

    .line 353
    const/16 v16, 0x0

    .line 398
    :cond_0
    return-object v16

    .line 355
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 356
    .local v3, calendar:Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 357
    .local v9, files:[Ljava/io/File;
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    .line 360
    .local v16, ret:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-static {v9}, Ltmsdkobf/lu;->a([Ljava/io/File;)Ljava/io/File;

    move-result-object v14

    .line 361
    .local v14, oldestFile:Ljava/io/File;
    if-eqz v14, :cond_0

    .line 364
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ltmsdkobf/lu;->cS(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    .line 365
    .local v15, oldestFileDate:Ljava/util/Date;
    invoke-virtual {v3, v15}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 366
    const/16 v21, 0xb

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 367
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    .line 368
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 369
    move-object/from16 p0, v15

    .line 373
    :cond_2
    invoke-static {v9}, Ltmsdkobf/lu;->b([Ljava/io/File;)Ljava/io/File;

    move-result-object v11

    .line 374
    .local v11, lastestFile:Ljava/io/File;
    if-eqz v11, :cond_0

    .line 377
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ltmsdkobf/lu;->cS(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    .line 378
    .local v12, lastestFileDate:Ljava/util/Date;
    invoke-virtual {v3, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 379
    const/16 v21, 0xb

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 380
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    .line 381
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 382
    move-object/from16 p1, v12

    .line 385
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    .line 386
    .local v17, startLong:J
    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 387
    .local v6, endLong:J
    const/4 v4, 0x0

    .line 388
    .local v4, date:Ljava/util/Date;
    const-wide/16 v19, -0x1

    .line 389
    .local v19, time:J
    move-object v2, v9

    .local v2, arr$:[Ljava/io/File;
    array-length v13, v2

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v13, :cond_0

    aget-object v8, v2, v10

    .line 390
    .local v8, f:Ljava/io/File;
    invoke-static {v8}, Ltmsdkobf/lu;->j(Ljava/io/File;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 391
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ltmsdkobf/lu;->cS(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 392
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    .line 393
    cmp-long v21, v19, v17

    if-ltz v21, :cond_4

    cmp-long v21, v19, v6

    if-gtz v21, :cond_4

    .line 394
    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method private static cR(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter "str"

    .prologue
    .line 237
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd-HH"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 243
    :goto_0
    return-object v2

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/text/ParseException;
    const-string v2, "UserLog"

    invoke-static {v2, v0}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cS(Ljava/lang/String;)Ljava/util/Date;
    .locals 8
    .parameter "fileName"

    .prologue
    .line 444
    const/4 v5, -0x1

    .line 445
    .local v5, startIndex:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_0

    .line 446
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5f

    if-ne v6, v7, :cond_2

    .line 447
    move v5, v4

    .line 451
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 452
    .local v3, endIndex:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    :goto_1
    if-ltz v4, :cond_1

    .line 453
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_3

    .line 454
    move v3, v4

    .line 458
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd-HH"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 459
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, date:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 465
    :goto_2
    return-object v6

    .line 445
    .end local v0           #date:Ljava/lang/String;
    .end local v1           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v3           #endIndex:I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 452
    .restart local v3       #endIndex:I
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 462
    .restart local v0       #date:Ljava/lang/String;
    .restart local v1       #dateFormat:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v2

    .line 463
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 465
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private static cg(I)Ljava/lang/String;
    .locals 6
    .parameter "pid"

    .prologue
    .line 221
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 222
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 224
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 225
    .local v1, appProcessInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v1, :cond_1

    .line 226
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 227
    .local v3, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p0, :cond_0

    .line 228
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 233
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v1           #appProcessInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static gJ()V
    .locals 14

    .prologue
    .line 257
    new-instance v3, Ljava/io/File;

    sget-object v12, Ltmsdkobf/lu;->path:Ljava/lang/String;

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v3, dir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 259
    .local v5, files:[Ljava/io/File;
    if-nez v5, :cond_1

    .line 274
    :cond_0
    return-void

    .line 262
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v12, "yyyy-MM-dd-HH"

    invoke-direct {v1, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 263
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, dateStr:Ljava/lang/String;
    invoke-static {v2}, Ltmsdkobf/lu;->cR(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 267
    .local v8, now:Ljava/util/Date;
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 268
    .local v9, nowLong:J
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v4, v0, v6

    .line 269
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ltmsdkobf/lu;->cS(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 270
    .local v11, t:Ljava/util/Date;
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    cmp-long v12, v12, v9

    if-lez v12, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 271
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 268
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ltmsdkobf/lu;->cg(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/io/File;)Z
    .locals 5
    .parameter "f"

    .prologue
    const/4 v2, 0x0

    .line 406
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, name:Ljava/lang/String;
    const-string v3, "ul"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 408
    .local v0, index:I
    if-gez v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v2

    :cond_1
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static x(J)J
    .locals 3
    .parameter "now"

    .prologue
    .line 182
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 183
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 184
    invoke-static {v0}, Ltmsdkobf/lu;->a(Ljava/util/Calendar;)V

    .line 186
    const/16 v1, 0xe

    const v2, 0x36ee80

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 187
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static y(J)J
    .locals 3
    .parameter "now"

    .prologue
    .line 195
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 196
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 197
    invoke-static {v0}, Ltmsdkobf/lu;->a(Ljava/util/Calendar;)V

    .line 199
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static z(J)Ljava/util/Date;
    .locals 5
    .parameter "now"

    .prologue
    .line 300
    invoke-static {p0, p1}, Ltmsdkobf/lu;->y(J)J

    move-result-wide v0

    .line 301
    .local v0, ret:J
    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x1

    sub-long v3, v0, v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method
