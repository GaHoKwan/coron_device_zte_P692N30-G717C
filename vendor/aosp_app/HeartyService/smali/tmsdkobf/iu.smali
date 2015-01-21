.class public Ltmsdkobf/iu;
.super Ltmsdk/common/module/aresengine/MmsTransactionHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/iu$a;
    }
.end annotation


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private volatile rV:I

.field private final rW:I

.field private rX:Ljava/lang/String;

.field private final rY:I

.field private final rZ:Ljava/lang/String;

.field private final sa:Ljava/lang/String;

.field private final sb:I

.field private final sc:I

.field private sd:Ltmsdkobf/iu$a;

.field se:Landroid/os/HandlerThread;

.field private sf:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ltmsdk/common/module/aresengine/MmsTransactionHelper;-><init>()V

    .line 47
    iput v1, p0, Ltmsdkobf/iu;->rV:I

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Ltmsdkobf/iu;->rW:I

    .line 50
    const-string v0, "enableMMS"

    iput-object v0, p0, Ltmsdkobf/iu;->rX:Ljava/lang/String;

    .line 52
    const/16 v0, 0x7530

    iput v0, p0, Ltmsdkobf/iu;->rY:I

    .line 54
    const-string v0, "application/vnd.wap.mms-message"

    iput-object v0, p0, Ltmsdkobf/iu;->rZ:Ljava/lang/String;

    .line 55
    const-string v0, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    iput-object v0, p0, Ltmsdkobf/iu;->sa:Ljava/lang/String;

    .line 57
    iput v1, p0, Ltmsdkobf/iu;->sb:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Ltmsdkobf/iu;->sc:I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Ltmsdkobf/iu;->sf:I

    .line 93
    iput-object p1, p0, Ltmsdkobf/iu;->mContext:Landroid/content/Context;

    .line 94
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Ltmsdkobf/iu;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 95
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v0

    const-string v1, "Mms Hanlder"

    invoke-virtual {v0, v1}, Ltmsdkobf/ij;->bj(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/iu;->se:Landroid/os/HandlerThread;

    .line 96
    iget-object v0, p0, Ltmsdkobf/iu;->se:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v0, Ltmsdkobf/iu$a;

    iget-object v1, p0, Ltmsdkobf/iu;->se:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltmsdkobf/iu$a;-><init>(Ltmsdkobf/iu;Landroid/os/Looper;)V

    iput-object v0, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    .line 98
    return-void
.end method

.method static synthetic a(Ltmsdkobf/iu;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Ltmsdkobf/iu;->rX:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ltmsdkobf/iv;)V
    .locals 9
    .parameter "url"
    .parameter "settings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/NetWorkException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/16 v8, -0x420

    const/16 v7, -0x426

    .line 429
    const/16 v0, -0x3e8

    .line 431
    .local v0, errCode:I
    invoke-virtual {p2}, Ltmsdkobf/iv;->dE()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 432
    invoke-virtual {p2}, Ltmsdkobf/iv;->dD()Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, proxyAddr:Ljava/lang/String;
    invoke-static {v2}, Ltmsdkobf/iu;->bp(Ljava/lang/String;)I

    move-result v1

    .line 434
    .local v1, inetAddr:I
    if-ne v1, v5, :cond_0

    .line 435
    new-instance v4, Ltmsdk/common/exception/NetWorkException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot establish route for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Unknown host"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 439
    :cond_0
    iget-object v4, p0, Ltmsdkobf/iu;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Ltmsdkobf/iu;->getNetworkType()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 441
    new-instance v4, Ltmsdk/common/exception/NetWorkException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot establish route to proxy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v8, v5}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 447
    .end local v1           #inetAddr:I
    .end local v2           #proxyAddr:Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 448
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltmsdkobf/iu;->bp(Ljava/lang/String;)I

    move-result v1

    .line 449
    .restart local v1       #inetAddr:I
    if-ne v1, v5, :cond_2

    .line 450
    new-instance v4, Ltmsdk/common/exception/NetWorkException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot establish route for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Unknown host"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 454
    :cond_2
    iget-object v4, p0, Ltmsdkobf/iu;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Ltmsdkobf/iu;->getNetworkType()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 456
    new-instance v4, Ltmsdk/common/exception/NetWorkException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot establish route to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v8, v5}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 463
    .end local v3           #uri:Landroid/net/Uri;
    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Ltmsdkobf/iv;[BLjava/lang/String;)[B
    .locals 6
    .parameter "mmscUrl"
    .parameter "settings"
    .parameter "postData"
    .parameter "requestMethod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/NetWorkException;
        }
    .end annotation

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 266
    new-instance v3, Ltmsdk/common/exception/NetWorkException;

    const/16 v4, -0x421

    const-string v5, "mmsc url is null!"

    invoke-direct {v3, v4, v5}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 268
    :cond_0
    if-nez p2, :cond_1

    .line 269
    new-instance p2, Ltmsdkobf/iv;

    .end local p2
    iget-object v3, p0, Ltmsdkobf/iu;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Ltmsdkobf/iu;->dy()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v3, v4}, Ltmsdkobf/iv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    .line 272
    .local v0, httpConnection:Ltmsdkobf/jx;
    const/4 v2, 0x0

    .line 274
    .local v2, rsp:[B
    :try_start_0
    invoke-direct {p0, p1, p2}, Ltmsdkobf/iu;->a(Ljava/lang/String;Ltmsdkobf/iv;)V

    .line 275
    invoke-virtual {p2}, Ltmsdkobf/iv;->dE()Z

    move-result v3

    invoke-virtual {p2}, Ltmsdkobf/iv;->dD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ltmsdkobf/iv;->getProxyPort()I

    move-result v5

    invoke-static {p1, v3, v4, v5}, Ltmsdkobf/jx;->a(Ljava/lang/String;ZLjava/lang/String;I)Ltmsdkobf/jx;

    move-result-object v0

    .line 279
    invoke-virtual {v0, p4}, Ltmsdkobf/jx;->setRequestMethod(Ljava/lang/String;)V

    .line 280
    const-string v3, "POST"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 281
    if-eqz p3, :cond_2

    .line 282
    invoke-virtual {v0, p3}, Ltmsdkobf/jx;->setPostData([B)V

    .line 284
    :cond_2
    const-string v3, "Content-Type"

    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v0, v3, v4}, Ltmsdkobf/jx;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v3, "Accept"

    const-string v4, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-virtual {v0, v3, v4}, Ltmsdkobf/jx;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_3
    const/16 v3, 0xc8

    invoke-virtual {v0}, Ltmsdkobf/jx;->eY()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 289
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 290
    .local v1, retBytesRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<[B>;"
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ltmsdkobf/jx;->a(ZLjava/util/concurrent/atomic/AtomicReference;)I

    move-result v3

    if-nez v3, :cond_4

    .line 291
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #rsp:[B
    check-cast v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    .end local v1           #retBytesRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<[B>;"
    .restart local v2       #rsp:[B
    :cond_4
    if-eqz v0, :cond_5

    .line 296
    invoke-virtual {v0}, Ltmsdkobf/jx;->close()V

    .line 297
    const/4 v0, 0x0

    .line 301
    :cond_5
    return-object v2

    .line 295
    .end local v2           #rsp:[B
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_6

    .line 296
    invoke-virtual {v0}, Ltmsdkobf/jx;->close()V

    .line 297
    const/4 v0, 0x0

    :cond_6
    throw v3
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Ltmsdkobf/iu;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 394
    return-void
.end method

.method static synthetic b(Ltmsdkobf/iu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Ltmsdkobf/iu;->sf:I

    return v0
.end method

.method private static bp(Ljava/lang/String;)I
    .locals 6
    .parameter "hostname"

    .prologue
    .line 477
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 483
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 484
    .local v1, addrBytes:[B
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .line 486
    .end local v1           #addrBytes:[B
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    :goto_0
    return v0

    .line 478
    :catch_0
    move-exception v2

    .line 479
    .local v2, e:Ljava/net/UnknownHostException;
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic c(Ltmsdkobf/iu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Ltmsdkobf/iu;->rV:I

    return v0
.end method

.method static synthetic d(Ltmsdkobf/iu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Ltmsdkobf/iu;->dA()V

    return-void
.end method

.method private dA()V
    .locals 3

    .prologue
    .line 369
    :try_start_0
    iget-object v0, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 370
    iget-object v0, p0, Ltmsdkobf/iu;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Ltmsdkobf/iu;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    iget-object v2, p0, Ltmsdkobf/iu;->rX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :cond_0
    invoke-direct {p0}, Ltmsdkobf/iu;->releaseWakeLock()V

    .line 377
    return-void

    .line 375
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Ltmsdkobf/iu;->releaseWakeLock()V

    throw v0
.end method

.method private declared-synchronized dB()V
    .locals 3

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ltmsdkobf/iu;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 382
    iget-object v1, p0, Ltmsdkobf/iu;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 384
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "MMS Connectivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/iu;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 386
    iget-object v1, p0, Ltmsdkobf/iu;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 381
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private dy()Ljava/lang/String;
    .locals 4

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, apnName:Ljava/lang/String;
    invoke-direct {p0}, Ltmsdkobf/iu;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    iget-object v2, p0, Ltmsdkobf/iu;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Ltmsdkobf/iu;->getNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 308
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 310
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :cond_0
    return-object v0
.end method

.method private dz()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 318
    const/4 v2, 0x0

    .line 320
    .local v2, tryTimes:I
    :goto_0
    iget-object v6, p0, Ltmsdkobf/iu;->rX:Ljava/lang/String;

    iget v7, p0, Ltmsdkobf/iu;->sf:I

    invoke-virtual {p0, v6, v7}, Ltmsdkobf/iu;->beginMmsConnectivity(Ljava/lang/String;I)I

    move-result v0

    .local v0, beginNetworkRst:I
    if-ne v0, v5, :cond_1

    add-int/lit8 v3, v2, 0x1

    .end local v2           #tryTimes:I
    .local v3, tryTimes:I
    const/4 v6, 0x5

    if-ge v2, v6, :cond_0

    .line 322
    const-wide/16 v6, 0x5dc

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 325
    .end local v3           #tryTimes:I
    .restart local v2       #tryTimes:I
    goto :goto_0

    .line 323
    .end local v2           #tryTimes:I
    .restart local v3       #tryTimes:I
    :catch_0
    move-exception v1

    .line 324
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v2, v3

    .line 325
    .end local v3           #tryTimes:I
    .restart local v2       #tryTimes:I
    goto :goto_0

    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #tryTimes:I
    .restart local v3       #tryTimes:I
    :cond_0
    move v2, v3

    .line 327
    .end local v3           #tryTimes:I
    .restart local v2       #tryTimes:I
    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Ltmsdkobf/iu;->isNetworkConnected()Z

    move-result v6

    if-nez v6, :cond_2

    .line 336
    :goto_1
    return v4

    .line 332
    :cond_2
    iget-object v6, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v6, v4}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 333
    iget-object v6, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    iget-object v7, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v7, v4}, Ltmsdkobf/iu$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v7, 0x7530

    invoke-virtual {v6, v4, v7, v8}, Ltmsdkobf/iu$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v4, v5

    .line 336
    goto :goto_1
.end method

.method private getNetworkType()I
    .locals 2

    .prologue
    .line 409
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getDualSimAdapter()Ltmsdkobf/lm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getDualSimAdapter()Ltmsdkobf/lm;

    move-result-object v0

    iget v1, p0, Ltmsdkobf/iu;->sf:I

    invoke-interface {v0, v1}, Ltmsdkobf/lm;->bY(I)I

    move-result v0

    .line 412
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkConnected()Z
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Ltmsdkobf/iu;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Ltmsdkobf/iu;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    return v0
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Ltmsdkobf/iu;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/iu;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Ltmsdkobf/iu;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 401
    :cond_0
    return-void
.end method


# virtual methods
.method public beginMmsConnectivity(Ljava/lang/String;)I
    .locals 1
    .parameter "networkFeature"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltmsdkobf/iu;->beginMmsConnectivity(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public beginMmsConnectivity(Ljava/lang/String;I)I
    .locals 3
    .parameter "networkFeature"
    .parameter "simSlot"

    .prologue
    .line 342
    invoke-direct {p0}, Ltmsdkobf/iu;->dB()V

    .line 343
    iput-object p1, p0, Ltmsdkobf/iu;->rX:Ljava/lang/String;

    .line 344
    iput p2, p0, Ltmsdkobf/iu;->sf:I

    .line 345
    iget-object v1, p0, Ltmsdkobf/iu;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 347
    .local v0, result:I
    packed-switch v0, :pswitch_data_0

    .line 353
    const/4 v0, -0x1

    .end local v0           #result:I
    :goto_0
    return v0

    .line 350
    .restart local v0       #result:I
    :pswitch_0
    invoke-direct {p0}, Ltmsdkobf/iu;->acquireWakeLock()V

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public retrieveMmsContent(Ltmsdk/common/module/aresengine/SmsEntity;)I
    .locals 14
    .parameter "sms"

    .prologue
    const/16 v7, -0x421

    const-wide/16 v12, 0x7530

    const/4 v11, 0x1

    .line 160
    const/16 v5, -0x3e8

    .line 162
    .local v5, rst:I
    :try_start_0
    iget-object v8, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 163
    iget v8, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ltmsdkobf/iu;->rV:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    if-nez p1, :cond_1

    .line 196
    iget v8, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Ltmsdkobf/iu;->rV:I

    .line 197
    iget v8, p0, Ltmsdkobf/iu;->rV:I

    if-nez v8, :cond_0

    .line 198
    iget-object v8, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v8, v11}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 199
    iget-object v8, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v8, v11, v12, v13}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    .line 202
    :cond_0
    :goto_0
    return v7

    .line 168
    :cond_1
    :try_start_1
    invoke-direct {p0}, Ltmsdkobf/iu;->dz()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-nez v8, :cond_2

    .line 169
    const/16 v7, -0x41c

    .line 196
    iget v8, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Ltmsdkobf/iu;->rV:I

    .line 197
    iget v8, p0, Ltmsdkobf/iu;->rV:I

    if-nez v8, :cond_0

    .line 198
    iget-object v8, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v8, v11}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 199
    iget-object v8, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v8, v11, v12, v13}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 171
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ltmsdk/common/module/aresengine/SmsEntity;->getMmsContentLocation()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 172
    .local v0, contentLocation:[B
    if-nez v0, :cond_3

    .line 196
    iget v8, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Ltmsdkobf/iu;->rV:I

    .line 197
    iget v8, p0, Ltmsdkobf/iu;->rV:I

    if-nez v8, :cond_0

    .line 198
    iget-object v8, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v8, v11}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 199
    iget-object v8, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v8, v11, v12, v13}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 175
    :cond_3
    :try_start_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 176
    .local v2, mmsUrl:Ljava/lang/String;
    new-instance v6, Ltmsdkobf/iv;

    iget-object v7, p0, Ltmsdkobf/iu;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Ltmsdkobf/iu;->dy()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ltmsdkobf/iv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 177
    .local v6, settings:Ltmsdkobf/iv;
    const/4 v7, 0x0

    const-string v8, "GET"

    invoke-direct {p0, v2, v6, v7, v8}, Ltmsdkobf/iu;->a(Ljava/lang/String;Ltmsdkobf/iv;[BLjava/lang/String;)[B

    move-result-object v4

    .line 178
    .local v4, retrieveConfData:[B
    const/16 v5, -0xfa0

    .line 179
    if-eqz v4, :cond_5

    .line 180
    new-instance v7, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v7, v4}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    check-cast v3, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 181
    .local v3, pdu:Lcom/google/android/mms/pdu/RetrieveConf;
    const/4 v7, 0x1

    iput v7, p1, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    .line 182
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/RetrieveConf;->getDate()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    iput-wide v7, p1, Ltmsdk/common/module/aresengine/SmsEntity;->date:J

    .line 183
    const-string v7, ""

    iput-object v7, p1, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    .line 184
    iget-wide v7, p1, Ltmsdk/common/module/aresengine/SmsEntity;->date:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gtz v7, :cond_4

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p1, Ltmsdk/common/module/aresengine/SmsEntity;->date:J

    .line 187
    :cond_4
    iget-object v7, p1, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    invoke-virtual {v7, v3}, Ltmsdk/common/module/aresengine/MmsData;->writeRetrieveConf(Lcom/google/android/mms/pdu/RetrieveConf;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 188
    const/4 v5, 0x0

    .line 196
    .end local v3           #pdu:Lcom/google/android/mms/pdu/RetrieveConf;
    :cond_5
    iget v7, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ltmsdkobf/iu;->rV:I

    .line 197
    iget v7, p0, Ltmsdkobf/iu;->rV:I

    if-nez v7, :cond_6

    .line 198
    iget-object v7, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v7, v11}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 199
    iget-object v7, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v7, v11, v12, v13}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    move v7, v5

    .line 202
    goto/16 :goto_0

    .line 190
    .end local v0           #contentLocation:[B
    .end local v2           #mmsUrl:Ljava/lang/String;
    .end local v4           #retrieveConfData:[B
    .end local v6           #settings:Ltmsdkobf/iv;
    :catch_0
    move-exception v1

    .line 191
    .local v1, e:Ltmsdk/common/exception/NetWorkException;
    :try_start_4
    invoke-virtual {v1}, Ltmsdk/common/exception/NetWorkException;->printStackTrace()V

    .line 192
    invoke-virtual {v1}, Ltmsdk/common/exception/NetWorkException;->getErrCode()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    .line 196
    iget v8, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Ltmsdkobf/iu;->rV:I

    .line 197
    iget v8, p0, Ltmsdkobf/iu;->rV:I

    if-nez v8, :cond_0

    .line 198
    iget-object v8, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v8, v11}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 199
    iget-object v8, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v8, v11, v12, v13}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 193
    .end local v1           #e:Ltmsdk/common/exception/NetWorkException;
    :catch_1
    move-exception v1

    .line 194
    .local v1, e:Ljava/lang/Exception;
    add-int/lit8 v7, v5, -0x2

    .line 196
    iget v8, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Ltmsdkobf/iu;->rV:I

    .line 197
    iget v8, p0, Ltmsdkobf/iu;->rV:I

    if-nez v8, :cond_0

    .line 198
    iget-object v8, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v8, v11}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 199
    iget-object v8, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v8, v11, v12, v13}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 196
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    iget v8, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Ltmsdkobf/iu;->rV:I

    .line 197
    iget v8, p0, Ltmsdkobf/iu;->rV:I

    if-nez v8, :cond_7

    .line 198
    iget-object v8, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v8, v11}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 199
    iget-object v8, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v8, v11, v12, v13}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    throw v7
