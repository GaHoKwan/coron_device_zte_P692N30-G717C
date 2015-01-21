.class public final Ltmsdkobf/jx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/jx$1;,
        Ltmsdkobf/jx$a;
    }
.end annotation


# static fields
.field private static volatile xU:Z

.field private static volatile xV:Ljava/lang/String;

.field private static volatile xW:Z

.field private static volatile xX:Z

.field private static volatile xY:J

.field private static volatile xZ:J

.field private static ya:Ljava/lang/Object;


# instance fields
.field private mPostData:[B

.field private mUrl:Ljava/lang/String;

.field private sj:I

.field private xE:Ljava/lang/String;

.field private xG:Ljava/lang/String;

.field private xH:Ljava/net/HttpURLConnection;

.field private xI:I

.field private xJ:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private xK:Z

.field private xL:Z

.field private xM:B

.field private xN:B

.field private xO:B

.field private xP:I

.field private xQ:I

.field private xR:Z

.field private xS:Z

.field private xT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 84
    sput-boolean v1, Ltmsdkobf/jx;->xU:Z

    .line 85
    const/4 v0, 0x0

    sput-object v0, Ltmsdkobf/jx;->xV:Ljava/lang/String;

    .line 86
    sput-boolean v1, Ltmsdkobf/jx;->xW:Z

    .line 87
    sput-boolean v1, Ltmsdkobf/jx;->xX:Z

    .line 88
    sput-wide v2, Ltmsdkobf/jx;->xY:J

    .line 91
    sput-wide v2, Ltmsdkobf/jx;->xZ:J

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltmsdkobf/jx;->ya:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    const/16 v3, 0x7530

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "GET"

    iput-object v0, p0, Ltmsdkobf/jx;->xG:Ljava/lang/String;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Ltmsdkobf/jx;->xI:I

    .line 69
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ltmsdkobf/jx;->xJ:Ljava/util/Hashtable;

    .line 70
    iput-boolean v1, p0, Ltmsdkobf/jx;->xK:Z

    .line 71
    iput-boolean v2, p0, Ltmsdkobf/jx;->xL:Z

    .line 72
    iput-byte v1, p0, Ltmsdkobf/jx;->xM:B

    .line 73
    iput-byte v1, p0, Ltmsdkobf/jx;->xN:B

    .line 74
    iput-byte v1, p0, Ltmsdkobf/jx;->xO:B

    .line 75
    iput v3, p0, Ltmsdkobf/jx;->xP:I

    .line 76
    iput v3, p0, Ltmsdkobf/jx;->xQ:I

    .line 77
    iput-boolean v2, p0, Ltmsdkobf/jx;->xR:Z

    .line 102
    iput-object p1, p0, Ltmsdkobf/jx;->mUrl:Ljava/lang/String;

    .line 103
    invoke-static {}, Ltmsdkobf/jx;->eW()V

    .line 104
    return-void
.end method

.method public static a(Ljava/lang/String;ZLjava/lang/String;I)Ltmsdkobf/jx;
    .locals 6
    .parameter "requestUrl"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/NetWorkException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-static {}, Ltmsdkobf/jx;->eW()V

    .line 300
    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->canNetworkOnMainThread()Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 302
    new-instance v2, Ltmsdk/common/exception/NetworkOnMainThreadException;

    invoke-direct {v2}, Ltmsdk/common/exception/NetworkOnMainThreadException;-><init>()V

    throw v2

    .line 305
    :cond_0
    const/16 v1, -0x3e8

    .line 306
    .local v1, errCode:I
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 307
    :cond_1
    new-instance v2, Ltmsdk/common/exception/NetWorkException;

    const-string v3, "url is null!"

    invoke-direct {v2, v1, v3}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 309
    :cond_2
    new-instance v0, Ltmsdkobf/jx;

    invoke-direct {v0, p0}, Ltmsdkobf/jx;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, con:Ltmsdkobf/jx;
    const/4 v2, 0x1

    iput-boolean v2, v0, Ltmsdkobf/jx;->xS:Z

    .line 311
    iput-boolean p1, v0, Ltmsdkobf/jx;->xT:Z

    .line 312
    iput-object p2, v0, Ltmsdkobf/jx;->xE:Ljava/lang/String;

    .line 313
    iput p3, v0, Ltmsdkobf/jx;->sj:I

    .line 314
    invoke-direct {v0, p0, p1, p2, p3}, Ltmsdkobf/jx;->b(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 315
    return-object v0
.end method

.method private a(Ljava/lang/String;Ltmsdkobf/t;)V
    .locals 9
    .parameter "requestUrl"
    .parameter "networkType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/NetWorkException;
        }
    .end annotation

    .prologue
    .line 237
    const/16 v1, -0x3e8

    .line 240
    .local v1, errCode:I
    :try_start_0
    invoke-virtual {p0}, Ltmsdkobf/jx;->getHostAddress()Ljava/lang/String;

    .line 241
    sget-object v5, Ltmsdkobf/t;->aY:Ltmsdkobf/t;

    if-eq v5, p2, :cond_0

    .line 242
    sget-object v5, Ltmsdkobf/t;->bb:Ltmsdkobf/t;

    if-ne v5, p2, :cond_1

    .line 243
    new-instance v2, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getProxyHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getProxyPort()I

    move-result v7

    invoke-static {v6, v7}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 244
    .local v2, proxy:Ljava/net/Proxy;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 245
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    iput-object v5, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    .line 246
    const/4 v5, 0x1

    iput-boolean v5, p0, Ltmsdkobf/jx;->xK:Z

    .line 289
    .end local v2           #proxy:Ljava/net/Proxy;
    .end local v4           #url:Ljava/net/URL;
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-boolean v5, p0, Ltmsdkobf/jx;->xR:Z

    if-eqz v5, :cond_4

    sget-object v5, Ltmsdkobf/t;->ba:Ltmsdkobf/t;

    if-ne v5, p2, :cond_4

    const-string v5, "com.tencent.qqpimsecure"

    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 250
    invoke-static {}, Ltmsdk/common/utils/WifiUtil;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, ssid:Ljava/lang/String;
    sget-object v5, Ltmsdkobf/jx;->xV:Ljava/lang/String;

    if-eqz v5, :cond_2

    sget-object v5, Ltmsdkobf/jx;->xV:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Ltmsdkobf/jx;->xY:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1388

    cmp-long v5, v5, v7

    if-lez v5, :cond_5

    sget-boolean v5, Ltmsdkobf/jx;->xW:Z

    if-nez v5, :cond_5

    .line 254
    :cond_2
    const/4 v5, 0x0

    sput-boolean v5, Ltmsdkobf/jx;->xU:Z

    .line 255
    const/4 v5, 0x1

    sput-boolean v5, Ltmsdkobf/jx;->xW:Z

    .line 256
    sput-object v3, Ltmsdkobf/jx;->xV:Ljava/lang/String;

    .line 257
    new-instance v5, Ltmsdkobf/jx$a;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Ltmsdkobf/jx$a;-><init>(Ltmsdkobf/jx;Ltmsdkobf/jx$1;)V

    invoke-static {v5}, Ltmsdk/common/utils/WifiUtil;->needWifiApprove(Ltmsdk/common/utils/WifiUtil$IWifiApproveCheckCallBack;)Ljava/lang/String;

    .line 264
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Ltmsdkobf/jx;->xY:J

    .line 266
    .end local v3           #ssid:Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 267
    .restart local v4       #url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    iput-object v5, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    .line 268
    const/4 v5, 0x0

    iput-boolean v5, p0, Ltmsdkobf/jx;->xK:Z

    .line 270
    iget-object v5, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    iget v6, p0, Ltmsdkobf/jx;->xQ:I

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 271
    iget-object v5, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    iget v6, p0, Ltmsdkobf/jx;->xP:I

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ltmsdk/common/exception/WifiApproveException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 274
    .end local v4           #url:Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/lang/IllegalArgumentException;
    add-int/lit8 v1, v1, -0x39

    .line 276
    new-instance v5, Ltmsdk/common/exception/NetWorkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalArgumentException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 259
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #ssid:Ljava/lang/String;
    :cond_5
    :try_start_1
    sget-boolean v5, Ltmsdkobf/jx;->xU:Z

    if-eqz v5, :cond_3

    sget-boolean v5, Ltmsdkobf/jx;->xW:Z

    if-nez v5, :cond_3

    .line 260
    const/4 v5, 0x1

    sput-boolean v5, Ltmsdkobf/jx;->xW:Z

    .line 261
    new-instance v5, Ltmsdkobf/jx$a;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Ltmsdkobf/jx$a;-><init>(Ltmsdkobf/jx;Ltmsdkobf/jx$1;)V

    invoke-static {v5}, Ltmsdk/common/utils/WifiUtil;->needWifiApprove(Ltmsdk/common/utils/WifiUtil$IWifiApproveCheckCallBack;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ltmsdk/common/exception/WifiApproveException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    .line 277
    .end local v3           #ssid:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/SecurityException;
    add-int/lit8 v1, v1, -0x3a

    .line 279
    new-instance v5, Ltmsdk/common/exception/NetWorkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecurityException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 280
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 281
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    add-int/lit8 v1, v1, -0x3b

    .line 282
    new-instance v5, Ltmsdk/common/exception/NetWorkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnsupportedOperationException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 283
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    :catch_3
    move-exception v0

    .line 284
    .local v0, e:Ljava/io/IOException;
    add-int/lit8 v1, v1, -0x38

    .line 285
    new-instance v5, Ltmsdk/common/exception/NetWorkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 286
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v5

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 7
    .parameter "requestUrl"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/NetWorkException;
        }
    .end annotation

    .prologue
    .line 320
    const/16 v1, -0x3e8

    .line 323
    .local v1, errCode:I
    :try_start_0
    invoke-virtual {p0}, Ltmsdkobf/jx;->getHostAddress()Ljava/lang/String;

    .line 324
    if-eqz p2, :cond_2

    .line 325
    if-nez p3, :cond_0

    .line 326
    const-string p3, "10.0.0.172"

    .line 328
    :cond_0
    if-gez p4, :cond_1

    .line 329
    const/16 p4, 0x50

    .line 331
    :cond_1
    new-instance v2, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-static {p3, p4}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 332
    .local v2, proxy:Ljava/net/Proxy;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 333
    .local v3, url:Ljava/net/URL;
    invoke-virtual {v3, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    iput-object v4, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    .line 334
    const/4 v4, 0x1

    iput-boolean v4, p0, Ltmsdkobf/jx;->xK:Z

    .line 341
    .end local v2           #proxy:Ljava/net/Proxy;
    :goto_0
    iget-object v4, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    const/16 v5, 0x7530

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 342
    iget-object v4, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    iget v5, p0, Ltmsdkobf/jx;->xP:I

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 357
    return-void

    .line 336
    .end local v3           #url:Ljava/net/URL;
    :cond_2
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 337
    .restart local v3       #url:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    iput-object v4, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    .line 338
    const/4 v4, 0x0

    iput-boolean v4, p0, Ltmsdkobf/jx;->xK:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 343
    .end local v3           #url:Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Ljava/lang/IllegalArgumentException;
    add-int/lit8 v1, v1, -0x39

    .line 345
    new-instance v4, Ltmsdk/common/exception/NetWorkException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 346
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 347
    .local v0, e:Ljava/lang/SecurityException;
    add-int/lit8 v1, v1, -0x3a

    .line 348
    new-instance v4, Ltmsdk/common/exception/NetWorkException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecurityException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 349
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 350
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    add-int/lit8 v1, v1, -0x3b

    .line 351
    new-instance v4, Ltmsdk/common/exception/NetWorkException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnsupportedOperationException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 352
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    :catch_3
    move-exception v0

    .line 353
    .local v0, e:Ljava/io/IOException;
    add-int/lit8 v1, v1, -0x38

    .line 354
    new-instance v4, Ltmsdk/common/exception/NetWorkException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method private b(Ljava/io/InputStream;)[B
    .locals 11
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/NetWorkException;
        }
    .end annotation

    .prologue
    .line 682
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 683
    .local v1, bis:Ljava/io/BufferedInputStream;
    const/16 v7, 0x800

    new-array v2, v7, [B

    .line 684
    .local v2, buffer:[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 685
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 686
    .local v5, len:I
    const/4 v6, 0x0

    .line 688
    .local v6, rst:[B
    :goto_0
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 689
    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 692
    :catch_0
    move-exception v4

    .line 693
    .local v4, e1:Ljava/io/IOException;
    :try_start_1
    new-instance v7, Ltmsdk/common/exception/NetWorkException;

    const/16 v8, -0x38

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get Bytes from inputStream when read buffer: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    .end local v4           #e1:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 697
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 701
    :goto_1
    const/4 v1, 0x0

    .line 703
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 707
    :goto_2
    const/4 v0, 0x0

    throw v7

    .line 691
    :cond_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v6

    .line 697
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 701
    :goto_3
    const/4 v1, 0x0

    .line 703
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 707
    :goto_4
    const/4 v0, 0x0

    .line 709
    return-object v6

    .line 698
    :catch_1
    move-exception v3

    .line 699
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 704
    .end local v3           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 705
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 698
    .end local v3           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 699
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 704
    .end local v3           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 705
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static cc(Ljava/lang/String;)Ltmsdkobf/jx;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/NetWorkException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ltmsdkobf/jx;->e(Ljava/lang/String;Z)Ltmsdkobf/jx;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;Z)Ltmsdkobf/jx;
    .locals 7
    .parameter "url"
    .parameter "needCheckWifi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/NetWorkException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Ltmsdkobf/jx;->eW()V

    .line 174
    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->canNetworkOnMainThread()Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 176
    new-instance v3, Ltmsdk/common/exception/NetworkOnMainThreadException;

    invoke-direct {v3}, Ltmsdk/common/exception/NetworkOnMainThreadException;-><init>()V

    throw v3

    .line 179
    :cond_0
    const/16 v1, -0x3e8

    .line 180
    .local v1, errCode:I
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 181
    :cond_1
    new-instance v3, Ltmsdk/common/exception/NetWorkException;

    const-string v4, "url is null!"

    invoke-direct {v3, v1, v4}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 183
    :cond_2
    new-instance v0, Ltmsdkobf/jx;

    invoke-direct {v0, p0}, Ltmsdkobf/jx;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, con:Ltmsdkobf/jx;
    const/4 v3, 0x0

    iput-boolean v3, v0, Ltmsdkobf/jx;->xS:Z

    .line 185
    iput-boolean p1, v0, Ltmsdkobf/jx;->xR:Z

    .line 186
    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getNetworkType()Ltmsdkobf/t;

    move-result-object v2

    .line 187
    .local v2, networkType:Ltmsdkobf/t;
    sget-object v3, Ltmsdkobf/t;->aY:Ltmsdkobf/t;

    if-ne v3, v2, :cond_3

    .line 188
    add-int/lit8 v1, v1, -0x34

    .line 189
    new-instance v3, Ltmsdk/common/exception/NetWorkException;

    const-string v4, "no connecition!"

    invoke-direct {v3, v1, v4}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 191
    :cond_3
    iget-object v3, v0, Ltmsdkobf/jx;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Ltmsdkobf/jx;->a(Ljava/lang/String;Ltmsdkobf/t;)V

    .line 192
    return-object v0
.end method

.method public static eW()V
    .locals 4

    .prologue
    .line 110
    new-instance v0, Ltmsdkobf/kf;

    const-string v1, "wup"

    invoke-direct {v0, v1}, Ltmsdkobf/kf;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, properties:Ltmsdkobf/kf;
    const-string v1, "dnc"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ltmsdkobf/kf;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Ltmsdkobf/jx;->xZ:J

    .line 112
    return-void
.end method

.method public static eX()Z
    .locals 13

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 131
    const-string v8, "HttpConnection"

    const-string v9, " couldNotConnect()"

    invoke-static {v8, v9}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    sget-object v8, Ltmsdkobf/jx;->ya:Ljava/lang/Object;

    monitor-enter v8

    .line 134
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 135
    .local v4, now:J
    sget-wide v9, Ltmsdkobf/jx;->xZ:J

    sub-long v1, v9, v4

    .line 136
    .local v1, diff:J
    const-string v9, "HttpConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " couldNotConnect() diff: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    const-wide/32 v9, 0x4f1a00

    cmp-long v9, v1, v9

    if-lez v9, :cond_0

    move v3, v6

    .line 138
    .local v3, moreThanOneDay:Z
    :goto_0
    sget-wide v9, Ltmsdkobf/jx;->xZ:J

    sub-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-ltz v9, :cond_1

    move v0, v6

    .line 139
    .local v0, couldNot:Z
    :goto_1
    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 140
    const-string v7, "HttpConnection"

    const-string v9, " couldNotConnect() true"

    invoke-static {v7, v9}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    monitor-exit v8

    .line 145
    :goto_2
    return v6

    .end local v0           #couldNot:Z
    .end local v3           #moreThanOneDay:Z
    :cond_0
    move v3, v7

    .line 137
    goto :goto_0

    .restart local v3       #moreThanOneDay:Z
    :cond_1
    move v0, v7

    .line 138
    goto :goto_1

    .line 144
    .restart local v0       #couldNot:Z
    :cond_2
    const-string v6, "HttpConnection"

    const-string v9, " couldNotConnect() false"

    invoke-static {v6, v9}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    monitor-exit v8

    move v6, v7

    goto :goto_2

    .line 146
    .end local v0           #couldNot:Z
    .end local v1           #diff:J
    .end local v3           #moreThanOneDay:Z
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private eZ()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/NetWorkException;
        }
    .end annotation

    .prologue
    .line 622
    invoke-virtual {p0}, Ltmsdkobf/jx;->close()V

    .line 623
    iget-boolean v2, p0, Ltmsdkobf/jx;->xS:Z

    if-nez v2, :cond_2

    .line 624
    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getNetworkType()Ltmsdkobf/t;

    move-result-object v1

    .line 625
    .local v1, nt:Ltmsdkobf/t;
    invoke-virtual {v1}, Ltmsdkobf/t;->value()I

    move-result v2

    if-nez v2, :cond_0

    .line 626
    const/16 v0, -0x41c

    .line 627
    .local v0, errCode:I
    new-instance v2, Ltmsdk/common/exception/NetWorkException;

    const-string v3, "no connecition!"

    invoke-direct {v2, v0, v3}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 629
    .end local v0           #errCode:I
    :cond_0
    iget-object v2, p0, Ltmsdkobf/jx;->mUrl:Ljava/lang/String;

    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getNetworkType()Ltmsdkobf/t;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ltmsdkobf/jx;->a(Ljava/lang/String;Ltmsdkobf/t;)V

    .line 633
    .end local v1           #nt:Ltmsdkobf/t;
    :goto_0
    iget-object v2, p0, Ltmsdkobf/jx;->xG:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ltmsdkobf/jx;->setRequestMethod(Ljava/lang/String;)V

    .line 634
    const-string v2, "POST"

    iget-object v3, p0, Ltmsdkobf/jx;->xG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltmsdkobf/jx;->mPostData:[B

    if-eqz v2, :cond_1

    .line 635
    iget-object v2, p0, Ltmsdkobf/jx;->mPostData:[B

    invoke-virtual {p0, v2}, Ltmsdkobf/jx;->setPostData([B)V

    .line 637
    :cond_1
    iget-object v2, p0, Ltmsdkobf/jx;->xJ:Ljava/util/Hashtable;

    invoke-virtual {p0, v2}, Ltmsdkobf/jx;->a(Ljava/util/Hashtable;)V

    .line 638
    invoke-virtual {p0}, Ltmsdkobf/jx;->eY()I

    move-result v2

    return v2

    .line 631
    :cond_2
    iget-object v2, p0, Ltmsdkobf/jx;->mUrl:Ljava/lang/String;

    iget-boolean v3, p0, Ltmsdkobf/jx;->xT:Z

    iget-object v4, p0, Ltmsdkobf/jx;->xE:Ljava/lang/String;

    iget v5, p0, Ltmsdkobf/jx;->sj:I

    invoke-direct {p0, v2, v3, v4, v5}, Ltmsdkobf/jx;->b(Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_0
.end method

.method private fb()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/NetWorkException;
        }
    .end annotation

    .prologue
    .line 896
    sget-object v2, Ltmsdkobf/t;->ba:Ltmsdkobf/t;

    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getNetworkType()Ltmsdkobf/t;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 900
    .local v0, time:J
    :cond_2
    :goto_1
    sget-boolean v2, Ltmsdkobf/jx;->xW:Z

    if-eqz v2, :cond_3

    .line 901
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 903
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 910
    :cond_3
    sget-boolean v2, Ltmsdkobf/jx;->xU:Z

    if-eqz v2, :cond_5

    sget-boolean v2, Ltmsdkobf/jx;->xW:Z

    if-nez v2, :cond_5

    sget-boolean v2, Ltmsdkobf/jx;->xX:Z

    if-nez v2, :cond_5

    .line 911
    new-instance v2, Ltmsdk/common/exception/NetWorkException;

    const/16 v3, -0x427

    const-string v4, "wifi need approve!"

    invoke-direct {v2, v3, v4}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 906
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_1

    .line 913
    :cond_5
    sget-boolean v2, Ltmsdkobf/jx;->xW:Z

    if-eqz v2, :cond_0

    .line 914
    const/4 v2, 0x1

    sput-boolean v2, Ltmsdkobf/jx;->xU:Z

    goto :goto_0
.end method

.method static synthetic fc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Ltmsdkobf/jx;->xV:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic fd()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Ltmsdkobf/jx;->xW:Z

    return v0
.end method

.method private isConnected()Z
    .locals 2

    .prologue
    .line 732
    iget v0, p0, Ltmsdkobf/jx;->xI:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget v0, p0, Ltmsdkobf/jx;->xI:I

    const/16 v1, 0xce

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic q(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-boolean p0, Ltmsdkobf/jx;->xW:Z

    return p0
.end method

.method private split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "url"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 924
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 925
    .local v1, split:[Ljava/lang/String;
    const-string v2, "://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 926
    .local v0, index:I
    if-eq v4, v0, :cond_0

    .line 927
    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 929
    :cond_0
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 930
    if-eq v4, v0, :cond_1

    .line 931
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 932
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 938
    :goto_0
    return-object v1

    .line 934
    :cond_1
    aput-object p1, v1, v3

    .line 935
    const-string v2, ""

    aput-object v2, v1, v5

    goto :goto_0
.end method

.method static synthetic y(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-boolean p0, Ltmsdkobf/jx;->xU:Z

    return p0
.end method

.method static synthetic z(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-boolean p0, Ltmsdkobf/jx;->xX:Z

    return p0
.end method


# virtual methods
.method public a(ZLjava/util/concurrent/atomic/AtomicReference;)I
    .locals 8
    .parameter "deflate"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/NetWorkException;
        }
    .end annotation

    .prologue
    .line 652
    .local p2, retBytesRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<[B>;"
    const/16 v3, -0xfa0

    .line 653
    .local v3, rst:I
    iget-object v5, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_0

    invoke-direct {p0}, Ltmsdkobf/jx;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v4, v3

    .line 671
    .end local v3           #rst:I
    .local v4, rst:I
    :goto_0
    return v4

    .line 656
    .end local v4           #rst:I
    .restart local v3       #rst:I
    :cond_1
    const/4 v2, 0x0

    .line 659
    .local v2, rspData:[B
    if-eqz p1, :cond_2

    :try_start_0
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    iget-object v5, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 660
    .local v1, fin:Ljava/io/InputStream;
    :goto_1
    invoke-direct {p0, v1}, Ltmsdkobf/jx;->b(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 668
    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 669
    const/4 v3, 0x0

    move v4, v3

    .line 671
    .end local v3           #rst:I
    .restart local v4       #rst:I
    goto :goto_0

    .line 659
    .end local v1           #fin:Ljava/io/InputStream;
    .end local v4           #rst:I
    .restart local v3       #rst:I
    :cond_2
    :try_start_1
    iget-object v5, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_1

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, e:Ltmsdk/common/exception/NetWorkException;
    invoke-virtual {v0}, Ltmsdk/common/exception/NetWorkException;->getErrCode()I

    move-result v5

    add-int/lit16 v3, v5, -0xfa0

    .line 663
    new-instance v5, Ltmsdk/common/exception/NetWorkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get response exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ltmsdk/common/exception/NetWorkException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 664
    .end local v0           #e:Ltmsdk/common/exception/NetWorkException;
    :catch_1
    move-exception v0

    .line 665
    .local v0, e:Ljava/lang/Exception;
    const/16 v3, -0xfa2

    .line 666
    new-instance v5, Ltmsdk/common/exception/NetWorkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get response exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v5
.end method

.method public a(Ljava/util/Hashtable;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, properties:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 407
    :cond_0
    return-void

    .line 401
    :cond_1
    iget-object v3, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_0

    .line 402
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 403
    .local v2, propertySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 404
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    .line 753
    :cond_0
    return-void
.end method

.method public eY()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/NetWorkException;
        }
    .end annotation

    .prologue
    const/16 v14, 0xc8

    const/4 v13, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 459
    invoke-static {}, Ltmsdkobf/jx;->eX()Z

    move-result v1

    .line 460
    .local v1, couldNotConnect:Z
    const-string v6, "sendRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " sendRequest() couldNotConnect:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    if-eqz v1, :cond_0

    .line 462
    new-instance v6, Ltmsdk/common/exception/NetWorkException;

    const/16 v7, -0x3e8

    const-string v8, "sendRequest() is forbidden couldNotConnect"

    invoke-direct {v6, v7, v8}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 465
    :cond_0
    iget-boolean v6, p0, Ltmsdkobf/jx;->xR:Z

    if-eqz v6, :cond_1

    const-string v6, "com.tencent.qqpimsecure"

    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 466
    invoke-direct {p0}, Ltmsdkobf/jx;->fb()V

    .line 468
    :cond_1
    const/4 v3, 0x0

    .line 470
    .local v3, errCode:I
    :try_start_0
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v6

    const/16 v7, 0x8

    if-ge v6, v7, :cond_2

    .line 471
    const-string v6, "http.keepAlive"

    const-string v7, "false"

    invoke-static {v6, v7}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 474
    :cond_2
    iget-object v6, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 475
    iget-object v6, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    const-string v7, "Pragma"

    const-string v8, "no-cache"

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v6, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    const-string v7, "Cache-Control"

    const-string v8, "no-cache"

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v6, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 478
    const-string v6, "GET"

    iget-object v7, p0, Ltmsdkobf/jx;->xG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 479
    const/16 v3, -0xbb8

    .line 480
    iget-object v6, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    const-string v7, "GET"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 503
    :cond_3
    :goto_0
    iget-object v6, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    iput v6, p0, Ltmsdkobf/jx;->xI:I

    .line 505
    iget v6, p0, Ltmsdkobf/jx;->xI:I

    const/16 v7, 0x12d

    if-lt v6, v7, :cond_7

    iget v6, p0, Ltmsdkobf/jx;->xI:I

    const/16 v7, 0x131

    if-gt v6, v7, :cond_7

    .line 507
    iget-byte v6, p0, Ltmsdkobf/jx;->xM:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Ltmsdkobf/jx;->xM:B

    const/4 v7, 0x3

    if-ge v6, v7, :cond_16

    .line 508
    invoke-virtual {p0}, Ltmsdkobf/jx;->fa()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/jx;->mUrl:Ljava/lang/String;

    .line 509
    invoke-direct {p0}, Ltmsdkobf/jx;->eZ()I

    move-result v6

    .line 618
    :goto_1
    return v6

    .line 482
    :cond_4
    const/16 v3, -0x7d0

    .line 484
    iget-object v6, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 485
    iget-object v6, p0, Ltmsdkobf/jx;->xJ:Ljava/util/Hashtable;

    const-string v7, "Accept"

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 486
    iget-object v6, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    const-string v7, "Accept"

    const-string v8, "*/*"

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v6, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    const-string v7, "Accept-Charset"

    const-string v8, "utf-8"

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_5
    iget-object v6, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 490
    iget-object v6, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 492
    iget-object v6, p0, Ltmsdkobf/jx;->mPostData:[B

    if-eqz v6, :cond_3

    .line 493
    iget-object v6, p0, Ltmsdkobf/jx;->xJ:Ljava/util/Hashtable;

    const-string v7, "Content-Type"

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 494
    iget-object v6, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    const-string v7, "Content-Type"

    const-string v8, "application/octet-stream"

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_6
    iget-object v6, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    const-string v7, "Content-length"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ltmsdkobf/jx;->mPostData:[B

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v6, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 498
    .local v5, outputStream:Ljava/io/OutputStream;
    iget-object v6, p0, Ltmsdkobf/jx;->mPostData:[B

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 499
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 500
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    goto/16 :goto_0

    .line 521
    .end local v5           #outputStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 523
    .local v2, e:Ljava/net/UnknownHostException;
    iget-byte v6, p0, Ltmsdkobf/jx;->xO:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Ltmsdkobf/jx;->xO:B

    if-ge v6, v10, :cond_8

    .line 525
    invoke-virtual {p0}, Ltmsdkobf/jx;->getHostAddress()Ljava/lang/String;

    .line 526
    invoke-direct {p0}, Ltmsdkobf/jx;->eZ()I

    move-result v6

    goto/16 :goto_1

    .line 511
    .end local v2           #e:Ljava/net/UnknownHostException;
    :cond_7
    :try_start_1
    iget v6, p0, Ltmsdkobf/jx;->xI:I

    if-ne v6, v14, :cond_16

    .line 513
    invoke-virtual {p0}, Ltmsdkobf/jx;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, contentType:Ljava/lang/String;
    iget-boolean v6, p0, Ltmsdkobf/jx;->xK:Z

    if-eqz v6, :cond_16

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "vnd.wap.wml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v13, :cond_16

    .line 515
    iget-byte v6, p0, Ltmsdkobf/jx;->xN:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Ltmsdkobf/jx;->xN:B

    if-ge v6, v12, :cond_16

    .line 517
    invoke-direct {p0}, Ltmsdkobf/jx;->eZ()I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    move-result v6

    goto/16 :goto_1

    .line 529
    .end local v0           #contentType:Ljava/lang/String;
    .restart local v2       #e:Ljava/net/UnknownHostException;
    :cond_8
    iget-boolean v6, p0, Ltmsdkobf/jx;->xL:Z

    if-eqz v6, :cond_d

    .line 530
    iput-boolean v11, p0, Ltmsdkobf/jx;->xL:Z

    .line 531
    invoke-virtual {p0}, Ltmsdkobf/jx;->close()V

    .line 532
    iget-boolean v6, p0, Ltmsdkobf/jx;->xK:Z

    if-eqz v6, :cond_b

    .line 533
    iget-object v6, p0, Ltmsdkobf/jx;->mUrl:Ljava/lang/String;

    sget-object v7, Ltmsdkobf/t;->bc:Ltmsdkobf/t;

    invoke-direct {p0, v6, v7}, Ltmsdkobf/jx;->a(Ljava/lang/String;Ltmsdkobf/t;)V

    .line 544
    :cond_9
    :goto_2
    iget-object v6, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_d

    .line 545
    iget-object v6, p0, Ltmsdkobf/jx;->xG:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ltmsdkobf/jx;->setRequestMethod(Ljava/lang/String;)V

    .line 546
    const-string v6, "POST"

    iget-object v7, p0, Ltmsdkobf/jx;->xG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Ltmsdkobf/jx;->mPostData:[B

    if-eqz v6, :cond_a

    .line 547
    iget-object v6, p0, Ltmsdkobf/jx;->mPostData:[B

    invoke-virtual {p0, v6}, Ltmsdkobf/jx;->setPostData([B)V

    .line 549
    :cond_a
    iget-object v6, p0, Ltmsdkobf/jx;->xJ:Ljava/util/Hashtable;

    invoke-virtual {p0, v6}, Ltmsdkobf/jx;->a(Ljava/util/Hashtable;)V

    .line 550
    invoke-virtual {p0}, Ltmsdkobf/jx;->eY()I

    move-result v6

    goto/16 :goto_1

    .line 534
    :cond_b
    sget-object v6, Ltmsdkobf/t;->ba:Ltmsdkobf/t;

    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getNetworkType()Ltmsdkobf/t;

    move-result-object v7

    if-ne v6, v7, :cond_9

    .line 535
    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getProxyHost()Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, host:Ljava/lang/String;
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_c

    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getProxyPort()I

    move-result v6

    if-lez v6, :cond_c

    .line 537
    iget-object v6, p0, Ltmsdkobf/jx;->mUrl:Ljava/lang/String;

    sget-object v7, Ltmsdkobf/t;->bb:Ltmsdkobf/t;

    invoke-direct {p0, v6, v7}, Ltmsdkobf/jx;->a(Ljava/lang/String;Ltmsdkobf/t;)V

    goto :goto_2

    .line 539
    :cond_c
    add-int/lit8 v3, v3, -0x3e

    .line 540
    new-instance v6, Ltmsdk/common/exception/NetWorkException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendRequest UnknownHostException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " networktype:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getNetworkType()Ltmsdkobf/t;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 553
    .end local v4           #host:Ljava/lang/String;
    :cond_d
    add-int/lit8 v3, v3, -0x3e

    .line 554
    new-instance v6, Ltmsdk/common/exception/NetWorkException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendRequest UnknownHostException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " networktype:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getNetworkType()Ltmsdkobf/t;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 556
    .end local v2           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v2

    .line 557
    .local v2, e:Ljava/lang/IllegalAccessError;
    iget-byte v6, p0, Ltmsdkobf/jx;->xO:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Ltmsdkobf/jx;->xO:B

    if-ge v6, v10, :cond_e

    .line 558
    invoke-direct {p0}, Ltmsdkobf/jx;->eZ()I

    move-result v6

    goto/16 :goto_1

    .line 560
    :cond_e
    add-int/lit8 v3, v3, -0x3c

    .line 561
    new-instance v6, Ltmsdk/common/exception/NetWorkException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendRequest IllegalAccessError: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/IllegalAccessError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 562
    .end local v2           #e:Ljava/lang/IllegalAccessError;
    :catch_2
    move-exception v2

    .line 563
    .local v2, e:Ljava/lang/IllegalStateException;
    iget-byte v6, p0, Ltmsdkobf/jx;->xO:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Ltmsdkobf/jx;->xO:B

    if-ge v6, v10, :cond_f

    .line 564
    invoke-direct {p0}, Ltmsdkobf/jx;->eZ()I

    move-result v6

    goto/16 :goto_1

    .line 566
    :cond_f
    add-int/lit8 v3, v3, -0x3d

    .line 567
    new-instance v6, Ltmsdk/common/exception/NetWorkException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendRequest IllegalStateException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 568
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v2

    .line 569
    .local v2, e:Ljava/net/ProtocolException;
    iget-byte v6, p0, Ltmsdkobf/jx;->xO:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Ltmsdkobf/jx;->xO:B

    if-ge v6, v10, :cond_10

    .line 570
    invoke-direct {p0}, Ltmsdkobf/jx;->eZ()I

    move-result v6

    goto/16 :goto_1

    .line 572
    :cond_10
    add-int/lit8 v3, v3, -0x33

    .line 573
    new-instance v6, Ltmsdk/common/exception/NetWorkException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendRequest ProtocolException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 574
    .end local v2           #e:Ljava/net/ProtocolException;
    :catch_4
    move-exception v2

    .line 575
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    iget-byte v6, p0, Ltmsdkobf/jx;->xO:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Ltmsdkobf/jx;->xO:B

    if-ge v6, v10, :cond_11

    .line 576
    invoke-direct {p0}, Ltmsdkobf/jx;->eZ()I

    move-result v6

    goto/16 :goto_1

    .line 578
    :cond_11
    add-int/lit8 v3, v3, -0x33

    .line 579
    new-instance v6, Ltmsdk/common/exception/NetWorkException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendRequest ClientProtocolException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 580
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_5
    move-exception v2

    .line 581
    .local v2, e:Ljava/net/SocketException;
    iget-byte v6, p0, Ltmsdkobf/jx;->xO:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Ltmsdkobf/jx;->xO:B

    if-ge v6, v10, :cond_12

    .line 582
    invoke-direct {p0}, Ltmsdkobf/jx;->eZ()I

    move-result v6

    goto/16 :goto_1

    .line 584
    :cond_12
    add-int/lit8 v3, v3, -0x36

    .line 585
    new-instance v6, Ltmsdk/common/exception/NetWorkException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendRequest SocketException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 586
    .end local v2           #e:Ljava/net/SocketException;
    :catch_6
    move-exception v2

    .line 587
    .local v2, e:Ljava/net/SocketTimeoutException;
    iget-byte v6, p0, Ltmsdkobf/jx;->xO:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Ltmsdkobf/jx;->xO:B

    if-ge v6, v10, :cond_13

    .line 588
    const v6, 0xea60

    iput v6, p0, Ltmsdkobf/jx;->xP:I

    .line 589
    const v6, 0xea60

    iput v6, p0, Ltmsdkobf/jx;->xQ:I

    .line 590
    invoke-direct {p0}, Ltmsdkobf/jx;->eZ()I

    move-result v6

    goto/16 :goto_1

    .line 592
    :cond_13
    add-int/lit8 v3, v3, -0x37

    .line 593
    new-instance v6, Ltmsdk/common/exception/NetWorkException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendRequest"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 594
    .end local v2           #e:Ljava/net/SocketTimeoutException;
    :catch_7
    move-exception v2

    .line 595
    .local v2, e:Ltmsdk/common/exception/NetWorkException;
    iget-byte v6, p0, Ltmsdkobf/jx;->xO:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Ltmsdkobf/jx;->xO:B

    if-ge v6, v10, :cond_14

    .line 596
    invoke-direct {p0}, Ltmsdkobf/jx;->eZ()I

    move-result v6

    goto/16 :goto_1

    .line 598
    :cond_14
    add-int/lit8 v3, v3, -0x38

    .line 599
    new-instance v6, Ltmsdk/common/exception/NetWorkException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendRequest NetWorkException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ltmsdk/common/exception/NetWorkException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 600
    .end local v2           #e:Ltmsdk/common/exception/NetWorkException;
    :catch_8
    move-exception v2

    .line 601
    .local v2, e:Ljava/lang/Exception;
    iget-byte v6, p0, Ltmsdkobf/jx;->xO:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Ltmsdkobf/jx;->xO:B

    if-ge v6, v10, :cond_15

    .line 602
    invoke-direct {p0}, Ltmsdkobf/jx;->eZ()I

    move-result v6

    goto/16 :goto_1

    .line 604
    :cond_15
    new-instance v6, Ltmsdk/common/exception/NetWorkException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendRequest "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 606
    .end local v2           #e:Ljava/lang/Exception;
    :cond_16
    iget v6, p0, Ltmsdkobf/jx;->xI:I

    const/16 v7, 0xce

    if-eq v6, v7, :cond_19

    iget v6, p0, Ltmsdkobf/jx;->xI:I

    if-eq v6, v14, :cond_19

    .line 608
    iget-byte v6, p0, Ltmsdkobf/jx;->xO:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Ltmsdkobf/jx;->xO:B

    if-ge v6, v10, :cond_18

    .line 609
    if-ne v3, v13, :cond_17

    const-string v6, "true"

    const-string v7, "http.keepAlive"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 610
    const-string v6, "http.keepAlive"

    const-string v7, "false"

    invoke-static {v6, v7}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 612
    :cond_17
    invoke-direct {p0}, Ltmsdkobf/jx;->eZ()I

    move-result v6

    goto/16 :goto_1

    .line 614
    :cond_18
    iget v6, p0, Ltmsdkobf/jx;->xI:I

    add-int/2addr v3, v6

    .line 615
    new-instance v6, Ltmsdk/common/exception/NetWorkException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "response code is unnormal: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Ltmsdkobf/jx;->xI:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " SDK Version:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 618
    :cond_19
    iget v6, p0, Ltmsdkobf/jx;->xI:I

    goto/16 :goto_1
.end method

.method public fa()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/NetWorkException;
        }
    .end annotation

    .prologue
    .line 837
    :try_start_0
    iget-object v1, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 838
    :catch_0
    move-exception v0

    .line 839
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ltmsdk/common/exception/NetWorkException;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get redirect url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/NetWorkException;
        }
    .end annotation

    .prologue
    .line 822
    :try_start_0
    iget-object v1, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ltmsdk/common/exception/NetWorkException;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get content type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 955
    iget-object v3, p0, Ltmsdkobf/jx;->mUrl:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 956
    const-string v3, ""

    .line 981
    :goto_0
    return-object v3

    .line 958
    :cond_0
    iget-object v3, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_3

    iget-object v3, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 959
    .local v1, host:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    if-nez v3, :cond_2

    .line 960
    iget-object v3, p0, Ltmsdkobf/jx;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v3}, Ltmsdkobf/jx;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v4

    .line 963
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 964
    .local v2, inetAddress:Ljava/net/InetAddress;
    if-eqz v2, :cond_4

    .line 965
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 958
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #inetAddress:Ljava/net/InetAddress;
    :cond_3
    iget-object v3, p0, Ltmsdkobf/jx;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v3}, Ltmsdkobf/jx;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v4

    goto :goto_1

    .line 967
    .restart local v1       #host:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 968
    .local v0, e:Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 981
    .end local v0           #e:Ljava/net/UnknownHostException;
    :cond_4
    :goto_2
    const-string v3, ""

    goto :goto_0

    .line 969
    :catch_1
    move-exception v0

    .line 979
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2
.end method

.method public setPostData([B)V
    .locals 0
    .parameter "postData"

    .prologue
    .line 438
    iput-object p1, p0, Ltmsdkobf/jx;->mPostData:[B

    .line 439
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .parameter "method"

    .prologue
    .line 415
    iput-object p1, p0, Ltmsdkobf/jx;->xG:Ljava/lang/String;

    .line 416
    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    const-string v0, "GET"

    iput-object v0, p0, Ltmsdkobf/jx;->xG:Ljava/lang/String;

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const-string v0, "POST"

    iput-object v0, p0, Ltmsdkobf/jx;->xG:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 366
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Ltmsdkobf/jx;->xH:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Ltmsdkobf/jx;->xJ:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
