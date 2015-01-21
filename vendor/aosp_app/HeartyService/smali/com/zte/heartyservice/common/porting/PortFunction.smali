.class public Lcom/zte/heartyservice/common/porting/PortFunction;
.super Ljava/lang/Object;
.source "PortFunction.java"


# static fields
.field public static final NETWORK_MOBILE_RX_BYTES:I = 0x0

.field public static final NETWORK_MOBILE_TX_BYTES:I = 0x1

.field public static final NETWORK_WIFI_RX_BYTES:I = 0x2

.field public static final NETWORK_WIFI_TX_BYTES:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMobileTcpBytesReceived(Lcom/android/internal/os/BatteryStatsImpl;I)J
    .locals 2
    .parameter "stats"
    .parameter "statsType"

    .prologue
    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 76
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/zte/heartyservice/common/porting/PortFunction;->getNetworkActivityCount(Lcom/android/internal/os/BatteryStatsImpl;II)J

    move-result-wide v0

    .line 78
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getMobileTcpBytesSent(Lcom/android/internal/os/BatteryStatsImpl;I)J
    .locals 2
    .parameter "stats"
    .parameter "statsType"

    .prologue
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 83
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/zte/heartyservice/common/porting/PortFunction;->getNetworkActivityCount(Lcom/android/internal/os/BatteryStatsImpl;II)J

    move-result-wide v0

    .line 85
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getNetworkActivityCount(Landroid/os/BatteryStats$Uid;II)J
    .locals 4
    .parameter "u"
    .parameter "type"
    .parameter "which"

    .prologue
    .line 17
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    .line 18
    .local v0, args:[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 19
    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 21
    :try_start_0
    const-string v2, "com.android.internal.os.BatteryStatsImpl$Uid"

    const-string v3, "getNetworkActivityCount"

    invoke-static {v2, p0, v3, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 28
    :goto_0
    return-wide v2

    .line 24
    :catch_0
    move-exception v1

    .line 26
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getNetworkActivityCount(Lcom/android/internal/os/BatteryStatsImpl;II)J
    .locals 4
    .parameter "stats"
    .parameter "type"
    .parameter "which"

    .prologue
    .line 32
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    .line 33
    .local v0, args:[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 34
    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 36
    :try_start_0
    const-string v2, "com.android.internal.os.BatteryStatsImpl"

    const-string v3, "getNetworkActivityCount"

    invoke-static {v2, p0, v3, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 43
    :goto_0
    return-wide v2

    .line 39
    :catch_0
    move-exception v1

    .line 41
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getTcpBytesReceived(Landroid/os/BatteryStats$Uid;I)J
    .locals 2
    .parameter "u"
    .parameter "statsType"

    .prologue
    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 48
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/zte/heartyservice/common/porting/PortFunction;->getNetworkActivityCount(Landroid/os/BatteryStats$Uid;II)J

    move-result-wide v0

    .line 50
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getTcpBytesSent(Landroid/os/BatteryStats$Uid;I)J
    .locals 2
    .parameter "u"
    .parameter "statsType"

    .prologue
    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 55
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/zte/heartyservice/common/porting/PortFunction;->getNetworkActivityCount(Landroid/os/BatteryStats$Uid;II)J

    move-result-wide v0

    .line 57
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getWifiBytesReceived(Landroid/os/BatteryStats$Uid;I)J
    .locals 2
    .parameter "u"
    .parameter "statsType"

    .prologue
    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 62
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lcom/zte/heartyservice/common/porting/PortFunction;->getNetworkActivityCount(Landroid/os/BatteryStats$Uid;II)J

    move-result-wide v0

    .line 64
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getWifiBytesSent(Landroid/os/BatteryStats$Uid;I)J
    .locals 2
    .parameter "u"
    .parameter "statsType"

    .prologue
    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 69
    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lcom/zte/heartyservice/common/porting/PortFunction;->getNetworkActivityCount(Landroid/os/BatteryStats$Uid;II)J

    move-result-wide v0

    .line 71
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
