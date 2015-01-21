.class public Lcom/zte/feedback/UploadException;
.super Ljava/lang/Object;
.source "UploadException.java"


# instance fields
.field private currentCarrier:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private ntType:I

.field root:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "mContext"
    .parameter "crash_info"
    .parameter "app_version"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iput-object v5, p0, Lcom/zte/feedback/UploadException;->root:Lorg/json/JSONObject;

    .line 22
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    move-object v4, v5

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 23
    .local v4, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/feedback/UploadException;->currentCarrier:Ljava/lang/String;

    .line 24
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    iput v5, p0, Lcom/zte/feedback/UploadException;->ntType:I

    .line 25
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 26
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/feedback/UploadException;->imei:Ljava/lang/String;

    .line 32
    :goto_0
    iget-object v5, p0, Lcom/zte/feedback/UploadException;->imei:Ljava/lang/String;

    invoke-static {v5}, Lcom/zte/feedback/Util;->transferDid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/feedback/UploadException;->imei:Ljava/lang/String;

    .line 34
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .local v0, device:Lorg/json/JSONObject;
    const-string v5, "product"

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v5, "model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v5, "network_type"

    iget v6, p0, Lcom/zte/feedback/UploadException;->ntType:I

    invoke-static {v6}, Lcom/zte/feedback/Util;->networkTypeAsString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v5, "os_name"

    const-string v6, "Android"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v5, "os_build"

    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v5, "manufacturer"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v5, "device"

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v5, "did"

    iget-object v6, p0, Lcom/zte/feedback/UploadException;->imei:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v5, "brand"

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v5, "current_carrier"

    iget-object v6, p0, Lcom/zte/feedback/UploadException;->currentCarrier:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v5, "os_version"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    iget-object v5, p0, Lcom/zte/feedback/UploadException;->root:Lorg/json/JSONObject;

    const-string v6, "device"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .local v3, record:Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .local v2, exception:Lorg/json/JSONObject;
    const-string v5, "type"

    const-string v6, "0"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v5, "app_version"

    invoke-virtual {v2, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v5, "info"

    invoke-virtual {v2, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v5, "exception"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    iget-object v5, p0, Lcom/zte/feedback/UploadException;->root:Lorg/json/JSONObject;

    const-string v6, "record"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    iget-object v5, p0, Lcom/zte/feedback/UploadException;->root:Lorg/json/JSONObject;

    const-string v6, "sdk_version"

    const-string v7, "0"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    iget-object v5, p0, Lcom/zte/feedback/UploadException;->root:Lorg/json/JSONObject;

    const-string v6, "appid"

    const-string v7, "638c5fc37ba15bb6636f6c6c65637469"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    iget-object v5, p0, Lcom/zte/feedback/UploadException;->root:Lorg/json/JSONObject;

    const-string v6, "time"

    invoke-static {}, Lcom/zte/feedback/Util;->offsetTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    iget-object v5, p0, Lcom/zte/feedback/UploadException;->root:Lorg/json/JSONObject;

    const-string v6, "type"

    const-string v7, "exception"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0           #device:Lorg/json/JSONObject;
    .end local v2           #exception:Lorg/json/JSONObject;
    .end local v3           #record:Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 28
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "NO IMEI"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    const-string v5, "999999999999999"

    iput-object v5, p0, Lcom/zte/feedback/UploadException;->imei:Ljava/lang/String;

    goto/16 :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 68
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getAsJSON()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    const-string v0, "JSON-Exception"

    iget-object v1, p0, Lcom/zte/feedback/UploadException;->root:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/zte/feedback/UploadException;->root:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendFeedBack()Z
    .locals 4

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, result:Z
    new-instance v0, Lcom/zte/feedback/ZTEStatisticsClient;

    invoke-direct {v0}, Lcom/zte/feedback/ZTEStatisticsClient;-><init>()V

    .line 81
    .local v0, client:Lcom/zte/feedback/ZTEStatisticsClient;
    invoke-virtual {p0}, Lcom/zte/feedback/UploadException;->getAsJSON()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zte/feedback/ZTEStatisticsClient;->postJSON(Ljava/lang/String;)I

    move-result v1

    .line 82
    .local v1, code:I
    const/16 v3, 0xc8

    if-lt v1, v3, :cond_0

    const/16 v3, 0x12c

    if-ge v1, v3, :cond_0

    .line 83
    const/4 v2, 0x1

    .line 85
    :cond_0
    return v2
.end method
