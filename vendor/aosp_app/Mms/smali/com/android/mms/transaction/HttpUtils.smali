.class public Lcom/android/mms/transaction/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final ACCEPT_LANG_FOR_US_LOCALE:Ljava/lang/String; = "en-US"

.field private static final DEBUG:Z = false

.field private static final HDR_KEY_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final HDR_KEY_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final HDR_VALUE_ACCEPT:Ljava/lang/String; = "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

.field private static final HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String; = null

.field public static final HTTP_GET_METHOD:I = 0x2

.field public static final HTTP_POST_METHOD:I = 0x1

.field private static final LOCAL_LOGV:Z = false

.field private static final MMS_READ_BUFFER:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "Mms:transaction"

.field private static sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/HttpUtils;->getCurrentAcceptLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 89
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 495
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/transaction/HttpUtils;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 500
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .end local v0           #country:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "langCode"

    .prologue
    .line 477
    if-nez p0, :cond_1

    .line 478
    const/4 p0, 0x0

    .line 490
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 480
    .restart local p0
    :cond_1
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    const-string p0, "he"

    goto :goto_0

    .line 483
    :cond_2
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 485
    const-string p0, "id"

    goto :goto_0

    .line 486
    :cond_3
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    const-string p0, "yi"

    goto :goto_0
.end method

.method private static createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    .locals 9
    .parameter "context"

    .prologue
    .line 413
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    .line 414
    .local v5, userAgent:Ljava/lang/String;
    invoke-static {v5, p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 415
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 416
    .local v3, params:Lorg/apache/http/params/HttpParams;
    const-string v6, "UTF-8"

    invoke-static {v3, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpSocketTimeout()I

    move-result v4

    .line 421
    .local v4, soTimeout:I
    const-string v6, "Mms:transaction"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 422
    const-string v6, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HttpUtils] createHttpClient w/ socket timeout "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", UA="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    invoke-static {v3, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 427
    invoke-static {v3}, Lcom/android/mms/MmsConfig;->setSoSndTimeout(Lorg/apache/http/params/HttpParams;)V

    .line 431
    const/16 v6, 0xc

    invoke-static {v6}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/mms/ext/IMmsCancelDownload;

    sput-object v6, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    .line 436
    const/4 v6, 0x7

    invoke-static {v6}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/mms/ext/IMmsTransaction;

    .line 438
    .local v2, mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    invoke-interface {v2}, Lcom/mediatek/mms/ext/IMmsTransaction;->getHttpRequestRetryHandler()Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    move-result-object v1

    .line 439
    .local v1, httpRetryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
    sget-object v6, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface {v6}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 440
    sget-object v6, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface {v6, v1}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->saveDefaultHttpRetryHandler(Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;)V

    .line 443
    :cond_1
    new-instance v6, Lcom/mediatek/encapsulation/android/net/http/EncapsulatedAndroidHttpClient;

    invoke-direct {v6, v0}, Lcom/mediatek/encapsulation/android/net/http/EncapsulatedAndroidHttpClient;-><init>(Landroid/net/http/AndroidHttpClient;)V

    invoke-virtual {v6, v1}, Lcom/mediatek/encapsulation/android/net/http/EncapsulatedAndroidHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;)V

    .line 447
    return-object v0
.end method

.method public static getCurrentAcceptLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .parameter "locale"

    .prologue
    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 462
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 464
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_0
    const-string v1, "en-US"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4
    .parameter "exception"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 405
    const-string v1, "Mms/Txn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle Http Connection Exception, Url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 409
    throw v0
.end method

