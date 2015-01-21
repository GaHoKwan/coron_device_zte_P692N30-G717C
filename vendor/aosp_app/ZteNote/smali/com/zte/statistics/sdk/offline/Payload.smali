.class public abstract Lcom/zte/statistics/sdk/offline/Payload;
.super Ljava/lang/Object;
.source "Payload.java"


# instance fields
.field protected root:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/zte/statistics/sdk/offline/Payload;->root:Lorg/json/JSONObject;

    .line 20
    :try_start_0
    sget-object v1, Lcom/zte/statistics/sdk/GlobalInfo;->apiKey:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "appid"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/statistics/sdk/offline/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Exception setting date."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getAsJSON()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/statistics/sdk/offline/Payload;->root:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putEventArray(Lorg/json/JSONArray;)V
    .locals 3
    .parameter "eventArray"

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/zte/statistics/sdk/offline/Payload;->root:Lorg/json/JSONObject;

    const-string v2, "Events"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
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

    .line 40
    const-string v1, "Android"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "os_name"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/statistics/sdk/offline/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 41
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "os_version"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/statistics/sdk/offline/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 42
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "os_build"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/statistics/sdk/offline/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 43
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "manufacturer"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/statistics/sdk/offline/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 44
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "model"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/statistics/sdk/offline/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 45
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "product"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/statistics/sdk/offline/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 46
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "brand"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/statistics/sdk/offline/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 47
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "device"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/statistics/sdk/offline/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 48
    sget-object v1, Lcom/zte/statistics/sdk/GlobalInfo;->currentCarrier:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "current_carrier"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/statistics/sdk/offline/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 49
    sget v1, Lcom/zte/statistics/sdk/GlobalInfo;->networkType:I

    invoke-static {v1}, Lcom/zte/statistics/sdk/util/Constants;->networkTypeAsString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, networkType:Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "device"

    aput-object v2, v1, v4

    const-string v2, "network_type"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/zte/statistics/sdk/offline/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/zte/statistics/sdk/GlobalInfo;->imei:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v4

    const-string v3, "did"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/zte/statistics/sdk/offline/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 52
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
    .line 55
    iget-object v3, p0, Lcom/zte/statistics/sdk/offline/Payload;->root:Lorg/json/JSONObject;

    .line 56
    .local v3, parent:Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p2

    if-lt v1, v4, :cond_0

    .line 70
    return-void

    .line 57
    :cond_0
    aget-object v2, p2, v1

    .line 58
    .local v2, key:Ljava/lang/String;
    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    .line 59
    invoke-virtual {v3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_1

    .line 64
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 65
    .local v0, current:Lorg/json/JSONObject;
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    move-object v3, v0

    goto :goto_1
.end method

.method public setVersionInfo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 35
    const-string v0, "23"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sdk_version"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/zte/statistics/sdk/offline/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 36
    return-void
.end method