.end method

.method public sendAcknowledgeInd(Ltmsdk/common/module/aresengine/SmsEntity;)I
    .locals 13
    .parameter "sms"

    .prologue
    const-wide/16 v11, 0x7530

    const/4 v10, 0x1

    .line 207
    const/16 v5, -0x3e8

    .line 209
    .local v5, rst:I
    :try_start_0
    iget-object v8, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 210
    iget v8, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ltmsdkobf/iu;->rV:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    if-nez p1, :cond_1

    .line 212
    const/16 v8, -0x421

    .line 245
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ltmsdkobf/iu;->rV:I

    .line 246
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    if-nez v9, :cond_0

    .line 247
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v9, v10}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 248
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v9, v10, v11, v12}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    .line 251
    :cond_0
    :goto_0
    return v8

    .line 215
    :cond_1
    :try_start_1
    invoke-direct {p0}, Ltmsdkobf/iu;->dz()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-nez v8, :cond_2

    .line 216
    const/16 v8, -0x41c

    .line 245
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ltmsdkobf/iu;->rV:I

    .line 246
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    if-nez v9, :cond_0

    .line 247
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v9, v10}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 248
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v9, v10, v11, v12}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 218
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ltmsdk/common/module/aresengine/SmsEntity;->getMmsTransactionId()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .line 221
    .local v7, tranId:[B
    if-nez v7, :cond_3

    .line 222
    const/4 v8, 0x0

    .line 245
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ltmsdkobf/iu;->rV:I

    .line 246
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    if-nez v9, :cond_0

    .line 247
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v9, v10}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 248
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v9, v10, v11, v12}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 225
    :cond_3
    :try_start_3
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    const/16 v8, 0x12

    invoke-direct {v0, v8, v7}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(I[B)V

    .line 227
    .local v0, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    new-instance v8, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v9, p0, Ltmsdkobf/iu;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v4

    .line 228
    .local v4, postData:[B
    new-instance v6, Ltmsdkobf/iv;

    iget-object v8, p0, Ltmsdkobf/iu;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Ltmsdkobf/iu;->dy()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Ltmsdkobf/iv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    .local v6, settings:Ltmsdkobf/iv;
    invoke-virtual {v6}, Ltmsdkobf/iv;->dC()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, mmscUrl:Ljava/lang/String;
    invoke-virtual {p1}, Ltmsdk/common/module/aresengine/SmsEntity;->getMmsContentLocation()[B

    move-result-object v1

    .line 231
    .local v1, contentLocation:[B
    if-eqz v1, :cond_4

    .line 232
    new-instance v3, Ljava/lang/String;

    .end local v3           #mmscUrl:Ljava/lang/String;
    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 234
    .restart local v3       #mmscUrl:Ljava/lang/String;
    :cond_4
    const-string v8, "POST"

    invoke-direct {p0, v3, v6, v4, v8}, Ltmsdkobf/iu;->a(Ljava/lang/String;Ltmsdkobf/iv;[BLjava/lang/String;)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v8

    if-eqz v8, :cond_6

    .line 235
    const/4 v5, 0x0

    .line 245
    :goto_1
    iget v8, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Ltmsdkobf/iu;->rV:I

    .line 246
    iget v8, p0, Ltmsdkobf/iu;->rV:I

    if-nez v8, :cond_5

    .line 247
    iget-object v8, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v8, v10}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 248
    iget-object v8, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v8, v10, v11, v12}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    move v8, v5

    .line 251
    goto/16 :goto_0

    .line 237
    :cond_6
    const/16 v5, -0xfa0

    goto :goto_1

    .line 240
    .end local v0           #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    .end local v1           #contentLocation:[B
    .end local v3           #mmscUrl:Ljava/lang/String;
    .end local v4           #postData:[B
    .end local v6           #settings:Ltmsdkobf/iv;
    .end local v7           #tranId:[B
    :catch_0
    move-exception v2

    .line 241
    .local v2, e:Ltmsdk/common/exception/NetWorkException;
    :try_start_4
    invoke-virtual {v2}, Ltmsdk/common/exception/NetWorkException;->getErrCode()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    .line 245
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ltmsdkobf/iu;->rV:I

    .line 246
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    if-nez v9, :cond_0

    .line 247
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v9, v10}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 248
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v9, v10, v11, v12}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 242
    .end local v2           #e:Ltmsdk/common/exception/NetWorkException;
    :catch_1
    move-exception v2

    .line 243
    .local v2, e:Ljava/lang/Exception;
    const/16 v8, -0x3ea

    .line 245
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ltmsdkobf/iu;->rV:I

    .line 246
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    if-nez v9, :cond_0

    .line 247
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v9, v10}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 248
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v9, v10, v11, v12}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 245
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    iget v9, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ltmsdkobf/iu;->rV:I

    .line 246
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    if-nez v9, :cond_7

    .line 247
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v9, v10}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 248
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    invoke-virtual {v9, v10, v11, v12}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    throw v8
.end method

