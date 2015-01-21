.class public final Ltmsdkobf/ex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static lq:Ltmsdkobf/ex;


# instance fields
.field private kQ:Landroid/content/Context;

.field private final kT:Ljava/lang/String;

.field private kX:Z

.field private kk:I

.field private ks:J

.field private kx:I

.field private lr:Ltmsdkobf/eo;

.field private ls:Ltmsdkobf/fn;

.field private lt:Z

.field private lu:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Ltmsdkobf/eo;Ltmsdkobf/fn;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v2, p0, Ltmsdkobf/ex;->kX:Z

    .line 37
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Ltmsdkobf/ex;->ks:J

    .line 38
    const/16 v0, 0xa

    iput v0, p0, Ltmsdkobf/ex;->kk:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdkobf/ex;->lt:Z

    .line 41
    iput v2, p0, Ltmsdkobf/ex;->kx:I

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltmsdkobf/ex;->lu:J

    .line 46
    iput-object p1, p0, Ltmsdkobf/ex;->kQ:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Ltmsdkobf/ex;->lr:Ltmsdkobf/eo;

    .line 48
    iput-object p3, p0, Ltmsdkobf/ex;->ls:Ltmsdkobf/fn;

    .line 49
    iget-object v0, p0, Ltmsdkobf/ex;->kQ:Landroid/content/Context;

    invoke-static {v0}, Ltmsdkobf/en;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/ex;->kT:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Ltmsdkobf/ex;->ao()J

    move-result-wide v0

    iput-wide v0, p0, Ltmsdkobf/ex;->lu:J

    .line 51
    return-void
.end method

