.class public Ltmsdk/common/utils/NetworkUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Ee:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canNetworkOnMainThread()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 125
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    sget v1, Ltmsdk/common/utils/NetworkUtil;->Ee:I

    if-ge v1, v0, :cond_2

    .line 129
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sput v1, Ltmsdk/common/utils/NetworkUtil;->Ee:I

    .line 131
    :cond_2
    sget v1, Ltmsdk/common/utils/NetworkUtil;->Ee:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 135
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 4

    .prologue
    .line 154
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 156
    .local v1, nw:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 157
    .local v0, netinfo:Landroid/net/NetworkInfo;
    return-object v0
.end method

.method public static getNetworkName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 51
    const-string v3, ""

    .line 52
    .local v3, name:Ljava/lang/String;
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 53
    .local v1, context:Landroid/content/Context;
    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 54
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 55
    .local v2, info:Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object v3

    .line 58
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 59
    invoke-static {}, Ltmsdk/common/utils/WifiUtil;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 63
    :goto_1
    if-nez v3, :cond_0

    .line 64
    const-string v3, ""

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static getNetworkType()Ltmsdkobf/t;
    .locals 6

    .prologue
    .line 26
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 27
    .local v1, context:Landroid/content/Context;
    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 28
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 29
    .local v3, info:Landroid/net/NetworkInfo;
    if-nez v3, :cond_0

    .line 30
    sget-object v4, Ltmsdkobf/t;->aY:Ltmsdkobf/t;

    .line 42
    :goto_0
    return-object v4

    .line 32
    :cond_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 33
    sget-object v4, Ltmsdkobf/t;->ba:Ltmsdkobf/t;

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_3

    .line 35
    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getProxyHost()Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, host:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getProxyPort()I

    move-result v4

    if-lez v4, :cond_2

    .line 37
    sget-object v4, Ltmsdkobf/t;->bb:Ltmsdkobf/t;

    goto :goto_0

    .line 39
    :cond_2
    sget-object v4, Ltmsdkobf/t;->bc:Ltmsdkobf/t;

    goto :goto_0

    .line 42
    .end local v2           #host:Ljava/lang/String;
    :cond_3
    sget-object v4, Ltmsdkobf/t;->bc:Ltmsdkobf/t;

    goto :goto_0
.end method

.method public static getProxyHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, host:Ljava/lang/String;
    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->isLaterThanIcs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "http.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 89
    :cond_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getProxyPort()I
    .locals 3

    .prologue
    .line 100
    const/4 v1, -0x1

    .line 101
    .local v1, port:I
    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->isLaterThanIcs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    :try_start_0
    const-string v2, "http.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 114
    .end local v1           #port:I
    :goto_0
    return v1

    .line 106
    .restart local v1       #port:I
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    goto :goto_0

    .line 112
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    goto :goto_0
.end method

.method public static isLaterThanIcs()Z
    .locals 2

    .prologue
    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkConnected()Z
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 145
    .local v1, netinfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    .line 149
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 150
    .local v0, isConnected:Z
    goto :goto_0
.end method