.method public sendNotifyRespInd(ILtmsdk/common/module/aresengine/SmsEntity;)I
    .locals 13
    .parameter "status"
    .parameter "sms"

    .prologue
    .line 110
    const/16 v5, -0x3e8

    .line 112
    .local v5, rst:I
    :try_start_0
    iget-object v8, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 113
    iget v8, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ltmsdkobf/iu;->rV:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 114
    if-nez p2, :cond_1

    .line 115
    const/16 v8, -0x421

    .line 149
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ltmsdkobf/iu;->rV:I

    .line 150
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    if-nez v9, :cond_0

    .line 151
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 152
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v10, 0x1

    const-wide/16 v11, 0x7530

    invoke-virtual {v9, v10, v11, v12}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    .line 155
    :cond_0
    :goto_0
    return v8

    .line 118
    :cond_1
    :try_start_1
    invoke-direct {p0}, Ltmsdkobf/iu;->dz()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v8

    if-nez v8, :cond_2

    .line 119
    const/16 v8, -0x41c

    .line 149
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ltmsdkobf/iu;->rV:I

    .line 150
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    if-nez v9, :cond_0

    .line 151
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 152
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v10, 0x1

    const-wide/16 v11, 0x7530

    invoke-virtual {v9, v10, v11, v12}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 123
    :cond_2
    :try_start_2
    invoke-virtual {p2}, Ltmsdk/common/module/aresengine/SmsEntity;->getMmsTransactionId()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 124
    .local v7, transactionId:[B
    if-nez v7, :cond_3

    .line 125
    const/16 v8, -0x421

    .line 149
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ltmsdkobf/iu;->rV:I

    .line 150
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    if-nez v9, :cond_0

    .line 151
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 152
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v10, 0x1

    const-wide/16 v11, 0x7530

    invoke-virtual {v9, v10, v11, v12}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 127
    :cond_3
    :try_start_3
    new-instance v2, Lcom/google/android/mms/pdu/NotifyRespInd;

    const/16 v8, 0x12

    invoke-direct {v2, v8, v7, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BI)V

    .line 129
    .local v2, ind:Lcom/google/android/mms/pdu/NotifyRespInd;
    new-instance v8, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v9, p0, Ltmsdkobf/iu;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v2}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v4

    .line 130
    .local v4, postData:[B
    new-instance v6, Ltmsdkobf/iv;

    iget-object v8, p0, Ltmsdkobf/iu;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Ltmsdkobf/iu;->dy()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Ltmsdkobf/iv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    .local v6, settings:Ltmsdkobf/iv;
    invoke-virtual {v6}, Ltmsdkobf/iv;->dC()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, mmscUrl:Ljava/lang/String;
    invoke-virtual {p2}, Ltmsdk/common/module/aresengine/SmsEntity;->getMmsContentLocation()[B

    move-result-object v0

    .line 134
    .local v0, contentLocation:[B
    if-eqz v0, :cond_4

    .line 135
    new-instance v3, Ljava/lang/String;

    .end local v3           #mmscUrl:Ljava/lang/String;
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 137
    .restart local v3       #mmscUrl:Ljava/lang/String;
    :cond_4
    const-string v8, "POST"

    invoke-direct {p0, v3, v6, v4, v8}, Ltmsdkobf/iu;->a(Ljava/lang/String;Ltmsdkobf/iv;[BLjava/lang/String;)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v8

    if-eqz v8, :cond_6

    .line 138
    const/4 v5, 0x0

    .line 149
    :goto_1
    iget v8, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Ltmsdkobf/iu;->rV:I

    .line 150
    iget v8, p0, Ltmsdkobf/iu;->rV:I

    if-nez v8, :cond_5

    .line 151
    iget-object v8, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 152
    iget-object v8, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v9, 0x1

    const-wide/16 v10, 0x7530

    invoke-virtual {v8, v9, v10, v11}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    move v8, v5

    .line 155
    goto/16 :goto_0

    .line 140
    :cond_6
    const/16 v5, -0xfa0

    goto :goto_1

    .line 142
    .end local v0           #contentLocation:[B
    .end local v2           #ind:Lcom/google/android/mms/pdu/NotifyRespInd;
    .end local v3           #mmscUrl:Ljava/lang/String;
    .end local v4           #postData:[B
    .end local v6           #settings:Ltmsdkobf/iv;
    .end local v7           #transactionId:[B
    :catch_0
    move-exception v1

    .line 143
    .local v1, e:Lcom/google/android/mms/InvalidHeaderValueException;
    const/16 v8, -0x421

    .line 149
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ltmsdkobf/iu;->rV:I

    .line 150
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    if-nez v9, :cond_0

    .line 151
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 152
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v10, 0x1

    const-wide/16 v11, 0x7530

    invoke-virtual {v9, v10, v11, v12}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 144
    .end local v1           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_1
    move-exception v1

    .line 145
    .local v1, e:Ltmsdk/common/exception/NetWorkException;
    :try_start_4
    invoke-virtual {v1}, Ltmsdk/common/exception/NetWorkException;->getErrCode()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    .line 149
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ltmsdkobf/iu;->rV:I

    .line 150
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    if-nez v9, :cond_0

    .line 151
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 152
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v10, 0x1

    const-wide/16 v11, 0x7530

    invoke-virtual {v9, v10, v11, v12}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 146
    .end local v1           #e:Ltmsdk/common/exception/NetWorkException;
    :catch_2
    move-exception v1

    .line 147
    .local v1, e:Ljava/lang/Exception;
    const/16 v8, -0x3ea

    .line 149
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ltmsdkobf/iu;->rV:I

    .line 150
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    if-nez v9, :cond_0

    .line 151
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 152
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v10, 0x1

    const-wide/16 v11, 0x7530

    invoke-virtual {v9, v10, v11, v12}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 149
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    iget v9, p0, Ltmsdkobf/iu;->rV:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ltmsdkobf/iu;->rV:I

    .line 150
    iget v9, p0, Ltmsdkobf/iu;->rV:I

    if-nez v9, :cond_7

    .line 151
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ltmsdkobf/iu$a;->removeMessages(I)V

    .line 152
    iget-object v9, p0, Ltmsdkobf/iu;->sd:Ltmsdkobf/iu$a;

    const/4 v10, 0x1

    const-wide/16 v11, 0x7530

    invoke-virtual {v9, v10, v11, v12}, Ltmsdkobf/iu$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    throw v8
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ltmsdkobf/iu;->se:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Ltmsdkobf/iu;->se:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/iu;->se:Landroid/os/HandlerThread;

    .line 106
    :cond_0
    return-void
.end method