.method static synthetic a(Ltmsdkobf/ex;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Ltmsdkobf/ex;->kQ:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ltmsdkobf/eo;Ltmsdkobf/fn;)Ltmsdkobf/ex;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    const-class v1, Ltmsdkobf/ex;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/ex;->lq:Ltmsdkobf/ex;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ltmsdkobf/ex;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1, p2}, Ltmsdkobf/ex;-><init>(Landroid/content/Context;Ltmsdkobf/eo;Ltmsdkobf/fn;)V

    sput-object v0, Ltmsdkobf/ex;->lq:Ltmsdkobf/ex;

    .line 66
    :cond_0
    sget-object v0, Ltmsdkobf/ex;->lq:Ltmsdkobf/ex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized aB(I)V
    .locals 1
    .parameter

    .prologue
    .line 363
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ltmsdkobf/ex;->kx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit p0

    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized aC(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/ex;->kQ:Landroid/content/Context;

    invoke-static {v0, p1}, Ltmsdkobf/ez;->d(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized aN()Z
    .locals 5

    .prologue
    .line 210
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ltmsdkobf/ex;->aw(I)Z

    move-result v0

    .line 211
    const-string v1, "rqdp{ launch state record %b}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return v0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized am()I
    .locals 1

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ltmsdkobf/ex;->kx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized aw(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 236
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ltmsdkobf/ep;->aK()Ltmsdkobf/ep;

    move-result-object v2

    .line 237
    if-eqz v2, :cond_0

    .line 239
    new-instance v3, Ltmsdkobf/ey;

    invoke-direct {v3}, Ltmsdkobf/ey;-><init>()V

    .line 240
    invoke-virtual {v3, p1}, Ltmsdkobf/ey;->av(I)V

    .line 241
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ltmsdkobf/ey;->h(J)V

    .line 242
    iget-object v4, p0, Ltmsdkobf/ex;->kT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ltmsdkobf/ey;->aw(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v2}, Ltmsdkobf/ep;->ak()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ltmsdkobf/ey;->ax(Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Ltmsdkobf/ex;->kQ:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ltmsdkobf/ey;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Ltmsdkobf/ez;->a(Landroid/content/Context;[Ltmsdkobf/ey;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_0

    .line 250
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized bb()Ltmsdkobf/ex;
    .locals 2

    .prologue
    .line 76
    const-class v0, Ltmsdkobf/ex;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ltmsdkobf/ex;->lq:Ltmsdkobf/ex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized bc()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 189
    monitor-enter p0

    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, v1}, Ltmsdkobf/ex;->aw(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    const-string v1, "rqdp{ resume record fail}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :goto_0
    monitor-exit p0

    return v0

    .line 194
    :cond_0
    :try_start_1
    const-string v0, "rqdp{ resume state record true}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Ltmsdkobf/ex;->kT:Ljava/lang/String;

    invoke-direct {p0, v0}, Ltmsdkobf/ex;->aC(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Ltmsdkobf/ex;->kk:I

    if-lt v0, v1, :cond_1

    .line 197
    const-string v0, "rqdp{ state max upload}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    const/4 v0, 0x2

    invoke-virtual {p0}, Ltmsdkobf/ex;->bd()Ltmsdkobf/eo;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ltmsdkobf/ex$2;

    invoke-direct {v2, p0, v0}, Ltmsdkobf/ex$2;-><init>(Ltmsdkobf/ex;B)V

    invoke-virtual {v1, v2}, Ltmsdkobf/eo;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized ab()Z
    .locals 5

    .prologue
    .line 222
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-direct {p0, v0}, Ltmsdkobf/ex;->aw(I)Z

    move-result v0

    .line 223
    const-string v1, "rqdp{ next day state record %b}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return v0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ah()J
    .locals 2

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ltmsdkobf/ex;->lu:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ao()J
    .locals 4

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 300
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 301
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 302
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 303
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 304
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 313
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 306
    :catch_0
    move-exception v0

    .line 308
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 312
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 313
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized bd()Ltmsdkobf/eo;
    .locals 1

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/ex;->lr:Ltmsdkobf/eo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized be()Ltmsdkobf/fn;
    .locals 1

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/ex;->ls:Ltmsdkobf/fn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized i(J)V
    .locals 1
    .parameter

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Ltmsdkobf/ex;->lu:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k(J)Z
    .locals 10
    .parameter

    .prologue
    const-wide/16 v1, 0x7530

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ltmsdkobf/ex;->lr:Ltmsdkobf/eo;

    if-eqz v3, :cond_2

    .line 113
    const-wide/32 v3, 0xea60

    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    const-wide/32 v0, 0xea60

    .line 114
    :goto_0
    iget-boolean v2, p0, Ltmsdkobf/ex;->kX:Z

    if-nez v2, :cond_4

    .line 117
    iput-wide v0, p0, Ltmsdkobf/ex;->ks:J

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdkobf/ex;->kX:Z

    .line 119
    iget-object v0, p0, Ltmsdkobf/ex;->lr:Ltmsdkobf/eo;

    const/16 v1, 0x13

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Ltmsdkobf/ex;->ks:J

    move-object v2, p0

    invoke-virtual/range {v0 .. v6}, Ltmsdkobf/eo;->a(ILjava/lang/Runnable;JJ)V

    .line 122
    invoke-virtual {p0}, Ltmsdkobf/ex;->ah()J

    move-result-wide v0

    .line 123
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 125
    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 128
    invoke-virtual {p0}, Ltmsdkobf/ex;->ao()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltmsdkobf/ex;->i(J)V

    .line 129
    invoke-virtual {p0}, Ltmsdkobf/ex;->ah()J

    move-result-wide v0

    .line 132
    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 134
    iget-object v4, p0, Ltmsdkobf/ex;->lr:Ltmsdkobf/eo;

    new-instance v5, Ltmsdkobf/ex$1;

    invoke-direct {v5, p0}, Ltmsdkobf/ex$1;-><init>(Ltmsdkobf/ex;)V

    sub-long v8, v0, v2

    invoke-virtual {v4, v5, v8, v9}, Ltmsdkobf/eo;->a(Ljava/lang/Runnable;J)V

    .line 167
    const-string v4, "rqdp{ next day %d}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    move v0, v7

    .line 179
    :cond_2
    monitor-exit p0

    return v0

    :cond_3
    move-wide v0, v1

    .line 113
    goto :goto_0

    .line 170
    :cond_4
    :try_start_1
    iget-wide v2, p0, Ltmsdkobf/ex;->ks:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 172
    iput-wide v0, p0, Ltmsdkobf/ex;->ks:J

    .line 173
    iget-object v0, p0, Ltmsdkobf/ex;->lr:Ltmsdkobf/eo;

    const/16 v1, 0x13

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/eo;->b(IZ)V

    .line 174
    iget-object v0, p0, Ltmsdkobf/ex;->lr:Ltmsdkobf/eo;

    const/16 v1, 0x13

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Ltmsdkobf/ex;->ks:J

    move-object v2, p0

    invoke-virtual/range {v0 .. v6}, Ltmsdkobf/eo;->a(ILjava/lang/Runnable;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 430
    invoke-direct {p0}, Ltmsdkobf/ex;->am()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 431
    invoke-direct {p0, v0}, Ltmsdkobf/ex;->aB(I)V

    .line 432
    if-ne v0, v1, :cond_1

    .line 434
    monitor-enter p0

    .line 436
    :try_start_0
    iget-object v0, p0, Ltmsdkobf/ex;->kQ:Landroid/content/Context;

    iget-object v3, p0, Ltmsdkobf/ex;->kT:Ljava/lang/String;

    invoke-static {v0, v3}, Ltmsdkobf/en;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ltmsdkobf/ex;->lt:Z

    .line 437
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    const-string v0, "rqdp{  proc state monitor launch ,add launch state and upload}"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    invoke-direct {p0}, Ltmsdkobf/ex;->aN()Z

    .line 440
    invoke-virtual {p0}, Ltmsdkobf/ex;->bd()Ltmsdkobf/eo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ltmsdkobf/ex$2;

    invoke-direct {v2, p0, v1}, Ltmsdkobf/ex$2;-><init>(Ltmsdkobf/ex;B)V

    invoke-virtual {v0, v2}, Ltmsdkobf/eo;->a(Ljava/lang/Runnable;)V

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 445
    :cond_1
    iget-object v0, p0, Ltmsdkobf/ex;->kQ:Landroid/content/Context;

    iget-object v3, p0, Ltmsdkobf/ex;->kT:Ljava/lang/String;

    invoke-static {v0, v3}, Ltmsdkobf/en;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 447
    monitor-enter p0

    .line 449
    :try_start_1
    iget-boolean v3, p0, Ltmsdkobf/ex;->lt:Z

    if-eq v0, v3, :cond_2

    .line 451
    iput-boolean v0, p0, Ltmsdkobf/ex;->lt:Z

    .line 452
    if-eqz v0, :cond_2

    move v0, v1

    .line 455
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 457
    if-eqz v0, :cond_0

    .line 459
    const-string v0, "process:%s is resumed!"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Ltmsdkobf/ex;->kT:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    invoke-direct {p0}, Ltmsdkobf/ex;->bc()Z

    goto :goto_0

    .line 455
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v2

    goto :goto_1
.end method
