.class public final Lkx;
.super Lld;
.source "SourceFile"


# static fields
.field private static final a:Ljava/text/DateFormat;

.field private static final a:[I

.field private static final b:Ljava/text/DateFormat;


# instance fields
.field a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkx;->a:Ljava/text/DateFormat;

    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkx;->b:Ljava/text/DateFormat;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lkx;->a:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x98t 0x3t 0xbt 0x7ft
        0x9at 0x3t 0xbt 0x7ft
    .end array-data
.end method

.method constructor <init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Lah;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lld;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Lah;)V

    .line 44
    iput-object p1, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    .line 45
    iput-object p3, p0, Lkx;->a:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0xf

    .line 395
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 398
    sget-object v1, Lkx;->a:Ljava/text/DateFormat;

    monitor-enter v1

    .line 399
    :try_start_0
    sget-object v0, Lkx;->a:Ljava/text/DateFormat;

    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 400
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 423
    :goto_0
    return-object v0

    .line 400
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 409
    :cond_0
    sget-object v1, Lkx;->b:Ljava/text/DateFormat;

    monitor-enter v1

    .line 410
    :try_start_2
    sget-object v0, Lkx;->b:Ljava/text/DateFormat;

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 412
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 413
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 414
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_1

    .line 415
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 416
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v3

    .line 418
    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 423
    :cond_1
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 412
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private f()Ljava/lang/CharSequence;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const v9, 0x7f0b038d

    const/4 v3, 0x0

    .line 288
    invoke-virtual {p0}, Lkx;->a()Lah;

    move-result-object v0

    check-cast v0, Lw;

    .line 289
    if-nez v0, :cond_0

    .line 290
    const-string v0, ""

    .line 364
    :goto_0
    return-object v0

    .line 291
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v5, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 292
    const-string v1, ""

    .line 293
    invoke-virtual {v0}, Lw;->a()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 294
    invoke-virtual {v0}, Lw;->a()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_1

    aget-object v4, v6, v2

    .line 295
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 294
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v4

    goto :goto_1

    .line 299
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v6, 0x7f0b0383

    invoke-virtual {v4, v6}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 301
    :cond_2
    invoke-virtual {v0}, Lw;->c()Ljava/lang/String;

    move-result-object v1

    .line 302
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v6, 0x7f0b0387

    invoke-virtual {v4, v6}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 305
    :cond_3
    invoke-virtual {v0}, Lw;->f()Ljava/lang/String;

    move-result-object v1

    .line 306
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v6, 0x7f0b0388

    invoke-virtual {v4, v6}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 309
    :cond_4
    invoke-virtual {v0}, Lw;->b()[Ljava/lang/String;

    move-result-object v6

    .line 310
    const-string v1, ""

    .line 311
    if-eqz v6, :cond_5

    .line 312
    array-length v7, v6

    move v2, v3

    :goto_2
    if-ge v2, v7, :cond_5

    aget-object v4, v6, v2

    .line 313
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 312
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v4

    goto :goto_2

    .line 316
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v6, 0x7f0b0386

    invoke-virtual {v4, v6}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 319
    :cond_6
    const-string v1, ""

    .line 320
    invoke-virtual {v0}, Lw;->c()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 321
    invoke-virtual {v0}, Lw;->c()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v2, v3

    :goto_3
    if-ge v2, v7, :cond_7

    aget-object v4, v6, v2

    .line 322
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 321
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v4

    goto :goto_3

    .line 326
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v6, 0x7f0b0385

    invoke-virtual {v4, v6}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 329
    :cond_8
    const-string v1, ""

    .line 330
    invoke-virtual {v0}, Lw;->d()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 331
    invoke-virtual {v0}, Lw;->d()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v2, v3

    :goto_4
    if-ge v2, v7, :cond_9

    aget-object v4, v6, v2

    .line 332
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 331
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v4

    goto :goto_4

    .line 335
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v6, 0x7f0b0384

    invoke-virtual {v4, v6}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 339
    :cond_a
    invoke-virtual {v0}, Lw;->d()Ljava/lang/String;

    move-result-object v1

    .line 340
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v6, 0x7f0b0389

    invoke-virtual {v4, v6}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 344
    :cond_b
    invoke-virtual {v0}, Lw;->e()Ljava/lang/String;

    move-result-object v1

    .line 345
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v6, 0x7f0b038a

    invoke-virtual {v4, v6}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 347
    :cond_c
    invoke-virtual {v0}, Lw;->a()Ljava/lang/String;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    .line 349
    const-string v1, "QQ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 350
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 351
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 353
    :cond_d
    const-string v1, "QQ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v3, 0x7f0b038b

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 364
    :cond_e
    :goto_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 355
    :cond_f
    const-string v1, "MSN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 356
    const-string v1, "MSN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v3, 0x7f0b038c

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    goto :goto_5

    .line 358
    :cond_10
    iget-object v1, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v1, v9}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 359
    iget-object v1, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v1, v9}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v2, v9}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    goto :goto_5