.method protected static httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B
    .locals 40
    .parameter "context"
    .parameter "token"
    .parameter "url"
    .parameter "pdu"
    .parameter "method"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    if-nez p3, :cond_0

    .line 122
    new-instance v36, Ljava/lang/IllegalArgumentException;

    const-string v37, "URL must not be null."

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 125
    :cond_0
    const-string v36, "Mms:transaction"

    const/16 v37, 0x2

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v36

    if-eqz v36, :cond_1

    .line 126
    const-string v36, "Mms:transaction"

    const-string v37, "httpConnection: params list"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v36, "Mms:transaction"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "\ttoken\t\t= "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v36, "Mms:transaction"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "\turl\t\t= "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v37, "Mms:transaction"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "\tmethod\t\t= "

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const/16 v36, 0x1

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_4

    const-string v36, "POST"

    :goto_0
    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v36, "Mms:transaction"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "\tisProxySet\t= "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v36, "Mms:transaction"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "\tproxyHost\t= "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v36, "Mms:transaction"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "\tproxyPort\t= "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1
    const-string v36, "Mms/Txn"

    const-string v37, "httpConnection: params list"

    invoke-static/range {v36 .. v37}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v36, "Mms/Txn"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "\ttoken\t\t= "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v36, "Mms/Txn"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "\turl\t\t= "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v37, "Mms/Txn"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "\tmethod\t\t= "

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const/16 v36, 0x1

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    const-string v36, "POST"

    :goto_1
    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v36, "Mms/Txn"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "\tisProxySet\t= "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v36, "Mms/Txn"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "\tproxyHost\t= "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v36, "Mms/Txn"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "\tproxyPort\t= "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/16 v36, 0xb

    invoke-static/range {v36 .. v36}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mediatek/mms/ext/IMmsFailedNotify;

    .line 154
    .local v18, mmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;
    const/4 v8, 0x0

    .line 158
    .local v8, client:Landroid/net/http/AndroidHttpClient;
    :try_start_0
    new-instance v13, Ljava/net/URI;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 159
    .local v13, hostUrl:Ljava/net/URI;
    new-instance v31, Lorg/apache/http/HttpHost;

    invoke-virtual {v13}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v36

    invoke-virtual {v13}, Ljava/net/URI;->getPort()I

    move-result v37

    const-string v38, "http"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    move/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    .local v31, target:Lorg/apache/http/HttpHost;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/HttpUtils;->createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v8

    .line 164
    const/16 v27, 0x0

    .line 165
    .local v27, req:Lorg/apache/http/HttpRequest;
    packed-switch p5, :pswitch_data_0

    .line 190
    const-string v36, "Mms:transaction"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Unknown HTTP method: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ". Must be one of POST["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "] or GET["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x2

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "]."

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    .line 193
    const/4 v5, 0x0

    .line 389
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface/range {v36 .. v36}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v36

    if-eqz v36, :cond_2

    .line 390
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->removeHttpClient(Ljava/lang/String;)V

    .line 393
    :cond_2
    if-eqz v8, :cond_3

    .line 394
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 397
    .end local v13           #hostUrl:Ljava/net/URI;
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    .end local v31           #target:Lorg/apache/http/HttpHost;
    :cond_3
    :goto_2
    return-object v5

    .line 129
    .end local v8           #client:Landroid/net/http/AndroidHttpClient;
    .end local v18           #mmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;
    :cond_4
    const/16 v36, 0x2

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_5

    const-string v36, "GET"

    goto/16 :goto_0

    :cond_5
    const-string v36, "UNKNOWN"

    goto/16 :goto_0

    .line 142
    :cond_6
    const/16 v36, 0x2

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_7

    const-string v36, "GET"

    goto/16 :goto_1

    :cond_7
    const-string v36, "UNKNOWN"

    goto/16 :goto_1

    .line 167
    .restart local v8       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v13       #hostUrl:Ljava/net/URI;
    .restart local v18       #mmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;
    .restart local v27       #req:Lorg/apache/http/HttpRequest;
    .restart local v31       #target:Lorg/apache/http/HttpHost;
    :pswitch_0
    :try_start_1
    new-instance v11, Lcom/android/mms/transaction/ProgressCallbackEntity;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/android/mms/transaction/ProgressCallbackEntity;-><init>(Landroid/content/Context;J[B)V

    .line 170
    .local v11, entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    const-string v36, "application/vnd.wap.mms-message"

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 172
    new-instance v25, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 173
    .local v25, post:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 174
    move-object/from16 v27, v25

    .line 177
    const/16 v36, 0x7

    invoke-static/range {v36 .. v36}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/mms/ext/IMmsTransaction;

    .line 179
    .local v19, mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    invoke-interface/range {v19 .. v19}, Lcom/mediatek/mms/ext/IMmsTransaction;->setSoSendTimeoutProperty()V

    .line 197
    .end local v11           #entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    .end local v19           #mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    .end local v25           #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_8
    :goto_3
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v24

    .line 198
    .local v24, params:Lorg/apache/http/params/HttpParams;
    if-eqz p6, :cond_9

    .line 199
    new-instance v36, Lorg/apache/http/HttpHost;

    move-object/from16 v0, v36

    move-object/from16 v1, p7

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 204
    :cond_9
    const/16 v36, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setLinger(Lorg/apache/http/params/HttpParams;I)V

    .line 206
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 209
    const-string v36, "Accept"

    const-string v37, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfTagName()Ljava/lang/String;

    move-result-object v34

    .line 212
    .local v34, xWapProfileTagName:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfUrl()Ljava/lang/String;

    move-result-object v35

    .line 214
    .local v35, xWapProfileUrl:Ljava/lang/String;
    if-eqz v35, :cond_b

    .line 215
    const-string v36, "Mms:transaction"

    const/16 v37, 0x2

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v36

    if-eqz v36, :cond_a

    .line 216
    const-string v36, "Mms:transaction"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "[HttpUtils] httpConn: xWapProfUrl="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_a
    move-object/from16 v0, v27

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParams()Ljava/lang/String;

    move-result-object v12

    .line 230
    .local v12, extraHttpParams:Ljava/lang/String;
    if-eqz v12, :cond_10

    .line 231
    const-string v36, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v36 .. v36}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v17

    .line 234
    .local v17, line1Number:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParamsLine1Key()Ljava/lang/String;

    move-result-object v16

    .line 235
    .local v16, line1Key:Ljava/lang/String;
    const-string v36, "\\|"

    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 237
    .local v22, paramList:[Ljava/lang/String;
    move-object/from16 v4, v22

    .local v4, arr$:[Ljava/lang/String;
    array-length v15, v4

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_4
    if-ge v14, v15, :cond_10

    aget-object v23, v4, v14

    .line 238
    .local v23, paramPair:Ljava/lang/String;
    const-string v36, ":"

    const/16 v37, 0x2

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v29

    .line 240
    .local v29, splitPair:[Ljava/lang/String;
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_d

    .line 241
    const/16 v36, 0x0

    aget-object v36, v29, v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 242
    .local v20, name:Ljava/lang/String;
    const/16 v36, 0x1

    aget-object v36, v29, v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    .line 244
    .local v33, value:Ljava/lang/String;
    if-eqz v16, :cond_c

    .line 245
    move-object/from16 v0, v33

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    .line 247
    :cond_c
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-nez v36, :cond_d

    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-nez v36, :cond_d

    .line 248
    move-object/from16 v0, v27

    move-object/from16 v1, v20

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .end local v20           #name:Ljava/lang/String;
    .end local v33           #value:Ljava/lang/String;
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 183
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v12           #extraHttpParams:Ljava/lang/String;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #line1Key:Ljava/lang/String;
    .end local v17           #line1Number:Ljava/lang/String;
    .end local v22           #paramList:[Ljava/lang/String;
    .end local v23           #paramPair:Ljava/lang/String;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v29           #splitPair:[Ljava/lang/String;
    .end local v34           #xWapProfileTagName:Ljava/lang/String;
    .end local v35           #xWapProfileUrl:Ljava/lang/String;
    :pswitch_1
    new-instance v27, Lorg/apache/http/client/methods/HttpGet;

    .end local v27           #req:Lorg/apache/http/HttpRequest;
    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 185
    .restart local v27       #req:Lorg/apache/http/HttpRequest;
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface/range {v36 .. v36}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v36

    if-eqz v36, :cond_8

    .line 186
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-interface {v0, v1, v8}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->addHttpClient(Ljava/lang/String;Landroid/net/http/AndroidHttpClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    goto/16 :goto_3

    .line 369
    .end local v13           #hostUrl:Ljava/net/URI;
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    .end local v31           #target:Lorg/apache/http/HttpHost;
    :catch_0
    move-exception v10

    .line 370
    .local v10, e:Ljava/net/URISyntaxException;
    :try_start_2
    move-object/from16 v0, p3

    invoke-static {v10, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 389
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface/range {v36 .. v36}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v36

    if-eqz v36, :cond_e

    .line 390
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->removeHttpClient(Ljava/lang/String;)V

    .line 393
    :cond_e
    if-eqz v8, :cond_f

    .line 394
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 397
    .end local v10           #e:Ljava/net/URISyntaxException;
    :cond_f
    :goto_5
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 253
    .restart local v12       #extraHttpParams:Ljava/lang/String;
    .restart local v13       #hostUrl:Ljava/net/URI;
    .restart local v24       #params:Lorg/apache/http/params/HttpParams;
    .restart local v27       #req:Lorg/apache/http/HttpRequest;
    .restart local v31       #target:Lorg/apache/http/HttpHost;
    .restart local v34       #xWapProfileTagName:Ljava/lang/String;
    .restart local v35       #xWapProfileUrl:Ljava/lang/String;
    :cond_10
    :try_start_3
    const-string v36, "Accept-Language"

    sget-object v37, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    .line 256
    const/16 v28, 0x0

    .line 258
    .local v28, response:Lorg/apache/http/HttpResponse;
    :try_start_4
    const-string v36, "Mms/Txn"

    const-string v37, "===before execute "

    invoke-static/range {v36 .. v37}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v28

    .line 260
    const-string v37, "Mms/Txn"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "===after execute, response is null = "

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    if-nez v28, :cond_14

    const/16 v36, 0x1

    :goto_6
    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    .line 275
    :cond_11
    :goto_7
    :try_start_5
    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v30

    .line 277
    .local v30, status:Lorg/apache/http/StatusLine;
    const-string v36, "Mms/Txn"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "httpConnection: execute status="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v36, "Mms/Txn"

    const-string v37, "will set 504"

    invoke-static/range {v36 .. v37}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/16 v36, 0x7

    invoke-static/range {v36 .. v36}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/mms/ext/IMmsTransaction;

    .line 282
    .restart local v19       #mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    invoke-interface/range {v30 .. v30}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v36

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IMmsTransaction;->setMmsServerStatusCode(I)V

    .line 284
    invoke-interface/range {v30 .. v30}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v36

    const/16 v37, 0xc8

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_16

    .line 286
    invoke-interface/range {v18 .. v18}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->getFailedNotificationEnabled()Z

    move-result v36

    if-eqz v36, :cond_12

    .line 287
    const/16 v36, 0x4

    const/16 v37, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->popupToast(ILjava/lang/String;)V

    .line 290
    :cond_12
    new-instance v36, Ljava/io/IOException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "HTTP error: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v36
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    .line 371
    .end local v12           #extraHttpParams:Ljava/lang/String;
    .end local v13           #hostUrl:Ljava/net/URI;
    .end local v19           #mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    .end local v28           #response:Lorg/apache/http/HttpResponse;
    .end local v30           #status:Lorg/apache/http/StatusLine;
    .end local v31           #target:Lorg/apache/http/HttpHost;
    .end local v34           #xWapProfileTagName:Ljava/lang/String;
    .end local v35           #xWapProfileUrl:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 372
    .local v10, e:Ljava/lang/IllegalStateException;
    :try_start_6
    move-object/from16 v0, p3

    invoke-static {v10, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 389
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface/range {v36 .. v36}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v36

    if-eqz v36, :cond_13

    .line 390
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->removeHttpClient(Ljava/lang/String;)V

    .line 393
    :cond_13
    if-eqz v8, :cond_f

    .line 394
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_5

    .line 260
    .end local v10           #e:Ljava/lang/IllegalStateException;
    .restart local v12       #extraHttpParams:Ljava/lang/String;
    .restart local v13       #hostUrl:Ljava/net/URI;
    .restart local v24       #params:Lorg/apache/http/params/HttpParams;
    .restart local v27       #req:Lorg/apache/http/HttpRequest;
    .restart local v28       #response:Lorg/apache/http/HttpResponse;
    .restart local v31       #target:Lorg/apache/http/HttpHost;
    .restart local v34       #xWapProfileTagName:Ljava/lang/String;
    .restart local v35       #xWapProfileUrl:Ljava/lang/String;
    :cond_14
    const/16 v36, 0x0

    goto/16 :goto_6

    .line 262
    :catch_2
    move-exception v10

    .line 263
    .local v10, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 264
    const-string v36, "Mms/Txn"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "AndroidHttpClient.execute exception: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-interface/range {v18 .. v18}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->getFailedNotificationEnabled()Z

    move-result v36

    if-eqz v36, :cond_11

    .line 268
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->getStateExt(Ljava/lang/String;)I

    move-result v36

    const/16 v37, 0x4

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_11

    .line 269
    const/16 v36, 0x3

    const/16 v37, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->popupToast(ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    goto/16 :goto_7

    .line 373
    .end local v10           #e:Ljava/io/IOException;
    .end local v12           #extraHttpParams:Ljava/lang/String;
    .end local v13           #hostUrl:Ljava/net/URI;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    .end local v28           #response:Lorg/apache/http/HttpResponse;
    .end local v31           #target:Lorg/apache/http/HttpHost;
    .end local v34           #xWapProfileTagName:Ljava/lang/String;
    .end local v35           #xWapProfileUrl:Ljava/lang/String;
    :catch_3
    move-exception v10

    .line 374
    .local v10, e:Ljava/lang/IllegalArgumentException;
    :try_start_8
    move-object/from16 v0, p3

    invoke-static {v10, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 389
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface/range {v36 .. v36}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v36

    if-eqz v36, :cond_15

    .line 390
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->removeHttpClient(Ljava/lang/String;)V

    .line 393
    :cond_15
    if-eqz v8, :cond_f

    .line 394
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_5

    .line 292
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    .restart local v12       #extraHttpParams:Ljava/lang/String;
    .restart local v13       #hostUrl:Ljava/net/URI;
    .restart local v19       #mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    .restart local v24       #params:Lorg/apache/http/params/HttpParams;
    .restart local v27       #req:Lorg/apache/http/HttpRequest;
    .restart local v28       #response:Lorg/apache/http/HttpResponse;
    .restart local v30       #status:Lorg/apache/http/StatusLine;
    .restart local v31       #target:Lorg/apache/http/HttpHost;
    .restart local v34       #xWapProfileTagName:Ljava/lang/String;
    .restart local v35       #xWapProfileUrl:Ljava/lang/String;
    :cond_16
    :try_start_9
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface/range {v36 .. v36}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v36

    if-eqz v36, :cond_19

    const/16 v36, 0x2

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_19

    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->getStateExt(Ljava/lang/String;)I

    move-result v36

    sget-object v37, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    const/16 v37, 0x4

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_19

    .line 294
    const-string v36, "Mms/Txn"

    const-string v37, "***Abort not success, throw exception here!"

    invoke-static/range {v36 .. v37}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v36, Ljava/io/EOFException;

    const-string v37, "Throw EOFException because cancel download requested."

    invoke-direct/range {v36 .. v37}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v36
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    .line 375
    .end local v12           #extraHttpParams:Ljava/lang/String;
    .end local v13           #hostUrl:Ljava/net/URI;
    .end local v19           #mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    .end local v28           #response:Lorg/apache/http/HttpResponse;
    .end local v30           #status:Lorg/apache/http/StatusLine;
    .end local v31           #target:Lorg/apache/http/HttpHost;
    .end local v34           #xWapProfileTagName:Ljava/lang/String;
    .end local v35           #xWapProfileUrl:Ljava/lang/String;
    :catch_4
    move-exception v10

    .line 377
    .local v10, e:Ljava/net/SocketException;
    if-eqz v18, :cond_17

    .line 378
    const/16 v36, 0x4

    const/16 v37, 0x0

    :try_start_a
    move-object/from16 v0, v18

    move/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->popupToast(ILjava/lang/String;)V

    .line 381
    :cond_17
    move-object/from16 v0, p3

    invoke-static {v10, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 389
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface/range {v36 .. v36}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v36

    if-eqz v36, :cond_18

    .line 390
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->removeHttpClient(Ljava/lang/String;)V

    .line 393
    :cond_18
    if-eqz v8, :cond_f

    .line 394
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_5

    .line 300
    .end local v10           #e:Ljava/net/SocketException;
    .restart local v12       #extraHttpParams:Ljava/lang/String;
    .restart local v13       #hostUrl:Ljava/net/URI;
    .restart local v19       #mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    .restart local v24       #params:Lorg/apache/http/params/HttpParams;
    .restart local v27       #req:Lorg/apache/http/HttpRequest;
    .restart local v28       #response:Lorg/apache/http/HttpResponse;
    .restart local v30       #status:Lorg/apache/http/StatusLine;
    .restart local v31       #target:Lorg/apache/http/HttpHost;
    .restart local v34       #xWapProfileTagName:Ljava/lang/String;
    .restart local v35       #xWapProfileUrl:Ljava/lang/String;
    :cond_19
    :try_start_b
    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    move-result-object v11

    .line 301
    .local v11, entity:Lorg/apache/http/HttpEntity;
    const/4 v5, 0x0

    .line 302
    .local v5, body:[B
    if-eqz v11, :cond_1f

    .line 304
    :try_start_c
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v36

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-lez v36, :cond_1a

    .line 305
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v36, v0

    move/from16 v0, v36

    new-array v5, v0, [B

    .line 306
    new-instance v9, Ljava/io/DataInputStream;

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 309
    .local v9, dis:Ljava/io/DataInputStream;
    :try_start_d
    const-string v36, "Mms/Txn"

    const-string v37, "  ===before readFully "

    invoke-static/range {v36 .. v37}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v9, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 311
    const-string v36, "Mms/Txn"

    const-string v37, "  ===after readFully "

    invoke-static/range {v36 .. v37}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 315
    :try_start_e
    invoke-virtual {v9}, Ljava/io/FilterInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 321
    .end local v9           #dis:Ljava/io/DataInputStream;
    :cond_1a
    :goto_8
    :try_start_f
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v36

    if-eqz v36, :cond_1e

    .line 322
    const-string v36, "Mms:transaction"

    const-string v37, "httpConnection: transfer encoding is chunked"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v7

    .line 324
    .local v7, bytesTobeRead:I
    new-array v0, v7, [B

    move-object/from16 v32, v0

    .line 325
    .local v32, tempBody:[B
    new-instance v9, Ljava/io/DataInputStream;

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 327
    .restart local v9       #dis:Ljava/io/DataInputStream;
    const/4 v6, 0x0

    .line 328
    .local v6, bytesRead:I
    const/16 v21, 0x0

    .line 329
    .local v21, offset:I
    const/16 v26, 0x0

    .line 332
    .local v26, readError:Z
    :cond_1b
    :try_start_10
    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1, v7}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    move-result v6

    .line 339
    if-lez v6, :cond_1c

    .line 340
    sub-int/2addr v7, v6

    .line 341
    add-int v21, v21, v6

    .line 343
    :cond_1c
    if-ltz v6, :cond_1d

    if-gtz v7, :cond_1b

    .line 344
    :cond_1d
    :goto_9
    const/16 v36, -0x1

    move/from16 v0, v36

    if-ne v6, v0, :cond_23

    if-lez v21, :cond_23

    if-nez v26, :cond_23

    .line 347
    :try_start_11
    move/from16 v0, v21

    new-array v5, v0, [B

    .line 348
    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v21

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    const-string v36, "Mms:transaction"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "httpConnection: Chunked response length ["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "]"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 356
    :goto_a
    :try_start_12
    invoke-virtual {v9}, Ljava/io/FilterInputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    .line 363
    .end local v6           #bytesRead:I
    .end local v7           #bytesTobeRead:I
    .end local v9           #dis:Ljava/io/DataInputStream;
    .end local v21           #offset:I
    .end local v26           #readError:Z
    .end local v32           #tempBody:[B
    :cond_1e
    :goto_b
    if-eqz v11, :cond_1f

    .line 364
    :try_start_13
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/net/SocketException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/io/EOFException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    .line 389
    :cond_1f
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface/range {v36 .. v36}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v36

    if-eqz v36, :cond_20

    .line 390
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->removeHttpClient(Ljava/lang/String;)V

    .line 393
    :cond_20
    if-eqz v8, :cond_3

    .line 394
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_2

    .line 316
    .restart local v9       #dis:Ljava/io/DataInputStream;
    :catch_5
    move-exception v10

    .line 317
    .local v10, e:Ljava/io/IOException;
    :try_start_14
    const-string v36, "Mms:transaction"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Error closing input stream: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_8

    .line 363
    .end local v9           #dis:Ljava/io/DataInputStream;
    .end local v10           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v36

    if-eqz v11, :cond_21

    .line 364
    :try_start_15
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_21
    throw v36
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/net/SocketException; {:try_start_15 .. :try_end_15} :catch_4
    .catch Ljava/io/EOFException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    .line 382
    .end local v5           #body:[B
    .end local v11           #entity:Lorg/apache/http/HttpEntity;
    .end local v12           #extraHttpParams:Ljava/lang/String;
    .end local v13           #hostUrl:Ljava/net/URI;
    .end local v19           #mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    .end local v28           #response:Lorg/apache/http/HttpResponse;
    .end local v30           #status:Lorg/apache/http/StatusLine;
    .end local v31           #target:Lorg/apache/http/HttpHost;
    .end local v34           #xWapProfileTagName:Ljava/lang/String;
    .end local v35           #xWapProfileUrl:Ljava/lang/String;
    :catch_6
    move-exception v10

    .line 383
    .local v10, e:Ljava/io/EOFException;
    :try_start_16
    const-string v36, "Mms/Txn"

    const-string v37, "***handle Http Connection Exception,cancel download!"

    invoke-static/range {v36 .. v37}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    move-object/from16 v0, p3

    invoke-static {v10, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 389
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface/range {v36 .. v36}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v36

    if-eqz v36, :cond_22

    .line 390
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->removeHttpClient(Ljava/lang/String;)V

    .line 393
    :cond_22
    if-eqz v8, :cond_f

    .line 394
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_5

    .line 314
    .end local v10           #e:Ljava/io/EOFException;
    .restart local v5       #body:[B
    .restart local v9       #dis:Ljava/io/DataInputStream;
    .restart local v11       #entity:Lorg/apache/http/HttpEntity;
    .restart local v12       #extraHttpParams:Ljava/lang/String;
    .restart local v13       #hostUrl:Ljava/net/URI;
    .restart local v19       #mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    .restart local v24       #params:Lorg/apache/http/params/HttpParams;
    .restart local v27       #req:Lorg/apache/http/HttpRequest;
    .restart local v28       #response:Lorg/apache/http/HttpResponse;
    .restart local v30       #status:Lorg/apache/http/StatusLine;
    .restart local v31       #target:Lorg/apache/http/HttpHost;
    .restart local v34       #xWapProfileTagName:Ljava/lang/String;
    .restart local v35       #xWapProfileUrl:Ljava/lang/String;
    :catchall_1
    move-exception v36

    .line 315
    :try_start_17
    invoke-virtual {v9}, Ljava/io/FilterInputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_7

    .line 318
    :goto_c
    :try_start_18
    throw v36

    .line 316
    :catch_7
    move-exception v10

    .line 317
    .local v10, e:Ljava/io/IOException;
    const-string v37, "Mms:transaction"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Error closing input stream: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_c

    .line 333
    .end local v10           #e:Ljava/io/IOException;
    .restart local v6       #bytesRead:I
    .restart local v7       #bytesTobeRead:I
    .restart local v21       #offset:I
    .restart local v26       #readError:Z
    .restart local v32       #tempBody:[B
    :catch_8
    move-exception v10

    .line 334
    .restart local v10       #e:Ljava/io/IOException;
    const/16 v26, 0x1

    .line 335
    :try_start_19
    const-string v36, "Mms:transaction"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "httpConnection: error reading input stream"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    goto/16 :goto_9

    .line 355
    .end local v10           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v36

    .line 356
    :try_start_1a
    invoke-virtual {v9}, Ljava/io/FilterInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a

    .line 359
    :goto_d
    :try_start_1b
    throw v36
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 352
    :cond_23
    :try_start_1c
    const-string v36, "Mms:transaction"

    const-string v37, "httpConnection: Response entity too large or empty"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    goto/16 :goto_a

    .line 357
    :catch_9
    move-exception v10

    .line 358
    .restart local v10       #e:Ljava/io/IOException;
    :try_start_1d
    const-string v36, "Mms:transaction"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Error closing input stream: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 357
    .end local v10           #e:Ljava/io/IOException;
    :catch_a
    move-exception v10

    .line 358
    .restart local v10       #e:Ljava/io/IOException;
    const-string v37, "Mms:transaction"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Error closing input stream: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto :goto_d

    .line 385
    .end local v5           #body:[B
    .end local v6           #bytesRead:I
    .end local v7           #bytesTobeRead:I
    .end local v9           #dis:Ljava/io/DataInputStream;
    .end local v10           #e:Ljava/io/IOException;
    .end local v11           #entity:Lorg/apache/http/HttpEntity;
    .end local v12           #extraHttpParams:Ljava/lang/String;
    .end local v13           #hostUrl:Ljava/net/URI;
    .end local v19           #mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    .end local v21           #offset:I
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v26           #readError:Z
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    .end local v28           #response:Lorg/apache/http/HttpResponse;
    .end local v30           #status:Lorg/apache/http/StatusLine;
    .end local v31           #target:Lorg/apache/http/HttpHost;
    .end local v32           #tempBody:[B
    .end local v34           #xWapProfileTagName:Ljava/lang/String;
    .end local v35           #xWapProfileUrl:Ljava/lang/String;
    :catch_b
    move-exception v10

    .line 386
    .local v10, e:Ljava/lang/Exception;
    :try_start_1e
    move-object/from16 v0, p3

    invoke-static {v10, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    .line 389
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface/range {v36 .. v36}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v36

    if-eqz v36, :cond_24

    .line 390
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->removeHttpClient(Ljava/lang/String;)V

    .line 393
    :cond_24
    if-eqz v8, :cond_f

    .line 394
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_5

    .line 389
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v36

    sget-object v37, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface/range {v37 .. v37}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v37

    if-eqz v37, :cond_25

    .line 390
    sget-object v37, Lcom/android/mms/transaction/HttpUtils;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->removeHttpClient(Ljava/lang/String;)V

    .line 393
    :cond_25
    if-eqz v8, :cond_26

    .line 394
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_26
    throw v36

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
