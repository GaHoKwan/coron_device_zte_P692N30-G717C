.class public Ltmsdkobf/dz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static kD:Ltmsdkobf/dz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 56
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ltmsdkobf/dz;
    .locals 3
    .parameter

    .prologue
    .line 41
    const-class v1, Ltmsdkobf/dz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/dz;->kD:Ltmsdkobf/dz;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 43
    new-instance v0, Ltmsdkobf/dz;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Ltmsdkobf/dz;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltmsdkobf/dz;->kD:Ltmsdkobf/dz;

    .line 45
    :cond_0
    sget-object v0, Ltmsdkobf/dz;->kD:Ltmsdkobf/dz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/util/LinkedHashMap;J)[Ljava/lang/Long;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;J)[",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    .line 21
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    :cond_0
    move-object v0, v3

    .line 46
    :goto_0
    return-object v0

    .line 24
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v1, v0

    .line 30
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    cmp-long v0, v1, p1

    if-gez v0, :cond_2

    .line 33
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 34
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 36
    add-long v10, v1, v8

    cmp-long v0, v10, p1

    if-gtz v0, :cond_4

    .line 38
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    add-long v0, v1, v8

    :goto_2
    move-wide v1, v0

    .line 41
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Long;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    goto :goto_0

    :cond_3
    move-object v0, v3

    .line 46
    goto :goto_0

    :cond_4
    move-wide v0, v1

    goto :goto_2
.end method

.method public static ac()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 105
    const-string v1, "rqdp{  getApiLevel error}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    const-string v0, "null"

    goto :goto_0
.end method

.method public static ae()Ljava/lang/String;
    .locals 3

    .prologue
    .line 290
    :try_start_0
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 297
    :goto_0
    return-object v0

    .line 292
    :catch_0
    move-exception v0

    .line 294
    const-string v1, "rqdp{  ge cuabi fa!}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 297
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static af()J
    .locals 4

    .prologue
    .line 467
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/data"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    .line 469
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v2, v0

    .line 470
    int-to-long v0, v1

    mul-long/2addr v0, v2

    .line 477
    :goto_0
    return-wide v0

    .line 472
    :catch_0
    move-exception v0

    .line 474
    const-string v1, "rqdp{  getFreeStorage error!}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 477
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)J
    .locals 5
    .parameter

    .prologue
    const-wide/16 v1, -0x1

    const/4 v4, 0x0

    .line 388
    if-nez p0, :cond_0

    .line 390
    const-string v0, "rqdp{  getFreeMem but context == null!}"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v0, v1

    .line 405
    :goto_0
    return-wide v0

    .line 395
    :cond_0
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 396
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 397
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 398
    iget-wide v0, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 402
    const-string v3, "rqdp{  getFreeMem error!}"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide v0, v1

    .line 405
    goto :goto_0
.end method


# virtual methods
.method public ad()I
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Ltmsdkobf/dz;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ag()J
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 500
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mounted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 502
    const-wide/16 v0, 0x0

    .line 517
    :goto_1
    return-wide v0

    :cond_0
    move v0, v2

    .line 500
    goto :goto_0

    .line 507
    :cond_1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    .line 509
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 510
    int-to-long v2, v3

    mul-long/2addr v0, v2

    goto :goto_1

    .line 512
    :catch_0
    move-exception v0

    .line 514
    const-string v3, "rqdp{  get free sd error %s}"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 517
    const-wide/16 v0, -0x1

    goto :goto_1
.end method