.end method

.method private g()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const v5, 0x7f0b038f

    .line 368
    invoke-virtual {p0}, Lkx;->a()Lah;

    move-result-object v0

    check-cast v0, Lz;

    .line 369
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 370
    invoke-virtual {v0}, Lz;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v4, 0x7f0b038e

    invoke-virtual {v3, v4}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lz;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 372
    :cond_0
    invoke-virtual {v0}, Lz;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v3, v5}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lz;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkx;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 377
    :cond_1
    invoke-virtual {v0}, Lz;->c()Ljava/lang/String;

    move-result-object v1

    .line 378
    if-nez v1, :cond_2

    .line 379
    invoke-virtual {v0}, Lz;->b()Ljava/lang/String;

    move-result-object v1

    .line 381
    :cond_2
    if-eqz v1, :cond_3

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v4, v5}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v2}, Lkx;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 385
    :cond_3
    invoke-virtual {v0}, Lz;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v4, 0x7f0b0390

    invoke-virtual {v3, v4}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lz;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 387
    :cond_4
    invoke-virtual {v0}, Lz;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v4, 0x7f0b0391

    invoke-virtual {v3, v4}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lz;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 389
    :cond_5
    invoke-virtual {v0}, Lz;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v4, 0x7f0b0392

    invoke-virtual {v3, v4}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lz;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 391
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 211
    const-string v0, "CONTACT_TYPE"

    iget-object v1, p0, Lkx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0}, Lkx;->f()Ljava/lang/CharSequence;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    .line 213
    :cond_0
    const-string v0, "EMAIL_TYPE"

    iget-object v1, p0, Lkx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p0}, Lkx;->c()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_1
    const-string v0, "WIFI_TYPE"

    iget-object v1, p0, Lkx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {p0}, Lkx;->b()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_2
    const-string v0, "TEL_TYPE"

    iget-object v1, p0, Lkx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    invoke-virtual {p0}, Lkx;->e()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_3
    const-string v0, "SMS_TYPE"

    iget-object v1, p0, Lkx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    invoke-virtual {p0}, Lkx;->d()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_4
    const-string v0, "CALENDER_TYPE"

    iget-object v1, p0, Lkx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 222
    invoke-direct {p0}, Lkx;->g()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_5
    invoke-super {p0}, Lld;->a()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-virtual {p0}, Lkx;->a()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->g()Ljava/lang/String;

    move-result-object v1

    .line 66
    sput-boolean v4, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Z

    .line 68
    const-string v0, "CONTACT_TYPE"

    iget-object v2, p0, Lkx;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {p0}, Lkx;->a()Lah;

    move-result-object v0

    check-cast v0, Lw;

    .line 70
    invoke-virtual {v0}, Lw;->d()[Ljava/lang/String;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    :cond_0
    const/4 v5, 0x0

    .line 73
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 188
    :cond_1
    :goto_1
    return-void

    .line 71
    :cond_2
    aget-object v5, v1, v4

    goto :goto_0

    .line 75
    :pswitch_0
    invoke-virtual {p0}, Lkx;->a()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {p0}, Lkx;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aS:I

    goto :goto_1

    .line 81
    :pswitch_1
    invoke-virtual {v0}, Lw;->a()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lw;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lw;->c()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lw;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lw;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lw;->b()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lkx;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aU:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aU:I

    goto :goto_1

    .line 90
    :cond_3
    const-string v0, "EMAIL_TYPE"

    iget-object v2, p0, Lkx;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    invoke-virtual {p0}, Lkx;->a()Lah;

    move-result-object v0

    check-cast v0, Laa;

    .line 92
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 94
    :pswitch_2
    invoke-virtual {p0}, Lkx;->a()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {p0}, Lkx;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aS:I

    goto/16 :goto_1

    .line 100
    :pswitch_3
    invoke-virtual {v0}, Laa;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Laa;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Laa;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Laa;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lkx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 105
    :cond_4
    const-string v0, "WIFI_TYPE"

    iget-object v2, p0, Lkx;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    invoke-virtual {p0}, Lkx;->a()Lah;

    move-result-object v0

    check-cast v0, Lbb;

    .line 107
    packed-switch p1, :pswitch_data_2

    goto/16 :goto_1

    .line 109
    :pswitch_4
    invoke-virtual {p0}, Lkx;->a()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {p0}, Lkx;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aS:I

    goto/16 :goto_1

    .line 115
    :pswitch_5
    new-instance v1, Lmn;

    iget-object v2, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-direct {v1, v2, v0}, Lmn;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Lbb;)V

    invoke-virtual {v1}, Lmn;->a()V

    goto/16 :goto_1

    .line 118
    :cond_5
    const-string v0, "TEL_TYPE"

    iget-object v2, p0, Lkx;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    invoke-virtual {p0}, Lkx;->a()Lah;

    move-result-object v0

    check-cast v0, Lap;

    .line 120
    packed-switch p1, :pswitch_data_3

    goto/16 :goto_1

    .line 122
    :pswitch_6
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aS:I

    goto/16 :goto_1

    .line 126
    :pswitch_7
    invoke-virtual {v0}, Lap;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkx;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 129
    :cond_6
    const-string v0, "SMS_TYPE"

    iget-object v2, p0, Lkx;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 130
    invoke-virtual {p0}, Lkx;->a()Lah;

    move-result-object v0

    check-cast v0, Lan;

    .line 131
    packed-switch p1, :pswitch_data_4

    goto/16 :goto_1

    .line 133
    :pswitch_8
    invoke-virtual {p0}, Lkx;->a()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {p0}, Lkx;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aS:I

    goto/16 :goto_1

    .line 139
    :pswitch_9
    invoke-virtual {v0}, Lan;->a()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0}, Lan;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lkx;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 142
    :cond_7
    const-string v0, "CALENDER_TYPE"

    iget-object v2, p0, Lkx;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 143
    invoke-virtual {p0}, Lkx;->a()Lah;

    move-result-object v0

    check-cast v0, Lz;

    .line 144
    packed-switch p1, :pswitch_data_5

    goto/16 :goto_1

    .line 146
    :pswitch_a
    invoke-virtual {p0}, Lkx;->a()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {p0}, Lkx;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aS:I

    goto/16 :goto_1

    .line 152
    :pswitch_b
    invoke-virtual {v0}, Lz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lz;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lz;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lz;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lz;->f()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lkx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 158
    :cond_8
    const-string v0, "PRODUCT_TYPE"

    iget-object v2, p0, Lkx;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 159
    sput-boolean v4, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Z

    .line 160
    packed-switch p1, :pswitch_data_6

    goto/16 :goto_1

    .line 162
    :pswitch_c
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aS:I

    goto/16 :goto_1

    .line 166
    :pswitch_d
    invoke-virtual {p0, v1}, Lkx;->b(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dH:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dH:I

    goto/16 :goto_1

    .line 171
    :pswitch_e
    invoke-virtual {p0, v1}, Lkx;->c(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aV:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aV:I

    goto/16 :goto_1

    .line 176
    :cond_9
    packed-switch p1, :pswitch_data_7

    goto/16 :goto_1

    .line 178
    :pswitch_f
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aS:I

    goto/16 :goto_1

    .line 182
    :pswitch_10
    invoke-virtual {p0, v1}, Lkx;->b(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aT:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aT:I

    goto/16 :goto_1

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 92
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 107
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 120
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 131
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 144
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 160
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 176
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 229
    invoke-virtual {p0}, Lkx;->a()Lah;

    move-result-object v0

    check-cast v0, Lbb;

    .line 230
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 231
    iget-object v2, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v3, 0x7f0b03b2

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbb;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 235
    iget-object v2, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v3, 0x7f0b03b3

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 242
    invoke-virtual {p0}, Lkx;->a()Lah;

    move-result-object v0

    check-cast v0, Laa;

    .line 243
    invoke-virtual {v0}, Laa;->d()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {v0}, Laa;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Laa;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 245
    invoke-virtual {v0}, Laa;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 250
    invoke-virtual {v0}, Laa;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Laa;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 251
    invoke-virtual {v0}, Laa;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Laa;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v5, 0x7f0b03c0

    invoke-virtual {v4, v5}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Laa;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 253
    :cond_1
    invoke-virtual {v0}, Laa;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Laa;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v5, 0x7f0b03bf

    invoke-virtual {v4, v5}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 255
    :cond_2
    invoke-virtual {v0}, Laa;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Laa;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v4, 0x7f0b03c1

    invoke-virtual {v3, v4}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Laa;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 257
    :cond_3
    invoke-virtual {v0}, Laa;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Laa;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 258
    invoke-virtual {v0}, Laa;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 262
    :cond_4
    :goto_0
    return-object v2

    .line 260
    :cond_5
    invoke-static {v1, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    goto :goto_0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 266
    invoke-virtual {p0}, Lkx;->a()Lah;

    move-result-object v0

    check-cast v0, Lan;

    .line 267
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 268
    invoke-virtual {v0}, Lan;->a()[Ljava/lang/String;

    move-result-object v4

    .line 269
    const-string v2, ""

    .line 270
    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v4, v1

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v5, 0x7f0b03bf

    invoke-virtual {v4, v5}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 275
    :cond_1
    invoke-virtual {v0}, Lan;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lan;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lkx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v4, 0x7f0b03c2

    invoke-virtual {v2, v4}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lan;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 277
    :cond_2
    invoke-virtual {v0}, Lan;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lah;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 278
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lkx;->a()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->g()Ljava/lang/String;

    move-result-object v0

    .line 283
    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
