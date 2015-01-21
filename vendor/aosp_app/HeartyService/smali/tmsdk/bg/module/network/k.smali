.class final Ltmsdk/bg/module/network/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private wA:Z

.field private wB:Z

.field private wy:Ljava/lang/reflect/Method;

.field private wz:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    :try_start_0
    const-string v2, "android.net.TrafficStats"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 303
    .local v0, claxx:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v2, "getUidRxBytes"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Ltmsdk/bg/module/network/k;->wy:Ljava/lang/reflect/Method;

    .line 304
    const-string v2, "getUidTxBytes"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Ltmsdk/bg/module/network/k;->wz:Ljava/lang/reflect/Method;

    .line 305
    const/4 v2, 0x1

    iput-boolean v2, p0, Ltmsdk/bg/module/network/k;->wA:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v0           #claxx:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    iget-boolean v2, p0, Ltmsdk/bg/module/network/k;->wA:Z

    if-nez v2, :cond_0

    .line 312
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/uid_stat"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    iput-boolean v2, p0, Ltmsdk/bg/module/network/k;->wB:Z

    .line 314
    :cond_0
    return-void

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, e:Ljava/lang/Exception;
    iput-boolean v6, p0, Ltmsdk/bg/module/network/k;->wA:Z

    .line 308
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)J
    .locals 8
    .parameter "uid"
    .parameter "file1"
    .parameter "file2"

    .prologue
    const/4 v7, 0x0

    .line 348
    const-wide/16 v3, -0x1

    .line 349
    .local v3, result:J
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/proc/uid_stat/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    .local v0, f1:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/proc/uid_stat/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .local v1, f2:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 353
    invoke-static {v0}, Ltmsdkobf/jv;->c(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, lines:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    .line 355
    aget-object v5, v2, v7

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 359
    .end local v2           #lines:[Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 360
    invoke-static {v1}, Ltmsdkobf/jv;->c(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v2

    .line 361
    .restart local v2       #lines:[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v5, v2

    if-lez v5, :cond_1

    .line 362
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v2, v7

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 366
    .end local v2           #lines:[Ljava/lang/String;
    :cond_1
    :goto_0
    return-wide v3

    .line 362
    .restart local v2       #lines:[Ljava/lang/String;
    :cond_2
    aget-object v5, v2, v7

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0
.end method


# virtual methods
.method public getUidRxBytes(I)J
    .locals 8
    .parameter "uid"

    .prologue
    .line 317
    const-wide/16 v1, -0x1

    .line 318
    .local v1, result:J
    iget-boolean v3, p0, Ltmsdk/bg/module/network/k;->wA:Z

    if-eqz v3, :cond_1

    .line 320
    :try_start_0
    iget-object v3, p0, Ltmsdk/bg/module/network/k;->wy:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 328
    :cond_0
    :goto_0
    return-wide v1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 324
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-boolean v3, p0, Ltmsdk/bg/module/network/k;->wB:Z

    if-eqz v3, :cond_0

    .line 325
    const-string v3, "tcp_rcv"

    const-string v4, "udp_rcv"

    invoke-direct {p0, p1, v3, v4}, Ltmsdk/bg/module/network/k;->a(ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getUidTxBytes(I)J
    .locals 8
    .parameter "uid"

    .prologue
    .line 332
    const-wide/16 v1, -0x1

    .line 333
    .local v1, result:J
    iget-boolean v3, p0, Ltmsdk/bg/module/network/k;->wA:Z

    if-eqz v3, :cond_1

    .line 335
    :try_start_0
    iget-object v3, p0, Ltmsdk/bg/module/network/k;->wz:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 343
    :cond_0
    :goto_0
    return-wide v1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 339
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-boolean v3, p0, Ltmsdk/bg/module/network/k;->wB:Z

    if-eqz v3, :cond_0

    .line 340
    const-string v3, "tcp_snd"

    const-string v4, "udp_snd"

    invoke-direct {p0, p1, v3, v4}, Ltmsdk/bg/module/network/k;->a(ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public isSupportTrafficState()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Ltmsdk/bg/module/network/k;->wB:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ltmsdk/bg/module/network/k;->wA:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
