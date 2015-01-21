.class public Lcom/android/providers/drm/ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionChangeReceiver.java"


# static fields
.field private static final INVALID_DEVICE_ID:Ljava/lang/String; = "000000000000000"

.field private static final NETWORK_TYPE_MOBILE_NET:Ljava/lang/String; = "enableNET"

.field private static final TAG:Ljava/lang/String; = "DRM/ConnectionChangeReceiver"

.field private static sHostList:[Ljava/lang/String;

.field private static sThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/drm/ConnectionChangeReceiver;->sThread:Ljava/lang/Thread;

    .line 145
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hshh.org"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "t1.hshh.org"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "t2.hshh.org"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "t3.hshh.org"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "clock.via.net"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/drm/ConnectionChangeReceiver;->sHostList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/drm/ConnectionChangeReceiver;Landroid/net/ConnectivityManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/providers/drm/ConnectionChangeReceiver;->checkRouteToHost(Landroid/net/ConnectivityManager;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/providers/drm/ConnectionChangeReceiver;->sHostList:[Ljava/lang/String;

    return-object v0
.end method

.method private checkRouteToHost(Landroid/net/ConnectivityManager;I)I
    .locals 9
    .parameter "conManager"
    .parameter "type"

    .prologue
    .line 154
    const-string v6, "DRM/ConnectionChangeReceiver"

    const-string v7, "==== check if there\'s available route to SNTP servers ===="

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v4, -0x1

    .line 157
    .local v4, result:I
    if-eqz p1, :cond_0

    .line 158
    sget-object v6, Lcom/android/providers/drm/ConnectionChangeReceiver;->sHostList:[Ljava/lang/String;

    array-length v5, v6

    .line 159
    .local v5, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 160
    const/4 v1, 0x0

    .line 162
    .local v1, address:I
    :try_start_0
    const-string v6, "DRM/ConnectionChangeReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get host address by name: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/providers/drm/ConnectionChangeReceiver;->sHostList:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object v6, Lcom/android/providers/drm/ConnectionChangeReceiver;->sHostList:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 164
    .local v0, addr:Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/providers/drm/ConnectionChangeReceiver;->ipToInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 170
    const-string v6, "DRM/ConnectionChangeReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "request route for host: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/providers/drm/ConnectionChangeReceiver;->sHostList:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p1, p2, v1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 172
    const-string v6, "DRM/ConnectionChangeReceiver"

    const-string v7, "request route for host success."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    move v4, v3

    .line 179
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v1           #address:I
    .end local v3           #i:I
    .end local v5           #size:I
    :cond_0
    return v4

    .line 165
    .restart local v1       #address:I
    .restart local v3       #i:I
    .restart local v5       #size:I
    :catch_0
    move-exception v2

    .line 166
    .local v2, e:Ljava/net/UnknownHostException;
    const-string v6, "DRM/ConnectionChangeReceiver"

    const-string v7, "caught UnknownHostException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v2           #e:Ljava/net/UnknownHostException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    .restart local v0       #addr:Ljava/net/InetAddress;
    :cond_1
    const-string v6, "DRM/ConnectionChangeReceiver"

    const-string v7, "request route for host failed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private ipToInt(Ljava/lang/String;)I
    .locals 12
    .parameter "ipAddress"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, -0x1

    .line 183
    if-nez p1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v5

    .line 187
    :cond_1
    const-string v6, "\\."

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, addrArray:[Ljava/lang/String;
    array-length v4, v0

    .line 189
    .local v4, size:I
    const/4 v6, 0x4

    if-ne v4, v6, :cond_0

    .line 193
    new-array v1, v4, [I

    .line 195
    .local v1, addrBytes:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 196
    :try_start_0
    aget-object v6, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 203
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v5, "DRM/ConnectionChangeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ipToInt: a[0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", a[1] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", a[2] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", a[3] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    aget v5, v1, v11

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    aget v6, v1, v10

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    aget v6, v1, v9

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    aget v6, v1, v8

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    goto :goto_0
.end method

.method private launchSNTP(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 69
    sget-object v2, Lcom/android/providers/drm/ConnectionChangeReceiver;->sThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/providers/drm/ConnectionChangeReceiver;->sThread:Ljava/lang/Thread;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/providers/drm/ConnectionChangeReceiver;->sThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_5

    .line 70
    :cond_0
    const-string v2, "DRM/ConnectionChangeReceiver"

    const-string v3, "SNTP : the thread is not running."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {v0, p1}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, client:Lcom/mediatek/drm/OmaDrmClient;
    invoke-static {v0}, Lcom/android/providers/drm/OmaDrmHelper;->loadDeviceId(Lcom/mediatek/drm/OmaDrmClient;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, id:Ljava/lang/String;
    const-string v2, "DRM/ConnectionChangeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SNTP : load device id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "000000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    :cond_1
    const-string v2, "DRM/ConnectionChangeReceiver"

    const-string v3, "SNTP : The device id is empty, try obtain it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {p1}, Lcom/android/providers/drm/BootCompletedReceiver;->deviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 81
    const-string v2, "DRM/ConnectionChangeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SNTP : Obtained device id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {v0, v1}, Lcom/android/providers/drm/OmaDrmHelper;->saveDeviceId(Lcom/mediatek/drm/OmaDrmClient;Ljava/lang/String;)I

    .line 89
    :cond_2
    const-string v2, "000000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    const-string v2, "DRM/ConnectionChangeReceiver"

    const-string v3, "SNTP : The device id is an invalid value, but we continue processing."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_3
    if-eqz p1, :cond_4

    .line 95
    const-string v2, "DRM/ConnectionChangeReceiver"

    const-string v3, "SNTP : launch the thread."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/android/providers/drm/ConnectionChangeReceiver;->launchSimpleThread(Landroid/content/Context;Lcom/mediatek/drm/OmaDrmClient;)V

    .line 101
    :cond_4
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmClient;->release()V

    .line 106
    .end local v0           #client:Lcom/mediatek/drm/OmaDrmClient;
    .end local v1           #id:Ljava/lang/String;
    :goto_0
    return-void

    .line 104
    :cond_5
    const-string v2, "DRM/ConnectionChangeReceiver"

    const-string v3, "SNTP : the thread is already running."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchSimpleThread(Landroid/content/Context;Lcom/mediatek/drm/OmaDrmClient;)V
    .locals 6
    .parameter "context"
    .parameter "client"

    .prologue
    .line 110
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 112
    .local v0, conManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 113
    const-string v3, "DRM/ConnectionChangeReceiver"

    const-string v4, "SNTP : invalid connectivity manager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 118
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 119
    const-string v3, "DRM/ConnectionChangeReceiver"

    const-string v4, "SNTP : invalid active network info."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 123
    const-string v3, "DRM/ConnectionChangeReceiver"

    const-string v4, "SNTP : unavailable active network."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 128
    .local v2, type:I
    const-string v3, "DRM/ConnectionChangeReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SNTP : active network type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/providers/drm/ConnectionChangeReceiver$1;

    invoke-direct {v4, p0, v0, v2, p2}, Lcom/android/providers/drm/ConnectionChangeReceiver$1;-><init>(Lcom/android/providers/drm/ConnectionChangeReceiver;Landroid/net/ConnectivityManager;ILcom/mediatek/drm/OmaDrmClient;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v3, Lcom/android/providers/drm/ConnectionChangeReceiver;->sThread:Ljava/lang/Thread;

    .line 141
    sget-object v3, Lcom/android/providers/drm/ConnectionChangeReceiver;->sThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    const-string v2, "DRM/ConnectionChangeReceiver"

    const-string v3, "onReceive : CONNECTIVITY_CHANGE received."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {v0, p1}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, client:Lcom/mediatek/drm/OmaDrmClient;
    invoke-static {v0}, Lcom/android/providers/drm/OmaDrmHelper;->checkClock(Lcom/mediatek/drm/OmaDrmClient;)Z

    move-result v1

    .line 53
    .local v1, isValid:Z
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmClient;->release()V

    .line 56
    if-eqz v1, :cond_1

    .line 57
    const-string v2, "DRM/ConnectionChangeReceiver"

    const-string v3, "ConnectionChangeReceiver : Secure timer is already valid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    if-eqz p1, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/providers/drm/ConnectionChangeReceiver;->launchSNTP(Landroid/content/Context;)V

    goto :goto_0
.end method
