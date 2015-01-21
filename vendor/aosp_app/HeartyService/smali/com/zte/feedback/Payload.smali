.class public abstract Lcom/zte/feedback/Payload;
.super Ljava/lang/Object;
.source "Payload.java"


# instance fields
.field private currentCarrier:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private ntType:I

.field protected root:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "appContext"
    .parameter "appuid"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/zte/feedback/Payload;->root:Lorg/json/JSONObject;

    .line 24
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "appid"

    aput-object v4, v2, v3

    invoke-virtual {p0, p2, v2}, Lcom/zte/feedback/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    move-object v1, v2

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 30
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/feedback/Payload;->currentCarrier:Ljava/lang/String;

    .line 31
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    iput v2, p0, Lcom/zte/feedback/Payload;->ntType:I

    .line 33
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/feedback/Payload;->imei:Ljava/lang/String;

    .line 40
    :goto_1
    iget-object v2, p0, Lcom/zte/feedback/Payload;->imei:Ljava/lang/String;

    invoke-static {v2}, Lcom/zte/feedback/Util;->transferDid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/feedback/Payload;->imei:Ljava/lang/String;

    .line 41
    return-void

    .line 26
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0

    .line 36
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "NO IMEI"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    const-string v2, "999999999999999"

    iput-object v2, p0, Lcom/zte/feedback/Payload;->imei:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getAsJSON()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zte/feedback/Payload;->root:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceInfo()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    const-string v1, "Android"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "os_name"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 57
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "os_version"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 58
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "os_build"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 59
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "manufacturer"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 60
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "model"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 61
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "product"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 62
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "brand"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 63
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "device"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/zte/feedback/Payload;->currentCarrier:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "current_carrier"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 65
    iget v1, p0, Lcom/zte/feedback/Payload;->ntType:I

    invoke-static {v1}, Lcom/zte/feedback/Util;->networkTypeAsString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, networkType:Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "device"

    aput-object v2, v1, v4

    const-string v2, "network_type"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/zte/feedback/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/zte/feedback/Payload;->imei:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "did"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public varargs setString(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "value"
    .parameter "keys"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v3, p0, Lcom/zte/feedback/Payload;->root:Lorg/json/JSONObject;

    .line 72
    .local v3, parent:Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_2

    .line 73
    aget-object v2, p2, v1

    .line 74
    .local v2, key:Ljava/lang/String;
    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_0

    .line 75
    invoke-virtual {v3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_1

    .line 80
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .local v0, current:Lorg/json/JSONObject;
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    move-object v3, v0

    goto :goto_1

    .line 86
    .end local v0           #current:Lorg/json/JSONObject;
    .end local v2           #key:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setVersionInfo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 51
    const-string v0, "0"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sdk_version"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/zte/feedback/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 52
    return-void
.end method
