.class public Lcom/mediatek/bluetooth/map/MmsConnection;
.super Ljava/lang/Object;
.source "MmsConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;,
        Lcom/mediatek/bluetooth/map/MmsConnection$ConnectionListener;,
        Lcom/mediatek/bluetooth/map/MmsConnection$Task;
    }
.end annotation


# static fields
.field private static final APN_PROJECTION:[Ljava/lang/String; = null

.field private static final CALLING_LINE:Ljava/lang/String; = "x-up-calling-line-id"

.field private static final COLUMN_MMSC:I = 0x1

.field private static final COLUMN_MMSPORT:I = 0x3

.field private static final COLUMN_MMSPROXY:I = 0x2

.field private static final COLUMN_TYPE:I = 0x0

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android-Mms/2.0"

.field private static final HDR_KEY_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final HDR_KEY_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final HDR_VALUE_ACCEPT:Ljava/lang/String; = "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

.field private static final HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String; = null

.field private static final HTTP_PARAMS_LINE1_KEY:Ljava/lang/String; = "##LINE1##"

.field private static final MMS_EVENT_NETWORK_READY:I = 0x1

.field private static final MMS_EVENT_NEW_PDU:I = 0x0

.field private static final MMS_EVENT_SEND_COMPLETE:I = 0x2

.field public static final NO_TOKEN:J = -0x1L

.field public static final STATE_FAIL:I = 0x2

.field public static final STATE_PENDING:I = 0x0

.field public static final STATE_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MmsConnection"

.field private static final UAPROF:Ljava/lang/String; = "http://www.google.com/oha/rdf/ua-profile-kila.xml"

.field private static final UAPROF_TAG_NAME:Ljava/lang/String; = "x-wap-profile"

.field private static mContext:Landroid/content/Context;

.field private static mHttpSocketTimeout:I

.field private static mMmsConnection:Lcom/mediatek/bluetooth/map/MmsConnection;

.field private static mProxyAddress:Ljava/lang/String;

.field private static mProxyPort:I

.field private static mServiceCenter:Ljava/lang/String;

.field private static mSimId:I

.field private static mUserAgent:Ljava/lang/String;


# instance fields
.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mDataTransferring:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLisenter:Lcom/mediatek/bluetooth/map/MmsConnection$ConnectionListener;

.field private mPendingTask:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/bluetooth/map/MmsConnection$Task;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverFlag:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 121
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/bluetooth/map/MmsConnection;->APN_PROJECTION:[Ljava/lang/String;

    .line 133
    const v0, 0xea60

    sput v0, Lcom/mediatek/bluetooth/map/MmsConnection;->mHttpSocketTimeout:I

    .line 149
    invoke-static {}, Lcom/mediatek/bluetooth/map/MmsConnection;->getHttpAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/map/MmsConnection;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 155
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/bluetooth/map/MmsConnection;->mProxyPort:I

    .line 160
    const-string v0, "Android-Mms/2.0"

    sput-object v0, Lcom/mediatek/bluetooth/map/MmsConnection;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "sim"

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mPendingTask:Ljava/util/ArrayList;

    .line 167
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mReceiverFlag:Z

    .line 168
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mDataTransferring:Z

    .line 178
    new-instance v0, Lcom/mediatek/bluetooth/map/MmsConnection$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/MmsConnection$1;-><init>(Lcom/mediatek/bluetooth/map/MmsConnection;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mHandler:Landroid/os/Handler;

    .line 224
    new-instance v0, Lcom/mediatek/bluetooth/map/MmsConnection$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/MmsConnection$2;-><init>(Lcom/mediatek/bluetooth/map/MmsConnection;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 255
    sput-object p1, Lcom/mediatek/bluetooth/map/MmsConnection;->mContext:Landroid/content/Context;

    .line 256
    sput p2, Lcom/mediatek/bluetooth/map/MmsConnection;->mSimId:I

    .line 257
    invoke-static {}, Lcom/mediatek/bluetooth/map/MmsConnection;->init()V

    .line 258
    sget-object v0, Lcom/mediatek/bluetooth/map/MmsConnection;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceCenter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/bluetooth/map/MmsConnection;->mServiceCenter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProxyAddress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/bluetooth/map/MmsConnection;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProxyPort:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/bluetooth/map/MmsConnection;->mProxyPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-static {p0}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/map/MmsConnection;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mPendingTask:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/bluetooth/map/MmsConnection;J[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/map/MmsConnection;->processConnection(J[B)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/map/MmsConnection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/MmsConnection;->startConnection()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/map/MmsConnection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mDataTransferring:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/bluetooth/map/MmsConnection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mDataTransferring:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/map/MmsConnection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/MmsConnection;->process()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/bluetooth/map/MmsConnection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mReceiverFlag:Z

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/bluetooth/map/MmsConnection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mReceiverFlag:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/bluetooth/map/MmsConnection;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$700()Landroid/content/Context;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/mediatek/bluetooth/map/MmsConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/bluetooth/map/MmsConnection;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 744
    return-void
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 585
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 588
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 593
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .end local v0           #country:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private createHttpClient()Landroid/net/http/AndroidHttpClient;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 491
    sget-object v3, Lcom/mediatek/bluetooth/map/MmsConnection;->mUserAgent:Ljava/lang/String;

    sget-object v4, Lcom/mediatek/bluetooth/map/MmsConnection;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 492
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 493
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 496
    sget v2, Lcom/mediatek/bluetooth/map/MmsConnection;->mHttpSocketTimeout:I

    .line 498
    .local v2, soTimeout:I
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 501
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v3, v5, v5}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v0, v3}, Landroid/net/http/AndroidHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;)V

    .line 502
    return-object v0
.end method

.method private declared-synchronized createWakeLock()V
    .locals 3

    .prologue
    .line 733
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 734
    sget-object v1, Lcom/mediatek/bluetooth/map/MmsConnection;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 735
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "MMS Connectivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 736
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 733
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private endConnection()V
    .locals 1

    .prologue
    .line 372
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    sget v0, Lcom/mediatek/bluetooth/map/MmsConnection;->mSimId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/map/MmsConnection;->endMmsConnectivityGemini(I)V

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/MmsConnection;->endMmsConnectivity()V

    goto :goto_0
.end method

.method public static getDefault(Landroid/content/Context;I)Lcom/mediatek/bluetooth/map/MmsConnection;
    .locals 1
    .parameter "context"
    .parameter "sim"

    .prologue
    .line 265
    sget-object v0, Lcom/mediatek/bluetooth/map/MmsConnection;->mMmsConnection:Lcom/mediatek/bluetooth/map/MmsConnection;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lcom/mediatek/bluetooth/map/MmsConnection;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/bluetooth/map/MmsConnection;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/mediatek/bluetooth/map/MmsConnection;->mMmsConnection:Lcom/mediatek/bluetooth/map/MmsConnection;

    .line 268
    :cond_0
    invoke-static {}, Lcom/mediatek/bluetooth/map/MmsConnection;->init()V

    .line 269
    sget-object v0, Lcom/mediatek/bluetooth/map/MmsConnection;->mMmsConnection:Lcom/mediatek/bluetooth/map/MmsConnection;

    return-object v0
.end method

.method private static getHttpAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 571
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 572
    .local v1, locale:Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/MmsConnection;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 575
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 577
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Lcom/mediatek/bluetooth/map/MmsConnection;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 581
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static init()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 281
    const/4 v3, 0x0

    .line 282
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/mediatek/bluetooth/map/MmsConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "current"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/mediatek/bluetooth/map/MmsConnection;->APN_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 285
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 286
    const-string v0, "MmsConnection"

    const-string v1, "Apn is not found in Database!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    const/4 v9, 0x0

    .line 291
    .local v9, sawValidApn:Z
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/mediatek/bluetooth/map/MmsConnection;->mServiceCenter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 293
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/MmsConnection;->isValidApnType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    const/4 v9, 0x1

    .line 295
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_2
    sput-object v0, Lcom/mediatek/bluetooth/map/MmsConnection;->mServiceCenter:Ljava/lang/String;

    .line 296
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/map/MmsConnection;->mProxyAddress:Ljava/lang/String;

    .line 297
    invoke-static {}, Lcom/mediatek/bluetooth/map/MmsConnection;->isProxySet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 300
    .local v8, portString:Ljava/lang/String;
    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/bluetooth/map/MmsConnection;->mProxyPort:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 301
    :catch_0
    move-exception v7

    .line 302
    .local v7, e:Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    const-string v0, "MmsConnection"

    const-string v1, "mms port not set!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 312
    .end local v7           #e:Ljava/lang/NumberFormatException;
    .end local v8           #portString:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    move-object v0, v4

    .line 295
    goto :goto_2

    .line 305
    .restart local v7       #e:Ljava/lang/NumberFormatException;
    .restart local v8       #portString:Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v0, "MmsConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad port number format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 312
    .end local v7           #e:Ljava/lang/NumberFormatException;
    .end local v8           #portString:Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 315
    if-eqz v9, :cond_0

    sget-object v0, Lcom/mediatek/bluetooth/map/MmsConnection;->mServiceCenter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const-string v0, "MmsConnection"

    const-string v1, "Invalid APN setting: MMSC is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static isProxySet()Z
    .locals 1

    .prologue
    .line 567
    sget-object v0, Lcom/mediatek/bluetooth/map/MmsConnection;->mProxyAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/bluetooth/map/MmsConnection;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidApnType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "types"
    .parameter "requestType"

    .prologue
    const/4 v4, 0x1

    .line 554
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v4

    .line 558
    :cond_1
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 559
    .local v3, t:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 558
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 563
    .end local v3           #t:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 756
    if-eqz p0, :cond_0

    .line 757
    const-string v0, "MmsConnection"

    invoke-static {v0, p0}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_0
    return-void
.end method

.method private process()V
    .locals 1

    .prologue
    .line 337
    new-instance v0, Lcom/mediatek/bluetooth/map/MmsConnection$3;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/MmsConnection$3;-><init>(Lcom/mediatek/bluetooth/map/MmsConnection;)V

    .line 345
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 347
    return-void
.end method

.method private processConnection(J[B)V
    .locals 4
    .parameter "token"
    .parameter "pdu"

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/MmsConnection;->ensureRouteToHost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/map/MmsConnection;->httpConnection(J[B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 360
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const-string v1, "fail to rout to host"

    invoke-static {v1}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 751
    :cond_0
    return-void
.end method

.method private startConnection()I
    .locals 2

    .prologue
    .line 364
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    sget v1, Lcom/mediatek/bluetooth/map/MmsConnection;->mSimId:I

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/map/MmsConnection;->beginMmsConnectivityGemini(I)I

    move-result v0

    .line 369
    .local v0, result:I
    :goto_0
    return v0

    .line 367
    .end local v0           #result:I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/MmsConnection;->beginMmsConnectivity()I

    move-result v0

    .restart local v0       #result:I
    goto :goto_0
.end method


# virtual methods
.method public beginMmsConnectivity()I
    .locals 4

    .prologue
    .line 653
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/MmsConnection;->createWakeLock()V

    .line 654
    const-string v1, "beginMmsConnectivity"

    invoke-static {v1}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V

    .line 656
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    const-string v3, "enableMMS"

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 660
    .local v0, result:I
    packed-switch v0, :pswitch_data_0

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot establish MMS connectivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V

    .line 667
    :goto_0
    return v0

    .line 663
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/MmsConnection;->acquireWakeLock()V

    goto :goto_0

    .line 660
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public beginMmsConnectivityGemini(I)I
    .locals 5
    .parameter "simId"

    .prologue
    .line 690
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/MmsConnection;->createWakeLock()V

    .line 696
    move v1, p1

    .line 698
    .local v1, slotId:I
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    const-string v4, "enableMMS"

    invoke-virtual {v2, v3, v4, v1}, Landroid/net/ConnectivityManager;->startUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    move-result v0

    .line 700
    .local v0, result:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginMmsConnectivityGemini: result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V

    .line 701
    packed-switch v0, :pswitch_data_0

    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot establish MMS connectivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V

    .line 708
    :goto_0
    return v0

    .line 704
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/MmsConnection;->acquireWakeLock()V

    goto :goto_0

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public endMmsConnectivity()V
    .locals 3

    .prologue
    .line 672
    const-string v0, "endMmsConnectivity"

    invoke-static {v0}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/MmsConnection;->releaseWakeLock()V

    .line 684
    return-void

    .line 682
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/MmsConnection;->releaseWakeLock()V

    throw v0
.end method

.method public endMmsConnectivityGemini(I)V
    .locals 4
    .parameter "simId"

    .prologue
    .line 714
    const-string v1, "endMmsConnectivityGemini()"

    invoke-static {v1}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V

    .line 718
    move v0, p1

    .line 719
    .local v0, slotId:I
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    const-string v3, "enableMMS"

    invoke-virtual {v1, v2, v3, v0}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeatureGemini(ILjava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/MmsConnection;->releaseWakeLock()V

    .line 727
    return-void

    .line 725
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/MmsConnection;->releaseWakeLock()V

    throw v1
.end method

.method public ensureRouteToHost()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    .line 601
    const-string v3, "ensureRouteToHost"

    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V

    .line 602
    const/4 v1, 0x1

    .line 604
    .local v1, result:Z
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_0

    .line 605
    sget-object v3, Lcom/mediatek/bluetooth/map/MmsConnection;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 608
    :cond_0
    invoke-static {}, Lcom/mediatek/bluetooth/map/MmsConnection;->isProxySet()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 609
    sget-object v3, Lcom/mediatek/bluetooth/map/MmsConnection;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->lookupHost(Ljava/lang/String;)I

    move-result v0

    .line 610
    .local v0, inetAddr:I
    if-ne v0, v5, :cond_2

    .line 611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot establish route for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/bluetooth/map/MmsConnection;->mServiceCenter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Unknown host"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V

    .line 612
    const/4 v1, 0x0

    .line 632
    :cond_1
    :goto_0
    return v1

    .line 614
    :cond_2
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v6, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot establish route to proxy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V

    .line 616
    const/4 v1, 0x0

    goto :goto_0

    .line 620
    .end local v0           #inetAddr:I
    :cond_3
    sget-object v3, Lcom/mediatek/bluetooth/map/MmsConnection;->mServiceCenter:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 621
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->lookupHost(Ljava/lang/String;)I

    move-result v0

    .line 622
    .restart local v0       #inetAddr:I
    if-ne v0, v5, :cond_4

    .line 623
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot establish route for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/bluetooth/map/MmsConnection;->mServiceCenter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Unknown host"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V

    .line 624
    const/4 v1, 0x0

    goto :goto_0

    .line 626
    :cond_4
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v6, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 627
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot establish route to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/bluetooth/map/MmsConnection;->mServiceCenter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V

    .line 628
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public httpConnection(J[B)[B
    .locals 22
    .parameter "token"
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    sget-object v21, Lcom/mediatek/bluetooth/map/MmsConnection;->mServiceCenter:Ljava/lang/String;

    .line 381
    .local v21, url:Ljava/lang/String;
    const-string v3, "httpConnection()"

    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V

    .line 385
    const/4 v9, 0x0

    .line 389
    .local v9, client:Landroid/net/http/AndroidHttpClient;
    :try_start_0
    new-instance v13, Ljava/net/URI;

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 390
    .local v13, hostUrl:Ljava/net/URI;
    new-instance v20, Lorg/apache/http/HttpHost;

    invoke-virtual {v13}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Ljava/net/URI;->getPort()I

    move-result v4

    const-string v5, "http"

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 394
    .local v20, target:Lorg/apache/http/HttpHost;
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/bluetooth/map/MmsConnection;->createHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v9

    .line 395
    const/16 v17, 0x0

    .line 396
    .local v17, req:Lorg/apache/http/HttpRequest;
    new-instance v2, Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;

    sget-object v4, Lcom/mediatek/bluetooth/map/MmsConnection;->mContext:Landroid/content/Context;

    move-object/from16 v3, p0

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;-><init>(Lcom/mediatek/bluetooth/map/MmsConnection;Landroid/content/Context;J[B)V

    .line 399
    .local v2, callbackentity:Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;
    const-string v3, "application/vnd.wap.mms-message"

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 401
    new-instance v16, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 402
    .local v16, post:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 403
    move-object/from16 v17, v16

    .line 407
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v15

    .line 408
    .local v15, params:Lorg/apache/http/params/HttpParams;
    invoke-static {}, Lcom/mediatek/bluetooth/map/MmsConnection;->isProxySet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    new-instance v3, Lorg/apache/http/HttpHost;

    sget-object v4, Lcom/mediatek/bluetooth/map/MmsConnection;->mProxyAddress:Ljava/lang/String;

    sget v5, Lcom/mediatek/bluetooth/map/MmsConnection;->mProxyPort:I

    invoke-direct {v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v15, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 412
    :cond_0
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 415
    const-string v3, "Accept"

    const-string v4, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v3, "x-wap-profile"

    const-string v4, "http://www.google.com/oha/rdf/ua-profile-kila.xml"

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    sget v3, Lcom/mediatek/bluetooth/map/MmsConnection;->mSimId:I

    invoke-static {v3}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v14

    .line 419
    .local v14, line1Number:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 420
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 421
    const-string v3, "x-up-calling-line-id"

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v14}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_1
    const-string v3, "Accept-Language"

    sget-object v4, Lcom/mediatek/bluetooth/map/MmsConnection;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 426
    const/16 v18, 0x0

    .line 428
    .local v18, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v18

    .line 433
    :goto_0
    if-nez v18, :cond_4

    .line 434
    :try_start_2
    const-string v3, "MmsConnection"

    const-string v4, "httpConnection: client.execute() return null !!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 435
    const/4 v8, 0x0

    .line 484
    if-eqz v9, :cond_2

    .line 485
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 488
    .end local v2           #callbackentity:Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;
    .end local v13           #hostUrl:Ljava/net/URI;
    .end local v14           #line1Number:Ljava/lang/String;
    .end local v15           #params:Lorg/apache/http/params/HttpParams;
    .end local v16           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v17           #req:Lorg/apache/http/HttpRequest;
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    .end local v20           #target:Lorg/apache/http/HttpHost;
    :cond_2
    :goto_1
    return-object v8

    .line 429
    .restart local v2       #callbackentity:Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;
    .restart local v13       #hostUrl:Ljava/net/URI;
    .restart local v14       #line1Number:Ljava/lang/String;
    .restart local v15       #params:Lorg/apache/http/params/HttpParams;
    .restart local v16       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v17       #req:Lorg/apache/http/HttpRequest;
    .restart local v18       #response:Lorg/apache/http/HttpResponse;
    .restart local v20       #target:Lorg/apache/http/HttpHost;
    :catch_0
    move-exception v11

    .line 430
    .local v11, e:Ljava/io/IOException;
    :try_start_3
    const-string v3, "MmsConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AndroidHttpClient.execute exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    goto :goto_0

    .line 467
    .end local v2           #callbackentity:Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;
    .end local v11           #e:Ljava/io/IOException;
    .end local v13           #hostUrl:Ljava/net/URI;
    .end local v14           #line1Number:Ljava/lang/String;
    .end local v15           #params:Lorg/apache/http/params/HttpParams;
    .end local v16           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v17           #req:Lorg/apache/http/HttpRequest;
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    .end local v20           #target:Lorg/apache/http/HttpHost;
    :catch_1
    move-exception v11

    .line 469
    .local v11, e:Ljava/net/URISyntaxException;
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 484
    if-eqz v9, :cond_3

    .line 485
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 488
    .end local v11           #e:Ljava/net/URISyntaxException;
    :cond_3
    :goto_2
    const/4 v8, 0x0

    goto :goto_1

    .line 438
    .restart local v2       #callbackentity:Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;
    .restart local v13       #hostUrl:Ljava/net/URI;
    .restart local v14       #line1Number:Ljava/lang/String;
    .restart local v15       #params:Lorg/apache/http/params/HttpParams;
    .restart local v16       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v17       #req:Lorg/apache/http/HttpRequest;
    .restart local v18       #response:Lorg/apache/http/HttpResponse;
    .restart local v20       #target:Lorg/apache/http/HttpHost;
    :cond_4
    :try_start_5
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    .line 439
    .local v19, status:Lorg/apache/http/StatusLine;
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_5

    .line 440
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 470
    .end local v2           #callbackentity:Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;
    .end local v13           #hostUrl:Ljava/net/URI;
    .end local v14           #line1Number:Ljava/lang/String;
    .end local v15           #params:Lorg/apache/http/params/HttpParams;
    .end local v16           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v17           #req:Lorg/apache/http/HttpRequest;
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    .end local v19           #status:Lorg/apache/http/StatusLine;
    .end local v20           #target:Lorg/apache/http/HttpHost;
    :catch_2
    move-exception v11

    .line 472
    .local v11, e:Ljava/lang/IllegalStateException;
    :try_start_6
    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 484
    if-eqz v9, :cond_3

    .line 485
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_2

    .line 443
    .end local v11           #e:Ljava/lang/IllegalStateException;
    .restart local v2       #callbackentity:Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;
    .restart local v13       #hostUrl:Ljava/net/URI;
    .restart local v14       #line1Number:Ljava/lang/String;
    .restart local v15       #params:Lorg/apache/http/params/HttpParams;
    .restart local v16       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v17       #req:Lorg/apache/http/HttpRequest;
    .restart local v18       #response:Lorg/apache/http/HttpResponse;
    .restart local v19       #status:Lorg/apache/http/StatusLine;
    .restart local v20       #target:Lorg/apache/http/HttpHost;
    :cond_5
    :try_start_7
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v12

    .line 444
    .local v12, entity:Lorg/apache/http/HttpEntity;
    const/4 v8, 0x0

    .line 445
    .local v8, body:[B
    if-eqz v12, :cond_7

    .line 447
    :try_start_8
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    .line 448
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v8, v3, [B

    .line 449
    new-instance v10, Ljava/io/DataInputStream;

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 451
    .local v10, dis:Ljava/io/DataInputStream;
    :try_start_9
    invoke-virtual {v10, v8}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 454
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FilterInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 461
    .end local v10           #dis:Ljava/io/DataInputStream;
    :cond_6
    :goto_3
    if-eqz v12, :cond_7

    .line 462
    :try_start_b
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 484
    :cond_7
    if-eqz v9, :cond_2

    .line 485
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_1

    .line 455
    .restart local v10       #dis:Ljava/io/DataInputStream;
    :catch_3
    move-exception v11

    .line 456
    .local v11, e:Ljava/io/IOException;
    :try_start_c
    const-string v3, "MmsConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing input stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3

    .line 461
    .end local v10           #dis:Ljava/io/DataInputStream;
    .end local v11           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v12, :cond_8

    .line 462
    :try_start_d
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_8
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 473
    .end local v2           #callbackentity:Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;
    .end local v8           #body:[B
    .end local v12           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #hostUrl:Ljava/net/URI;
    .end local v14           #line1Number:Ljava/lang/String;
    .end local v15           #params:Lorg/apache/http/params/HttpParams;
    .end local v16           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v17           #req:Lorg/apache/http/HttpRequest;
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    .end local v19           #status:Lorg/apache/http/StatusLine;
    .end local v20           #target:Lorg/apache/http/HttpHost;
    :catch_4
    move-exception v11

    .line 475
    .local v11, e:Ljava/lang/IllegalArgumentException;
    :try_start_e
    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 484
    if-eqz v9, :cond_3

    .line 485
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_2

    .line 453
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #callbackentity:Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;
    .restart local v8       #body:[B
    .restart local v10       #dis:Ljava/io/DataInputStream;
    .restart local v12       #entity:Lorg/apache/http/HttpEntity;
    .restart local v13       #hostUrl:Ljava/net/URI;
    .restart local v14       #line1Number:Ljava/lang/String;
    .restart local v15       #params:Lorg/apache/http/params/HttpParams;
    .restart local v16       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v17       #req:Lorg/apache/http/HttpRequest;
    .restart local v18       #response:Lorg/apache/http/HttpResponse;
    .restart local v19       #status:Lorg/apache/http/StatusLine;
    .restart local v20       #target:Lorg/apache/http/HttpHost;
    :catchall_1
    move-exception v3

    .line 454
    :try_start_f
    invoke-virtual {v10}, Ljava/io/FilterInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 457
    :goto_4
    :try_start_10
    throw v3

    .line 455
    :catch_5
    move-exception v11

    .line 456
    .local v11, e:Ljava/io/IOException;
    const-string v4, "MmsConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing input stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_4

    .line 476
    .end local v2           #callbackentity:Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;
    .end local v8           #body:[B
    .end local v10           #dis:Ljava/io/DataInputStream;
    .end local v11           #e:Ljava/io/IOException;
    .end local v12           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #hostUrl:Ljava/net/URI;
    .end local v14           #line1Number:Ljava/lang/String;
    .end local v15           #params:Lorg/apache/http/params/HttpParams;
    .end local v16           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v17           #req:Lorg/apache/http/HttpRequest;
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    .end local v19           #status:Lorg/apache/http/StatusLine;
    .end local v20           #target:Lorg/apache/http/HttpHost;
    :catch_6
    move-exception v11

    .line 478
    .local v11, e:Ljava/net/SocketException;
    :try_start_11
    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 484
    if-eqz v9, :cond_3

    .line 485
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_2

    .line 479
    .end local v11           #e:Ljava/net/SocketException;
    :catch_7
    move-exception v11

    .line 481
    .local v11, e:Ljava/lang/Exception;
    :try_start_12
    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 484
    if-eqz v9, :cond_3

    .line 485
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_2

    .line 484
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v3

    if-eqz v9, :cond_9

    .line 485
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_9
    throw v3
.end method

.method public lookupHost(Ljava/lang/String;)I
    .locals 6
    .parameter "hostname"

    .prologue
    .line 637
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 643
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 644
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

    .line 648
    .end local v1           #addrBytes:[B
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    :goto_0
    return v0

    .line 638
    :catch_0
    move-exception v2

    .line 639
    .local v2, e:Ljava/net/UnknownHostException;
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public registerListener(Lcom/mediatek/bluetooth/map/MmsConnection$ConnectionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mLisenter:Lcom/mediatek/bluetooth/map/MmsConnection$ConnectionListener;

    .line 274
    return-void
.end method

.method public send(J[B)V
    .locals 4
    .parameter "token"
    .parameter "pdu"

    .prologue
    .line 324
    if-eqz p3, :cond_0

    array-length v1, p3

    if-nez v1, :cond_1

    .line 325
    :cond_0
    const-string v1, "pdu to send is null"

    invoke-static {v1}, Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V

    .line 334
    :goto_0
    return-void

    .line 328
    :cond_1
    new-instance v0, Lcom/mediatek/bluetooth/map/MmsConnection$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/bluetooth/map/MmsConnection$Task;-><init>(Lcom/mediatek/bluetooth/map/MmsConnection;Lcom/mediatek/bluetooth/map/MmsConnection$1;)V

    .line 329
    .local v0, task:Lcom/mediatek/bluetooth/map/MmsConnection$Task;
    iput-wide p1, v0, Lcom/mediatek/bluetooth/map/MmsConnection$Task;->mToken:J

    .line 330
    iput-object p3, v0, Lcom/mediatek/bluetooth/map/MmsConnection$Task;->mPdu:[B

    .line 331
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mPendingTask:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public unregisterListener()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/MmsConnection;->mLisenter:Lcom/mediatek/bluetooth/map/MmsConnection$ConnectionListener;

    .line 278
    return-void
.end method
