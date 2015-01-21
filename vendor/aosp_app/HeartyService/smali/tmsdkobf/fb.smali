.class public final Ltmsdkobf/fb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static lB:Ltmsdkobf/fb;


# instance fields
.field private kQ:Landroid/content/Context;

.field private lA:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Ltmsdkobf/fb;->lB:Ltmsdkobf/fb;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[B)Ltmsdkobf/fd;
    .locals 7
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

    .prologue
    .line 287
    invoke-static {}, Ltmsdkobf/ep;->aK()Ltmsdkobf/ep;

    move-result-object v4

    .line 288
    new-instance v5, Ltmsdkobf/fd;

    invoke-direct {v5}, Ltmsdkobf/fd;-><init>()V

    .line 289
    invoke-virtual {v5, p1}, Ltmsdkobf/fd;->aF(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v5, p2}, Ltmsdkobf/fd;->aG(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v4}, Ltmsdkobf/ep;->aI()J

    move-result-wide v1

    add-long/2addr v1, p7

    invoke-virtual {v5, v1, v2}, Ltmsdkobf/fd;->i(J)V

    .line 294
    if-eqz p9, :cond_0

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2710

    if-le v1, v2, :cond_0

    .line 298
    :try_start_0
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, -0x2710

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p9

    .line 306
    :cond_0
    :goto_0
    if-eqz p10, :cond_2

    move-object/from16 v0, p10

    array-length v1, v0

    const/16 v2, 0x2710

    if-le v1, v2, :cond_2

    .line 310
    const/16 v1, 0x2710

    :try_start_1
    new-array v1, v1, [B

    .line 311
    array-length v2, v1

    add-int/lit8 v3, v2, -0x1

    move-object/from16 v0, p10

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v3, :cond_1

    if-ltz v2, :cond_1

    .line 314
    aget-byte v6, p10, v2

    aput-byte v6, v1, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 300
    :catch_0
    move-exception v1

    .line 302
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    move-object/from16 p10, v1

    .line 325
    :cond_2
    :goto_2
    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ltmsdkobf/fd;->aI(Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Ltmsdkobf/fd;->h([B)V

    .line 327
    invoke-virtual {v5, p3}, Ltmsdkobf/fd;->ay(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v5, p5}, Ltmsdkobf/fd;->ax(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v5, p4}, Ltmsdkobf/fd;->aw(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v5, p6}, Ltmsdkobf/fd;->az(Ljava/lang/String;)V

    .line 331
    const/high16 v1, -0x4080

    invoke-virtual {v5, v1}, Ltmsdkobf/fd;->a(F)V

    .line 332
    invoke-static {p0}, Ltmsdkobf/dz;->a(Landroid/content/Context;)Ltmsdkobf/dz;

    invoke-static {p0}, Ltmsdkobf/dz;->b(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ltmsdkobf/fd;->j(J)V

    .line 333
    invoke-static {p0}, Ltmsdkobf/dz;->a(Landroid/content/Context;)Ltmsdkobf/dz;

    move-result-object v1

    invoke-virtual {v1}, Ltmsdkobf/dz;->ag()J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ltmsdkobf/fd;->m(J)V

    .line 334
    invoke-static {p0}, Ltmsdkobf/dz;->a(Landroid/content/Context;)Ltmsdkobf/dz;

    invoke-static {}, Ltmsdkobf/dz;->af()J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ltmsdkobf/fd;->l(J)V

    .line 335
    invoke-virtual {v4}, Ltmsdkobf/ep;->ak()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ltmsdkobf/fd;->e(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v4}, Ltmsdkobf/ep;->ak()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ltmsdkobf/fd;->aH(Ljava/lang/String;)V

    .line 337
    return-object v5

    .line 319
    :catch_1
    move-exception v1

    .line 321
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/Throwable;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 482
    :goto_0
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 502
    :cond_0
    return-void

    .line 487
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 488
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 489
    if-eqz v1, :cond_2

    .line 491
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 493
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 497
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    const-string v0, "cause by:"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0
.end method

.method private a(Ltmsdkobf/fd;Ltmsdkobf/ev;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 451
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ltmsdkobf/ev;->aY()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltmsdkobf/fb;->kQ:Landroid/content/Context;

    invoke-static {v2}, Ltmsdkobf/en;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "#--------\ndate:%s\nstack:\n%s\n"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Ltmsdkobf/fd;->aI()J

    move-result-wide v7

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-virtual {p1}, Ltmsdkobf/fd;->aA()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 456
    iget-object v3, p0, Ltmsdkobf/fb;->kQ:Landroid/content/Context;

    const-string v4, "/euplog.txt"

    invoke-virtual {p2}, Ltmsdkobf/ev;->aZ()I

    move-result v5

    invoke-static {v3, v4, v2, v5}, Ltmsdkobf/fi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 465
    :goto_1
    return v0

    .line 455
    :cond_0
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm:ss"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 459
    :catch_0
    move-exception v2

    .line 461
    const-string v3, "rqdp{  save error} %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    move v0, v1

    .line 465
    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized Q()V
    .locals 2

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    const-string v0, "rqdp{ eup regist}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 51
    if-eq v0, p0, :cond_0

    .line 54
    iput-object v0, p0, Ltmsdkobf/fb;->lA:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 55
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized U()V
    .locals 2

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    const-string v0, "rqdp{ eup unregister}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 65
    if-ne v0, p0, :cond_0

    .line 68
    iget-object v0, p0, Ltmsdkobf/fb;->lA:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/fb;->lA:Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[BZ)Z
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    iget-object v1, p0, Ltmsdkobf/fb;->kQ:Landroid/content/Context;

    invoke-static {v1}, Ltmsdkobf/en;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 182
    const/4 v7, 0x0

    .line 183
    const/4 v4, 0x0

    .line 184
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 185
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 187
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 188
    const/4 v1, 0x0

    invoke-static {v3, p2, v1}, Ltmsdkobf/fb;->a(Ljava/util/ArrayList;Ljava/lang/Throwable;I)V

    .line 189
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 191
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 192
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 193
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 195
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v8, "\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 184
    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 185
    :cond_1
    const-string v5, ""

    goto :goto_1

    .line 197
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 198
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 199
    const-string v3, "rqdp{ stack:}%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v4, v8

    invoke-static {v3, v4}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v1

    .line 202
    :cond_3
    iget-object v1, p0, Ltmsdkobf/fb;->kQ:Landroid/content/Context;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    move-object v3, p1

    move-object v10, p3

    move-object/from16 v11, p4

    invoke-static/range {v1 .. v11}, Ltmsdkobf/fb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[B)Ltmsdkobf/fd;

    move-result-object v1

    .line 203
    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ltmsdkobf/fd;->c(Z)V

    .line 205
    invoke-virtual {p0, v1}, Ltmsdkobf/fb;->a(Ltmsdkobf/fd;)Z

    move-result v1

    return v1
.end method

.method public final a(Ltmsdkobf/fd;)Z
    .locals 14
    .parameter

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 220
    const-string v0, "bean == null "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    .line 224
    :cond_0
    invoke-static {}, Ltmsdkobf/fe;->bm()Ltmsdkobf/fe;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdkobf/fe;->bu()Ltmsdkobf/ev;

    move-result-object v13

    .line 225
    if-nez v13, :cond_1

    .line 227
    const-string v0, "no strategy!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {v13}, Ltmsdkobf/ev;->aV()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 234
    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_a

    .line 236
    const-string v0, "merge success return"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    const/4 v0, 0x1

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {p1}, Ltmsdkobf/fd;->aA()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltmsdkobf/er;->aA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v0, "rqdp{  md5 error!}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v4}, Ltmsdkobf/fd;->aE(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltmsdkobf/fd;->e(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltmsdkobf/fd;->aB(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltmsdkobf/fd;->av(I)V

    iget-object v0, p0, Ltmsdkobf/fb;->kQ:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "desc"

    const/4 v3, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    invoke-static/range {v0 .. v12}, Ltmsdkobf/fc;->a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIIIJJ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_4
    const-string v0, "rqdp{  new one ,no merged!}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/fd;

    invoke-virtual {v0}, Ltmsdkobf/fd;->bi()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ltmsdkobf/fd;->aB(I)V

    invoke-virtual {v0}, Ltmsdkobf/fd;->bh()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, ""

    invoke-virtual {v0, v1}, Ltmsdkobf/fd;->aD(Ljava/lang/String;)V

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltmsdkobf/fd;->bh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ltmsdkobf/fd;->aI()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/fd;->aD(Ljava/lang/String;)V

    iget-object v1, p0, Ltmsdkobf/fb;->kQ:Landroid/content/Context;

    const-string v2, "rqdp{  EUPDAO.insertOrUpdateEUP() start}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_7

    if-nez v0, :cond_9

    :cond_7
    const-string v1, "rqdp{  context == null || bean == null,pls check}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_8

    const-string v2, "rqdp{  eupMeg update success} %b , c:%d , at:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ltmsdkobf/fd;->bi()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Ltmsdkobf/fd;->bh()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ltmsdkobf/eq;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ltmsdkobf/fd;->bk()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ltmsdkobf/fd;->bk()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_8
    move v0, v1

    goto/16 :goto_1

    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v2}, Ltmsdkobf/fc;->b(Landroid/content/Context;Ljava/util/List;)Z

    move-result v1

    goto :goto_2

    .line 242
    :cond_a
    invoke-virtual {v13}, Ltmsdkobf/ev;->aT()I

    move-result v0

    invoke-virtual {p1}, Ltmsdkobf/fd;->ab()Z

    move-result v1

    iget-object v2, p0, Ltmsdkobf/fb;->kQ:Landroid/content/Context;

    invoke-static {v2}, Ltmsdkobf/fc;->j(Landroid/content/Context;)I

    move-result v2

    if-lt v2, v0, :cond_e

    if-nez v1, :cond_b

    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_f

    .line 244
    const-string v0, "can\'t add more eup!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 242
    :cond_b
    const-string v0, "rqdp{  max stored clean}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ltmsdkobf/fb;->kQ:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "asc"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    invoke-static/range {v0 .. v12}, Ltmsdkobf/fc;->a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIIIJJ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    iget-object v1, p0, Ltmsdkobf/fb;->kQ:Landroid/content/Context;

    invoke-static {v1, v0}, Ltmsdkobf/fc;->c(Landroid/content/Context;Ljava/util/List;)I

    move-result v0

    if-gtz v0, :cond_e

    :cond_c
    iget-object v0, p0, Ltmsdkobf/fb;->kQ:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "asc"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    invoke-static/range {v0 .. v12}, Ltmsdkobf/fc;->a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIIIJJ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, p0, Ltmsdkobf/fb;->kQ:Landroid/content/Context;

    invoke-static {v1, v0}, Ltmsdkobf/fc;->c(Landroid/content/Context;Ljava/util/List;)I

    move-result v0

    if-gtz v0, :cond_e

    :cond_d
    const/4 v0, 0x0

    goto :goto_3

    :cond_e
    const/4 v0, 0x1

    goto :goto_3

    .line 248
    :cond_f
    invoke-direct {p0, p1, v13}, Ltmsdkobf/fb;->a(Ltmsdkobf/fd;Ltmsdkobf/ev;)Z

    .line 250
    iget-object v0, p0, Ltmsdkobf/fb;->kQ:Landroid/content/Context;

    invoke-static {v0}, Ltmsdkobf/en;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 252
    const-string v0, "save log"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    invoke-virtual {v13}, Ltmsdkobf/ev;->aX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Ltmsdkobf/ev;->aW()I

    move-result v1

    invoke-static {v0, v1}, Ltmsdkobf/fg;->b(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ltmsdkobf/fd;->f([B)V

    .line 261
    :goto_4
    iget-object v0, p0, Ltmsdkobf/fb;->kQ:Landroid/content/Context;

    invoke-static {v0, p1}, Ltmsdkobf/fc;->a(Landroid/content/Context;Ltmsdkobf/fd;)Z

    move-result v0

    .line 262
    const-string v1, "store new eup pn:%s, isMe:%b , isNa:%b , res:%b "

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ltmsdkobf/fd;->bl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ltmsdkobf/fd;->aE()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Ltmsdkobf/fd;->aF()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ltmsdkobf/eq;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 257
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltmsdkobf/fd;->f([B)V

    goto :goto_4
.end method

.method public final aE()Z
    .locals 15

    .prologue
    .line 557
    invoke-static {}, Ltmsdkobf/er;->aQ()J

    move-result-wide v0

    .line 558
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 560
    const-string v0, "rqdp{  today fail?}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/32 v2, 0x2932e00

    sub-long/2addr v0, v2

    move-wide v13, v0

    .line 565
    :goto_0
    iget-object v0, p0, Ltmsdkobf/fb;->kQ:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "desc"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    invoke-static/range {v0 .. v12}, Ltmsdkobf/fc;->a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIIIJJ)Ljava/util/List;

    move-result-object v0

    .line 566
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 567
    const/4 v0, 0x1

    .line 575
    :goto_1
    return v0

    .line 570
    :cond_0
    iget-object v0, p0, Ltmsdkobf/fb;->kQ:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "desc"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const-wide/16 v9, -0x1

    move-wide v11, v13

    invoke-static/range {v0 .. v12}, Ltmsdkobf/fc;->a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIIIJJ)Ljava/util/List;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 572
    const/4 v0, 0x1

    goto :goto_1

    .line 575
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-wide v13, v0

    goto :goto_0
.end method

.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 85
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ltmsdkobf/fe;->bm()Ltmsdkobf/fe;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "rqdp{  instance == null}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    .line 86
    :goto_0
    if-eqz v7, :cond_0

    .line 90
    :try_start_1
    invoke-interface {v7, p1, p2}, Ltmsdkobf/et;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    :cond_0
    :goto_1
    if-eqz v7, :cond_6

    .line 107
    :try_start_2
    invoke-interface {v7}, Ltmsdkobf/et;->aR()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 117
    :goto_2
    :try_start_3
    invoke-interface {v7}, Ltmsdkobf/et;->aS()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    move-object v3, v0

    .line 126
    :goto_3
    if-nez p1, :cond_3

    :try_start_4
    const-string v1, ""

    .line 128
    :goto_4
    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ltmsdkobf/fb;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[BZ)Z

    move-result v0

    .line 129
    const-string v1, "rqdp{ handle eup result} %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 133
    if-eqz v7, :cond_4

    .line 137
    :try_start_5
    invoke-interface {v7, p1, p2}, Ltmsdkobf/et;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    move-result v0

    .line 146
    :goto_5
    if-eqz v0, :cond_1

    .line 148
    :try_start_6
    iget-object v0, p0, Ltmsdkobf/fb;->lA:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_5

    const-string v0, "rqdp{ syscrhandle!}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ltmsdkobf/fb;->lA:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 151
    :cond_1
    :goto_6
    monitor-exit p0

    return-void

    .line 85
    :cond_2
    :try_start_7
    invoke-virtual {v1}, Ltmsdkobf/fe;->bt()Ltmsdkobf/et;

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 94
    const-string v2, "rqdp{ your crash handle happen error} %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 109
    :catch_1
    move-exception v1

    .line 111
    :try_start_8
    const-string v2, "rqdp{ your crash handle extra data error} %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v0

    goto :goto_2

    .line 119
    :catch_2
    move-exception v1

    .line 121
    const-string v2, "rqdp{ your crash handle extra message error} %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-static {v2, v3}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v3, v0

    goto :goto_3

    .line 126
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 139
    :catch_3
    move-exception v0

    .line 141
    const-string v1, "rqdp{ your crash handle finish error} %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    move v0, v6

    goto :goto_5

    .line 148
    :cond_5
    const-string v0, "rqdp{ kill!}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    :cond_6
    move-object v4, v0

    move-object v3, v0

    goto/16 :goto_3
.end method
